from application import app
from flask import request, Response
from random import randint

@app.route('/fortune/colour', methods=['GET'])
def fortune_colour():
    colour = ['blue', 'red']
    return Response(colour[randint(0,1)], mimetype='text/plain')
