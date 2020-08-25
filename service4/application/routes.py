from application import app
from flask import request, Response
from random import randint

@app.route('/fortune/fortune', methods=['GET', 'POST'])
def fortune_fortune():

    data = request.get_json()

    if data['colour'] == "blue" and  data['number'] == "1":
        fortune = "We do not know the future, but have a cookie."
    elif data['colour'] == "blue" and data['number'] == "2":
        fortune = "You will be hungry again in one hour."
    elif data['colour'] == "blue" and data['number'] == "3":
        fortune = "All fortunes are wrong except this one."
    elif data['colour'] == "blue" and data['number'] == "4":
        fortune = "You will live long enough to open many fortune cookies."
    elif data['colour'] == "red" and data['number'] == "1":
        fortune = "You learn from your mistakes... You will learn a lot today."
    elif data['colour'] == "red" and data['number'] == "2":
        fortune = "Help! I am being held prisoner in a fortune cookie factory."
    elif data['colour'] == "red" and data['number'] == "3":
        fortune = "A foolish man listens to his heart. A wise man listens to cookies."
    elif data['colour'] == "red" and data['number'] == "4":
        fortune = "The fortune you seek is in another cookie."
    else:
        fortune = "Some cookies contain no fortune."
    return Response(fortune, mimetype='text/plain')
