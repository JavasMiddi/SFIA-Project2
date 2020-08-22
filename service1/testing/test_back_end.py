import requests
import unittest
from unittest.mock import patch
from flask import url_for
from flask_testing import TestCase
from application import app

class TestBase(TestCase):
    def create_app(self):
        return app

class TestViews(TestBase):
    def test_homepage_view(self):
        response = self.client.get(url_for('home'))
        self.assertEqual(response.status_code, 200)

    def test_fortune_view(self):
        with patch('requests.get') as g:
            with patch('requests.get') as q:
                with patch('requests.post') as p:
                    g.return_value.text = "blue"
                    q.return_value.text = "1"
                    p.return_value.text = "We do not know the future, but have a cookie."
                
                    response = self.client.get(url_for('fortune'))             
                    self.assertIn(b"We do not know the future, but have a cookie.", response.data)
                    self.assertEqual(response.status_code, 200)
