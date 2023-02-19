from rest_framework import serializers
from rest_framework.serializers import CurrentUserDefault
from .models import Exercise, LiftLog, WeightLog


class ExerciseSerializer(serializers.ModelSerializer):
    class Meta:
        model = Exercise
        fields = '__all__'


class LiftLogSerializer(serializers.ModelSerializer):
    user = serializers.HiddenField(
        default=CurrentUserDefault()
    )

    class Meta:
        model = LiftLog
        read_only_fields = ['date']
        fields = '__all__'


class WeightLogSerializer(serializers.ModelSerializer):
    """
    Serializer for all weights logged by given user
    """
    user = serializers.HiddenField(
        default=CurrentUserDefault()
    )

    class Meta:
        model = WeightLog
        read_only_fields = ['date']
        fields = '__all__'
