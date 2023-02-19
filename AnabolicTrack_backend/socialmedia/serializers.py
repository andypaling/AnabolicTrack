from rest_framework import serializers
from rest_framework.serializers import CurrentUserDefault
from .models import Post


class PostSerializer(serializers.ModelSerializer):
    class Meta:
        model = Post
        fields = '__all__'
