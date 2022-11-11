from flask import Flask, render_template, request, redirect, url_for, flash
from flask_mysqldb import MySQL
from flask_socketio import SocketIO, send, emit
import secrets

app = Flask(__name__)
socketio = SocketIO(app)
app.config['SECRET_KEY'] = 'asdf34325'
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'cartasescobas'
mysql = MySQL(app)

users = {}
usersc = {}
tp = []
def rand_cartas(data,n):
    dato = obtener_carta()
    band = True
    for i in range(0,n):
        content = secrets.choice(dato)
        band = True
        while band:
            if content in data:
                band = True
                content = secrets.choice(dato)
            else:
                band = False
                data.append(content)
    return data


def obtener():
    cur = mysql.connection.cursor()
    cur.execute('SELECT id,name,pass FROM user')
    data = cur.fetchall()
    cur.close()
    return data

def obtener_carta():
    cur = mysql.connection.cursor()
    cur.execute('SELECT id,content FROM cartasing')
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
                return render_template('menu.html',nombre = name)
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

@socketio.on('username', namespace='/private')
def receive_username(username):
    usersc[username] = tp
    cuser = usersc[username]
    carta = rand_cartas(cuser,3)
    users[username] = request.sid
    usersc[username]=carta
    emit('envio',usersc,room = users['Imanol'])
    print(usersc)




#@socketio.on('private_message', namespace='/private')
#def private_message(payload):
#    recipient_session_id = users[payload['username']]
#    message = payload['message']

#    emit('new_private_message', message, room=recipient_session_id)

if __name__ == "__main__":
    socketio.run(app,debug = True,port=5000)