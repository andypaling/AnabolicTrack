from django.db import models
from users.models import User
from tracking.models import Exercise


class FullExercise(models.Model):
    exercise = models.ForeignKey(Exercise, on_delete=models.CASCADE)
    number_of_sets = models.IntegerField()
    number_of_repetitions = models.IntegerField()

    def __str__(self):
        if self.exercise.name == 'Rest':
            return 'Rest'
        return f'{self.exercise.name} {self.number_of_sets}sets, {self.number_of_repetitions}reps'


class TrainingSession(models.Model):
    name = models.CharField(max_length=256)
    exercises = models.ManyToManyField(FullExercise)

    def __str__(self):
        return self.name


class TrainingPlan(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    name = models.CharField(max_length=128)
    monday = models.ForeignKey(
        TrainingSession,
        on_delete=models.CASCADE,
        related_name='monday'
    )
    tuesday = models.ForeignKey(
        TrainingSession,
        on_delete=models.CASCADE,
        related_name='tuesday'
    )
    wednesday = models.ForeignKey(
        TrainingSession,
        on_delete=models.CASCADE,
        related_name='wednesday'
    )
    thursday = models.ForeignKey(
        TrainingSession,
        on_delete=models.CASCADE,
        related_name='thursday'
    )
    friday = models.ForeignKey(
        TrainingSession,
        on_delete=models.CASCADE,
        related_name='friday'
    )
    saturday = models.ForeignKey(
        TrainingSession,
        on_delete=models.CASCADE,
        related_name='saturday'
    )
    sunday = models.ForeignKey(
        TrainingSession,
        on_delete=models.CASCADE,
        related_name='sunday'
    )

    def __str__(self):
        return self.name





