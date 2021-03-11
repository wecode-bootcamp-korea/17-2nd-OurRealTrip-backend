from django.urls import path
from order.views import FlightRoundTripOrderView

urlpatterns = [
    path('/flight', FlightRoundTripOrderView.as_view()),
]

