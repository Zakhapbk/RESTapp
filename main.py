from flask import Flask,render_template
from flask_sqlalchemy import SQLAlchemy
import psycopg2
# запускаем сервер
app = Flask(__name__)
con = psycopg2.connect(database="App", user="postgres", password="Xpolkwfv13", host="127.0.0.1", port="5432")
cursor = con.cursor()

# app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://postgres:Xpolkwfv13@localhost:5432/App'
# db = SQLAlchemy(app)
# # отслеживаем главную страницу
# class Car(db.model):
#     id = db.Column(db.Integer, primary_key = True)
#     model = db.Column(db.String(100))
#
#
# class Firm(db.model):
#     id = db.Column(db.Integer, primary_key = True)
#     label = db.Column(db.String(100))
#
# class Rate(db.model):
#     id = db.Column(db.Integer, primary_key = True)
#     label = db.Column(db.String(100))
#
# class Connect(db.model):
#     id = db.Column(db.Integer, primary_key = True)
#     price = db.Column(db.Integer)
#     firm_id = db.Column(db.Integer, db.ForeignKey('firm.id'), nullable=False)
#     firm = db.relationship('Firm', backref=db.backref('connects', lazy=True))
#     rate_id = db.Column(db.Integer, db.ForeignKey('rate.id'), nullable=False)
#     rate = db.relationship('Rate', backref=db.backref('connects', lazy=True))
#     car_id = db.Column(db.Integer, db.ForeignKey('car.id'), nullable=False)
#     car = db.relationship('Car', backref=db.backref('connects', lazy=True))
result = 0
@app.route('/', methods=['post', 'get'])
def index():
    global result
    cursor.execute('SELECT * FROM cars ')
    result = cursor.fetchall()
    return render_template('index.html', data=result)

# @app.route('/', methods=['get'])
# def index2():
#     global result
#     cursor.execute('SELECT firm."Firm name",rate.name, "Connect".price FROM "Connect"  join firm on (firm.id = "Connect".idfirm) join rate on (rate.id = "Connect".idrate) where idcar = 1')
#     result = cursor.fetchall()
#     return render_template('index.html', data=result)



if __name__ == "__main__":
    app.run(debug=True)


