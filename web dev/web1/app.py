from flask import Flask, render_template, url_for, url_for, request, redirect
from flask_sqlalchemy import SQLAlchemy
from flask_admin import Admin
from flask_admin.contrib.sqla import ModelView

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'postgresql://postgres:123456789@localhost:5432/manishafashion'
app.config['SQLALCHEMY_TRACK_MODIFICATION'] = False

@app.route('/', methods= ['GET', 'POST'])
def index():
    return render_template('index.html')

@app.route('/about', methods=['GET', 'POST'])
def about():
    return render_template('about.html')

@app.route('/home', methods=['GET', 'POST'])
def home():
    return render_template('home.html')

db = SQLAlchemy(app)

with app.app_context():
    db.create_all()

class Contact(db.Model):
    __tablename__ = 'contact_us'
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    name = db.Column(db.String(255), nullable=False)
    email = db.Column(db.String(255), nullable=False)
    message = db.Column(db.Text, nullable=False)

admin = Admin(app)
admin.add_view(ModelView(Contact, db.session))

@app.route('/contact', methods=['POST', 'GET'])
def contact(): #create contact 
    if request.method == 'POST':
        name = request.form['name']
        email = request.form['email']
        message = request.form['message']
        new_contact = Contact(name=name, email=email, message=message)
        db.session.add(new_contact)
        db.session.commit()
        return redirect(url_for('contact'))
    return render_template('/contact.html')
    
if (__name__) == '__main__':
    app.run(debug=True)
    