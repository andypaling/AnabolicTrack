from rest_framework import serializers
from rest_framework.serializers import CurrentUserDefault
from .models import TrainingPlan


class TrainingPlanSerializer(serializers.ModelSerializer):
    user = serializers.HiddenField(
        default=CurrentUserDefault()
    )

    class Meta:
        model = TrainingPlan
        fields = '__all__'

