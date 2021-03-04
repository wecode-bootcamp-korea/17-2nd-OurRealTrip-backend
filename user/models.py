from django.db import models

class User(models.Model):
    nickname        = models.CharField(max_length=100)
    email           = models.CharField(max_length=200)
    created_at      = models.DateTimeField(auto_now_add=True)
    image_url       = models.URLField(max_length=4000)
    refund_account  = models.ForeignKey('RefundAccount', on_delete=models.CASCADE, null=True)

    class Meta:
        db_table = 'users'

class RefundAccount(models.Model):
    bank_account_number = models.CharField(max_length=4000)
    bank_name           = models.CharField(max_length=300)
    owner               = models.CharField(max_length=400)

    class Meta:
        db_table = 'refund_accounts'

class Favor(models.Model):
    user          = models.ForeignKey('User', on_delete=models.CASCADE)
    accommodation = models.ForeignKey('accommodation.Accommodation', on_delete=models.CASCADE)

    class Meta:
        db_table = 'favors'