from django.contrib import admin
from django.apps import apps

# Register all models from all apps into admin site
for model in apps.get_models():
    try:
        admin.site.register(model)
    except admin.sites.AlreadyRegistered:
        pass
