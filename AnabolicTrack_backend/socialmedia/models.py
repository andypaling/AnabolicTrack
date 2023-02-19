from django.db import models
from users.models import User


class Post(models.Model):
    author = models.ForeignKey(User, on_delete=models.CASCADE)
    date_posted = models.DateTimeField(auto_now_add=True)
    title = models.CharField(max_length=200)
    text_body = models.CharField(max_length=1024)

    def __str__(self):
        return self.title
