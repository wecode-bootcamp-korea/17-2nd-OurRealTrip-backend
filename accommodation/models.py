from django.db import models

class Accommodation(models.Model):
    name        = models.CharField(max_length=100)
    description = models.CharField(max_length=1000, null=True)
    rate        = models.DecimalField(max_digits=5, decimal_places=2, null=True)
    content     = models.TextField(null=True)
    is_for_sale = models.BooleanField(default=1)
    address     = models.ForeignKey('Address', on_delete=models.RESTRICT)
    host        = models.ForeignKey('Host', on_delete=models.PROTECT)
    city        = models.ForeignKey('City', on_delete=models.PROTECT)

    class Meta:
        db_table = 'accommodations'

class AccommodationImage(models.Model):
    image_url     = models.URLField(max_length=4000) 
    is_main       = models.BooleanField(default=0)
    accommodation = models.ForeignKey('Accommodation', on_delete=models.CASCADE)

    class Meta:
        db_table = 'accommodation_images'

class AccommodationKeyword(models.Model):
    category      = models.ForeignKey('Category', on_delete=models.CASCADE)
    accommodation = models.ForeignKey('Accommodation', on_delete=models.CASCADE)
    
    class Meta:
        db_table = 'accommodations_keywords'

class Category(models.Model):
    name = models.CharField(max_length=200)

    class Meta:
        db_table = 'categories'

class Address(models.Model):
    latitude  = models.DecimalField(max_digits=10, decimal_places=6)
    longitude = models.DecimalField(max_digits=10, decimal_places=6)
    name      = models.CharField(max_length=300)

    class Meta:
        db_table = 'addresses'

class City(models.Model):
    name = models.CharField(max_length=400)

    class Meta:
        db_table = 'cities'

class Host(models.Model):
    name      = models.CharField(max_length=400)
    image_url = models.URLField(max_length=4000) 
    
    class Meta:
        db_table = 'hosts'

class Room(models.Model):
    name             = models.CharField(max_length=300)
    price            = models.DecimalField(max_digits=30, decimal_places=2)
    is_for_sale      = models.BooleanField(default=1)
    maximum_capacity = models.IntegerField()
    basic_capacity   = models.IntegerField(default=1) 
    extra_price      = models.DecimalField(max_digits=30, decimal_places=2, default=0)
    accommodation    = models.ForeignKey('Accommodation', on_delete=models.CASCADE)

    class Meta:
        db_table = 'rooms'

class RoomOption(models.Model):
    quantity = models.IntegerField(default=1)
    option   = models.ForeignKey('Option', on_delete=models.CASCADE)
    room     = models.ForeignKey('Room', on_delete=models.CASCADE)

    class Meta:
        db_table = 'rooms_options'

class Review(models.Model):
    content          = models.CharField(max_length=1000, null=True)
    image_url        = models.URLField(max_length=4000, null=True)
    location_rate    = models.DecimalField(max_digits=5, decimal_places=2)
    sanitary_rate    = models.DecimalField(max_digits=5, decimal_places=2)
    facility_rate    = models.DecimalField(max_digits=5, decimal_places=2)
    hospitality_rate = models.DecimalField(max_digits=5, decimal_places=2)
    total_rate       = models.DecimalField(max_digits=5, decimal_places=2, null=True)
    created_at       = models.DateTimeField(auto_now_add=True)
    updated_at       = models.DateTimeField(auto_now=True)
    user             = models.ForeignKey('user.User', on_delete=models.SET_NULL, null=True)
    accommodation    = models.ForeignKey('Accommodation', on_delete=models.CASCADE)
    accommodation_order_id = models.ForeignKey('order.AccommodationOrder', on_delete=models.SET_NULL, null=True)

    class Meta:
        db_table = 'reviews'

class Option(models.Model):
    name = models.CharField(max_length=300)

    class Meta:
        db_table = 'options'

class RoomFluctuation(models.Model):
    date      = models.DateField()
    room      = models.ForeignKey('Room', on_delete=models.CASCADE)
    sale_rate = models.DecimalField(max_digits=5, decimal_places=2)

    class Meta:
        db_table = 'room_fluctuations'

