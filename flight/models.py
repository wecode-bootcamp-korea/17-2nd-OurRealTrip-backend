from django.db import models

class FlightSchedule(models.Model):
    flight_code       = models.CharField(max_length=45)
    departure_date    = models.DateField()
    arrival_date      = models.DateField()
    departure_time    = models.TimeField()
    arrival_time      = models.TimeField()
    duration_time     = models.TimeField()
    departure_airport = models.ForeignKey('Airport', related_name='departure_airport', on_delete=models.RESTRICT)
    arrival_airport   = models.ForeignKey('Airport', related_name='arrival_airport', on_delete=models.RESTRICT)
    airline           = models.ForeignKey('Airline', on_delete=models.RESTRICT)

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
    flight_schedule = models.ForeignKey('FlightSchedule', on_delete=models.RESTRICT)
    status          = models.ForeignKey('FlightStatus', on_delete=models.RESTRICT, default=1) 
    price           = models.DecimalField(max_digits=30, decimal_places=2)
    remaining_seat  = models.IntegerField()

    class Meta:
        db_table = 'flight_prices'