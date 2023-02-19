from django.db import models
from django.utils import timezone
from users.models import User


class Exercise(models.Model):
    name = models.CharField(max_length=256)

    def __str__(self):
        return self.name


class LiftLog(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    exercise = models.ForeignKey(Exercise, on_delete=models.CASCADE)
    weight = models.FloatField()
    repetitions = models.IntegerField()
    date = models.DateTimeField(default=timezone.now)


class WeightLog(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    weight = models.FloatField()
    date = models.DateField()
