from rest_framework import routers
from .views import TrainingPlanViewSet

router = routers.DefaultRouter()
router.register('training-plans', TrainingPlanViewSet, basename='training-plans')

urlpatterns = router.urls
