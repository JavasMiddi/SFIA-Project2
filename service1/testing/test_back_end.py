import unittest
from unittest.mock import patch
from flask import url_for
from flask_testing import TestCase
from application import app, db
from application.models import Fortune
import requests 
import requests_mock
from os import getenv

class TestBase(TestCase):
    def create_app(self):
        config_name = 'testing'
        app.config.update(SQLALCHEMY_DATABASE_URI=getenv('TEST_DB_URI'),
                SECRET_KEY=getenv('TEST_SECRET_KEY'),
                WTF_CSRF_ENABLED=False,
                DEBUG=True
                )
        return app

    def setUp(self):
        """
        Will be called before every test
        """
        # ensure there is no data in the test database when the test starts
        db.session.commit()
        db.drop_all()
        db.create_all() 
        fortune1=Fortune(colour="blue", number="1", fortune="We do not know the future, but have a cookie.")
        db.session.add(fortune1)
        db.session.commit()

    def tearDown(self):
        """
        Will be called after every test
        """
        db.session.remove()
        db.drop_all()
   
class TestViews(TestBase):
    def test_homepage_view(self):
        response = self.client.get(url_for('home'))
        self.assertEqual(response.status_code, 200)

    def test_fortune_view(self):
        with requests_mock.Mocker() as r:
            r.get("http://service2:5001/fortune/colour", text="blue")
            r.get("http://service3:5002/fortune/number", text="1")
            r.post("http://service4:5003/fortune/fortune", text="We do not know the future, but have a cookie.")
            response = self.client.get(url_for('fortune'))
            self.assertEqual(response.status_code, 200)
