from django.db import models
from django.contrib.auth.models import AbstractUser

UNITS = (
    ('metric', 'Metric'),
    ('imperial', 'Imperial'),
)


class User(AbstractUser):
    email = models.EmailField(verbose_name='email', max_length=255, unique=True)
    join_date = models.DateTimeField(auto_now_add=True)
    preferred_unit = models.CharField(choices=UNITS, default='Metric', max_length=100)

    REQUIRED_FIELDS = [
        'email',
        'preferred_unit'
    ]
    USERNAME_FIELD = 'username'

    def get_username(self):
        return self.username
