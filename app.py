from flask import Flask, render_template, request, redirect, url_for, flash
from flask_mysqldb import MySQL
app = Flask(__name__)
app.config['SECRET_KEY'] = 'asdf34325'
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'cartasescobas'
mysql = MySQL(app)

def obtener():
    cur = mysql.connection.cursor()
    cur.execute('SELECT id,name,pass FROM user')
    data = cur.fetchall()
    cur.close()
    return data

def obtener_carta():
    cur = mysql.connection.cursor()
    cur.execute('SELECT id,content FROM cartasesp')
    data = cur.fetchall()
    cur.close()
    return data

@app.route('/')
@app.route('/login.html')
def login():
    return render_template("login.html")
@app.route('/register.html')
def register():
    return render_template("register.html")
@app.route('/index.html')
def Index():
    carta = obtener_carta()
    return render_template('index.html',cartas=carta)
@app.route('/sesion',methods = ['POST'])
def sesion():
    bandn = True
    bandp = True
    if request.method == 'POST':
        name = request.form['nombre']
        pasw = request.form['pass']
        data = obtener()
        for i in data:
            if name in i:
                bandn = True
                break
            else:
                bandn = False
        for j in data:
            if pasw in j:
                bandp = True
                break
            else:
                bandp = False
        if bandn == True:
            if bandp == True:
                return render_template('menu.html')
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
        if bandn == True:
            cur = mysql.connection.cursor()
            cur.execute("INSERT INTO user (name,pass) VALUES (%s,%s)",(name,pasw))
            mysql.connection.commit()
            return redirect(url_for('login'))
        else:
            flash("Ya existe el nombre de usuario")
            return redirect(url_for("register"))

if __name__ == "__main__":
    app.run(debug=True,port=5000)