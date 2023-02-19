from rest_framework import routers
from .views import ExerciseViewSet, LiftLogViewSet, WeightLogViewSet

router = routers.DefaultRouter()
router.register('exercises', ExerciseViewSet, basename='exercises')
router.register('lifts', LiftLogViewSet, basename='lifts')
router.register('weightlogs', WeightLogViewSet, basename='weightlogs')

urlpatterns = router.urls
