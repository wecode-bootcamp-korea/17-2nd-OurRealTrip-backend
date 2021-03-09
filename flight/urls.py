from django.urls    import path, include

from flight.views     import FlightView

urlpatterns = [
    path('', FlightView.as_view()),
]