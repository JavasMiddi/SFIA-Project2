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
    def test_colourpage_view(self):
        response = self.client.get(url_for('fortune_colour'))
        self.assertEqual(response.status_code, 200)
