# Generated by Django 3.1.7 on 2021-03-08 16:10

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('user', '0002_auto_20210304_2130'),
    ]

    operations = [
        migrations.AddField(
            model_name='user',
            name='kakao_id',
            field=models.CharField(default='', max_length=200),
            preserve_default=False,
        ),
    ]
