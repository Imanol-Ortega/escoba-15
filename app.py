from flask import Flask, render_template, request, redirect, url_for, flash
from flask_mysqldb import MySQL
import secrets

app = Flask(__name__)
app.config['SECRET_KEY'] = 'asdf34325'
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'ahorcado'
mysql = MySQL(app)


def obtener():
    cur = mysql.connection.cursor()
    cur.execute('SELECT id,name,pass FROM user')
    data = cur.fetchall()
    cur.close()
    return data

def obtener_palabra(dif):
    cur = mysql.connection.cursor()
    if dif == 'facil':
        cur.execute('SELECT content FROM facil')
    if dif == 'medio':
        cur.execute('SELECT content FROM medio')
    if dif == 'dificil':
        cur.execute('SELECT content FROM dificil')
    data = cur.fetchall()
    cur.close()
    return data

def rand_palabra(dif):
    palabra = obtener_palabra(dif)
    return secrets.choice(palabra)

@app.route('/')
@app.route('/login.html')
def login():
    return render_template("login.html")
@app.route('/register.html')
def register():
    return render_template("register.html")
#@app.route('/index.html')
#def Index():
 #   return render_template('index.html')
@app.route('/sesion',methods = ['POST'])
def sesion():
    global nn
    bandn = False
    bandp = False
    if request.method == 'POST':
        name = request.form['nombre']
        pasw = request.form['pass']
        data = obtener()
        for i in data:
            if name in i:
                print('si nombre')
                bandn = True
                break
            else:
                bandn = False
        for j in data:
            if pasw in j:
                print('si pass')
                bandp = True
                break
            else:
                bandp = False
        if bandn == True:
            if bandp == True:
                print('entre')
                return render_template('menu.html',nombre=name)
            else:
                flash('Nombre o contraseña incorrecto')
                return redirect(url_for('login'))
        else:
            flash('Nombre o contraseña incorrecto')
            return redirect(url_for('login'))
@app.route('/register',methods = ['POST'])
def registrar():
    bandn = False
    if request.method == 'POST':
        name = request.form['nombre']
        pasw = request.form['pass']
        data = obtener()
        for i in data:
            if name in i:
                bandn = False
                break
            else:
                bandn = True
        if pasw != '':
            if bandn == True:
                cur = mysql.connection.cursor()
                cur.execute("INSERT INTO user (name,pass) VALUES (%s,%s)",(name,pasw))
                mysql.connection.commit()
                return redirect(url_for('login'))
            else:
                flash("Ya existe el nombre de usuario")
                return redirect(url_for("register"))
        else: 
            flash("No se puede tener contraseña vacia")
            return redirect(url_for("register"))

@app.route('/conectar',methods = ['POST'])
def conectar():
     if request.method == 'POST':
        dificultad = request.form['dificultad']
        
        return render_template('index.html',palabra = rand_palabra(dificultad),dif = dificultad)


if __name__ == "__main__":
  app.run(debug = True,port=5000)