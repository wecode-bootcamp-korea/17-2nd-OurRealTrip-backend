# Generated by Django 3.1.7 on 2021-03-05 14:15

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Accommodation',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('description', models.CharField(max_length=1000, null=True)),
                ('rate', models.DecimalField(decimal_places=2, max_digits=5, null=True)),
                ('content', models.TextField(null=True)),
            ],
            options={
                'db_table': 'accommodations',
            },
        ),
        migrations.CreateModel(
            name='AccommodationImage',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image_url', models.URLField(max_length=4000)),
            ],
            options={
                'db_table': 'accommodation_images',
            },
        ),
        migrations.CreateModel(
            name='Address',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('latitude', models.DecimalField(decimal_places=15, max_digits=30)),
                ('longitude', models.DecimalField(decimal_places=15, max_digits=30)),
                ('name', models.CharField(max_length=300)),
            ],
            options={
                'db_table': 'addresses',
            },
        ),
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200)),
            ],
            options={
                'db_table': 'categories',
            },
        ),
        migrations.CreateModel(
            name='City',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=400)),
            ],
            options={
                'db_table': 'cities',
            },
        ),
        migrations.CreateModel(
            name='Host',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=400)),
                ('image_url', models.URLField(max_length=4000)),
            ],
            options={
                'db_table': 'hosts',
            },
        ),
        migrations.CreateModel(
            name='Option',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=300)),
            ],
            options={
                'db_table': 'options',
            },
        ),
        migrations.CreateModel(
            name='Room',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=300)),
                ('price', models.DecimalField(decimal_places=2, max_digits=30)),
                ('maximum_capacity', models.IntegerField()),
                ('basic_capacity', models.IntegerField(default=1)),
                ('extra_price', models.DecimalField(decimal_places=2, default=0, max_digits=30)),
                ('accommodation', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='accommodation.accommodation')),
            ],
            options={
                'db_table': 'rooms',
            },
        ),
        migrations.CreateModel(
            name='UnavailableDate',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('start_date', models.DateField()),
                ('end_date', models.DateField()),
                ('room', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='accommodation.room')),
            ],
            options={
                'db_table': 'unavailable_dates',
            },
        ),
        migrations.CreateModel(
            name='RoomOption',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('quantity', models.IntegerField(default=1)),
                ('option', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='accommodation.option')),
                ('room', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='accommodation.room')),
            ],
            options={
                'db_table': 'rooms_options',
            },
        ),
        migrations.CreateModel(
            name='Review',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('content', models.CharField(max_length=1000, null=True)),
                ('image_url', models.URLField(max_length=4000, null=True)),
                ('location_rate', models.DecimalField(decimal_places=2, max_digits=5)),
                ('sanitary_rate', models.DecimalField(decimal_places=2, max_digits=5)),
                ('facility_rate', models.DecimalField(decimal_places=2, max_digits=5)),
                ('hospitality_rate', models.DecimalField(decimal_places=2, max_digits=5)),
                ('total_rate', models.DecimalField(decimal_places=2, max_digits=5, null=True)),
                ('created_at', models.DateTimeField(auto_now_add=True)),
                ('updated_at', models.DateTimeField(auto_now=True)),
                ('accommodation', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='accommodation.accommodation')),
            ],
            options={
                'db_table': 'reviews',
            },
        ),
    ]
