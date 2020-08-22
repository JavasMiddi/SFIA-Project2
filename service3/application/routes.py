from application import app
from flask import request, Response
from random import randint

@app.route('/fortune/number', methods=['GET'])
def fortune_number():
    number = ['1', '2', '3', '4']
    return Response(number[randint(0,3)], mimetype='text/plain')

