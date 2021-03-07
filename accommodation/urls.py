from django.urls import path, include
from accommodation.views import AccommodationListView

urlpatterns = [
    path('', AccommodationListView.as_view())
]