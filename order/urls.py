from django.urls import path
from order.views import FlightRoundTripOrderView, AccommodationOrderView

urlpatterns = [
    path('/flight', FlightRoundTripOrderView.as_view()),
    path('/accommodation', AccommodationOrderView.as_view()),
]

