from rest_framework import routers
from .views import UserPostListViewSet, PostListViewSet

router = routers.DefaultRouter()
router.register('posts', PostListViewSet, basename='posts')
router.register('user-posts', UserPostListViewSet, basename='user-posts')

urlpatterns = router.urls
