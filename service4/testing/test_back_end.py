import requests
import unittest
from unittest.mock import patch
from flask import url_for
from flask_testing import TestCase
from application import app

class TestBase(TestCase):
    def create_app(self):
        return app
 
    def test_fortunepage_blue1(self):
        response = self.client.post(url_for('fortune_fortune'), data="blue")
        self.assertIn(b'We do not know the future, but have a cookie.', response.data)
    
    def test_fortunepage_blue2(self):
        response = self.client.post(url_for('fortune_fortune'), data="blue")
        self.assertIn(b'You will be hungry again in one hour.', response.data)

    def test_fortunepage_blue3(self):
        response = self.client.post(url_for('fortune_fortune'), data="blue")
        self.assertIn(b'All fortunes are wrong except this one.', response.data)

    def test_fortunepage_blue4(self):
        response = self.client.post(url_for('fortune_fortune'), data="blue")
        self.assertIn(b'You will live long enough to open many fortune cookies.', response.data)
   
    def test_fortunepage_red1(self):
        response = self.client.post(url_for('fortune_fortune'), data="red")
        self.assertIn(b'You learn from your mistakes... You will learn a lot today.', response.data)

    def test_fortunepage_red2(self):
        response = self.client.post(url_for('fortune_fortune'), data="red")
        self.assertIn(b'Help! I am being held prisoner in a fortune cookie factory.', response.data)

    def test_fortunepage_red3(self):
        response = self.client.post(url_for('fortune_fortune'), data="red")
        self.assertIn(b'A foolish man listens to his heart. A wise man listens to cookies.', response.data)
    
    def test_fortunepage_red4(self):
        response = self.client.post(url_for('fortune_fortune'), data="red")
        self.assertIn(b'The fortune you seek is in another cookie.', response.data)
