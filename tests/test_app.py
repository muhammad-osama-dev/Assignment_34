import unittest
import sys
import os

# Add the directory containing 'app.py' to the Python path
sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

from app import app

class TestFlaskApp(unittest.TestCase):

    def setUp(self):
        self.app = app.test_client()

    def test_index(self):
        response = self.app.get('/')
        self.assertEqual(response.status_code, 200)
        self.assertIn(b'Hello, World!', response.data)

    def test_say_hello(self):
        response = self.app.get('/hello')
        self.assertEqual(response.status_code, 200)
        self.assertIn(b'Hello, Flask!', response.data)

    def test_greet_default(self):
        response = self.app.get('/greet')
        self.assertEqual(response.status_code, 200)
        self.assertIn(b'Hello, Programmer!', response.data)

    def test_greet_with_name(self):
        response = self.app.get('/greet/John')
        self.assertEqual(response.status_code, 200)
        self.assertIn(b'Hello, John!', response.data)

if __name__ == '__main__':
    unittest.main()
