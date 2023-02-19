from rest_framework import generics
from rest_framework import viewsets
from rest_framework.permissions import IsAuthenticated
from .serializers import PostSerializer
from .models import Post


class PostListViewSet(viewsets.ModelViewSet):
    serializer_class = PostSerializer
    permission_classes = [IsAuthenticated]
    queryset = Post.objects.all()


class UserPostListViewSet(viewsets.ModelViewSet):
    serializer_class = PostSerializer
    permission_classes = [IsAuthenticated]

    def get_queryset(self):
        return Post.objects.filter(author=self.request.user).order_by('date_posted')
