from application import db
from application.models import Fortune

db.drop_all()
db.create_all()
