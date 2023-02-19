from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticated
from .serializers import TrainingPlanSerializer
from .models import TrainingPlan


class TrainingPlanViewSet(viewsets.ModelViewSet):
    serializer_class = TrainingPlanSerializer

    def get_queryset(self):
        """
        return all training plans of the given user
        """
        return TrainingPlan.objects.filter(user=self.request.user)
