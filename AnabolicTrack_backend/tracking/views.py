from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticated
from .serializers import ExerciseSerializer, LiftLogSerializer, WeightLogSerializer
from .models import Exercise, LiftLog, WeightLog


class ExerciseViewSet(viewsets.ModelViewSet):
    serializer_class = ExerciseSerializer

    def get_queryset(self):
        return Exercise.objects.all()


class LiftLogViewSet(viewsets.ModelViewSet):
    serializer_class = LiftLogSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        """
        Returns all recorded lifts of an exercise by a given user
        """
        return LiftLog.objects.filter(
            user=self.request.user,
            exercise=self.request.query_params.get('exercise')
        ).order_by('date')


class WeightLogViewSet(viewsets.ModelViewSet):
    serializer_class = WeightLogSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        if self.request.method == 'GET' and 'date' in self.request.GET:  # If date given as param
            return WeightLog.objects.filter(
                user=self.request.user,
                date=self.request.query_params.get('date')
            ).order_by('date')

        # Date not provided, return all WeightLogs of given user
        return WeightLog.objects.filter(
            user=self.request.user
        ).order_by('date')
