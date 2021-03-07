from django.urls import path, include
from accommodation.views import AccommodationListView, AccommodationDetailView

urlpatterns = [
    path('', AccommodationListView.as_view()),
    path('/category/<int:category_id>', AccommodationListView.as_view()),
    path('/<int:accommodation_id>', AccommodationDetailView.as_view())
]