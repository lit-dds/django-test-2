# """
# This is super high level
# """

from django.test import TestCase

class CalcTest(TestCase):
    """Class for the simple calculations test"""

    def test_add_numbers(self):
        """This test the addition of two number"""
        self.assertEqual((1+2), 3)
