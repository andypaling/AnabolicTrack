from rest_framework import serializers
from djoser.serializers import UserCreateSerializer, UserSerializer
from .models import User


class UserCreateSerializer(UserCreateSerializer):
    class Meta(UserCreateSerializer):
        model = User
        fields = ('id', 'email', 'username', 'password', 'join_date', 'preferred_unit')


