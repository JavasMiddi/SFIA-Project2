from flask import render_template
from application import app, db
from application.models import Fortune
import requests

@app.route('/', methods=['GET'])
def home():
    return render_template('home.html', title='Home')

@app.route('/get/fortune', methods=['GET', 'POST'])
def fortune():
    
    colour = requests.get("http://service2:5001/fortune/colour")
    number = requests.get("http://service3:5002/fortune/number")    
    fortune = requests.post("http://service4:5003/fortune/fortune", json={"colour":colour.text, "number":number.text})    
    fortune1 = Fortune(colour=colour.text, number=number.text, fortune=fortune.text)
    db.session.add(fortune1)
    db.session.commit()

    return render_template('fortune.html', title='Fortune', colour=colour.text, number=number.text, fortune=fortune.text)
