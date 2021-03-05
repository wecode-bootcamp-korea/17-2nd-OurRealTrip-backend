from django.db import models

class FlightSchedule(models.Model):
    flight_code       = models.CharField(max_length=45)
    departure_date    = models.DateField()
    arrival_date      = models.DateField()
    departure_time    = models.TimeField()
    arrival_time      = models.TimeField()
    duration_time     = models.TimeField()
    departure_airport = models.ForeignKey('Airport', related_name='departure_airport', on_delete=models.CASCADE)
    arrival_airport   = models.ForeignKey('Airport', related_name='arrival_airport', on_delete=models.CASCADE)
    airline           = models.ForeignKey('Airline', on_delete=models.CASCADE)

    class Meta:
        db_table = 'flight_schedules'

class Airline(models.Model):
    name = models.CharField(max_length=300)

    class Meta:
        db_table = 'airlines'

class Airport(models.Model):
    name = models.CharField(max_length=400)
    code = models.CharField(max_length=10)

    class Meta:
        db_table = 'airports'

class FlightStatus(models.Model):
    name = models.CharField(max_length=200)

    class Meta:
        db_table = 'flight_statuses'

class FlightPrice(models.Model):
    price           = models.DecimalField(max_digits=30, decimal_places=2)
    remaining_seat  = models.IntegerField()
    flight_schedule = models.ForeignKey('FlightSchedule', on_delete=models.CASCADE)
    status          = models.ForeignKey('FlightStatus', on_delete=models.CASCADE, default=1) 

    class Meta:
        db_table = 'flight_prices'