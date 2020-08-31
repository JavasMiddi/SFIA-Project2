from application import db

class Fortune(db.Model):
    id = db.Column(db.Integer, primary_key=True, autoincrement=True)
    colour = db.Column(db.String(10))
    number = db.Column(db.Integer)
    fortune = db.Column(db.String(200)) 
