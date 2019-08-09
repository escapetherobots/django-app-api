from django.test import TestCase
from app.calc import add, subtract

class CalcTests(TestCase):

	def test_add_numbers(self):
		"""Test that two numbers added together"""
		self.assertNotEquals(add(3,8),12)
		self.assertEquals(add(3,8),11)


	def test_subtract_numbers(self):
		"""Test that two numbers are subtracted"""
		self.assertEquals(subtract(5,11), 6)

