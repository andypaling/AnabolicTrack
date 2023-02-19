from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('admin/', admin.site.urls),
    path('accounts/', include('users.urls')),
    path('tracking/', include('tracking.urls')),
    path('socialmedia/', include('socialmedia.urls')),
    path('training-plans/', include('trainingplans.urls')),
]
