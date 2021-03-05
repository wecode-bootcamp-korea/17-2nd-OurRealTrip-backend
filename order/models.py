from django.db import models

class OrderStatus(models.Model):
    name = models.CharField(max_length=200)

    class Meta:
        db_table = 'order_statuses'

class AccommodationOrder(models.Model):
    total_price     = models.DecimalField(max_digits=30, decimal_places=2)
    guest           = models.IntegerField(default=1)
    created_at      = models.DateTimeField(auto_now_add=True)
    updated_at      = models.DateTimeField(auto_now=True)
    start_date      = models.DateField()
    end_date        = models.DateField()
    serial_number   = models.CharField(max_length=300)
    order_status    = models.ForeignKey('OrderStatus', on_delete=models.CASCADE)
    user            = models.ForeignKey('user.User', on_delete=models.CASCADE)
    room            = models.ForeignKey('accommodation.Room', on_delete=models.CASCADE)

    class Meta:
        db_table = 'accommodation_orders'

class FlightOrders(models.Model):
    total_price     = models.DecimalField(max_digits=30, decimal_places=2)
    passenger       = models.IntegerField(default=1)
    created_at      = models.DateTimeField(auto_now_add=True)
    updated_at      = models.DateTimeField(auto_now=True)
    serial_number   = models.CharField(max_length=300)
    order_status    = models.ForeignKey('OrderStatus', on_delete=models.CASCADE)
    flight_price    = models.ForeignKey('flight.FlightPrice', on_delete=models.CASCADE)
    user            = models.ForeignKey('user.User', on_delete=models.CASCADE)

    class Meta:
        db_table = 'flight_orders'


