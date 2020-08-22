from application import app
from flask import request, Response
from random import randint

@app.route('/fortune/fortune', methods=['GET', 'POST'])
def fortune_fortune():

    colour = request.data.decode("utf-8")
    number = request.data.decode("utf-8")
    
    if colour == "blue" and  number == "1":
        fortune = "We do not know the future, but have a cookie."
    elif colour == "blue" and number == "2":
        fortune = "You will be hungry again in one hour."
    elif colour == "blue" and number == "3":
        fortune = "All fortunes are wrong except this one."
    elif colour == "blue" and number == "4":
        fortune = "You will live long enough to open many fortune cookies."
    elif colour == "red" and number == "1":
        fortune = "You learn from your mistakes... You will learn a lot today."
    elif colour == "red" and number == "2":
        fortune = "Help! I am being held prisoner in a fortune cookie factory."
    elif colour == "red" and number == "3":
        fortune = "A foolish man listens to his heart. A wise man listens to cookies."
    elif colour == "red" and number == "4":
        fortune = "The fortune you seek is in another cookie."
    else:
        fortune = "Some cookies contain no fortune."
    return Response(fortune, mimetype='text/plain')
