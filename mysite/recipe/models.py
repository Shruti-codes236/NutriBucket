from django.db import models
from django.contrib.auth.models import User

class Recipe(models.Model):
	Recipe_name = models.CharField(max_length=100)
	Recipe_description = models.TextField()
	Recipe_type = models.CharField(max_length=100)
	Recipe_category = models.CharField(max_length=100)

class Recipe_prep_details(models.Model):
	Recipe_id = models.ForeignKey(Recipe, on_delete=models.CASCADE)
	prep_time = models.DurationField()
	num_of_servings = models.IntegerField()
	ingredients = models.TextField()
	instructions = models.TextField()

class Nutri_content(models.Model):
	Recipe_id = models.ForeignKey(Recipe, on_delete=models.CASCADE)
	calories_per_serving = models.CharField(max_length=100)
	carbs = models.CharField(max_length=100)
	proteins = models.CharField(max_length=100)
	saturated_fat = models.CharField(max_length=100)
	trans_fat = models.CharField(max_length=100)
	cholestrol = models.CharField(max_length=100)
