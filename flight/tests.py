import datetime

from django.test import TestCase, Client

from .models import Airline, Airport, FlightPrice, FlightSchedule, FlightStatus

class FlightListTest(TestCase):
    maxDiff = None

    @classmethod
    def setUpClass(cls):
        client = Client()
        Airline.objects.create(
            id        = 1,
            name      = 'wecode',
            image_url = 'https://wecode.co.kr/'
        )

        Airport.objects.bulk_create([
            Airport(
                id   = 1,
                name = '김포',
                code =  'GMP'
            ),
            Airport(
                id   = 2,
                name = '제주',
                code = 'CJU'
            )
        ])

        FlightStatus.objects.create(
            id   = 3,
            name = '특가석'
        )

        FlightSchedule.objects.bulk_create([
            FlightSchedule(
                id                   = 1,
                flight_code          = 'WE001',
                departure_date       = '2021-03-12',
                arrival_date         = '2021-03-12',
                departure_time       = '05:00:00',
                arrival_time         = '06:10:00',
                duration_time        = '01:10:00',
                airline_id           = 1,
                departure_airport_id = 1,
                arrival_airport_id   = 2,
                time_frame           = 1
            ),
            FlightSchedule(
                id                   = 2,
                flight_code          = 'WE002',
                departure_date       = '2021-03-12',
                arrival_date         = '2021-03-12',
                departure_time       = '10:00:00',
                arrival_time         = '11:10:00',
                duration_time        = '01:10:00',
                airline_id           = 1,
                departure_airport_id = 1,
                arrival_airport_id   = 2,
                time_frame           = 2
            ),
            FlightSchedule(
                id                   = 3,
                flight_code          = 'WE003',
                departure_date       = '2021-03-12',
                arrival_date         = '2021-03-12',
                departure_time       = '11:00:00',
                arrival_time         = '12:10:00',
                duration_time        = '01:10:00',
                airline_id           = 1,
                departure_airport_id = 1,
                arrival_airport_id   = 2,
                time_frame           = 2
            ),
        ])

        FlightPrice.objects.bulk_create([
            FlightPrice(
                id                 = 1,
                price              = 38900,
                remaining_seat     = 3,
                flight_schedule_id = 1,
                status_id          = 3
            ),
            FlightPrice(
                id                 = 2,
                price              = 36900,
                remaining_seat     = 5,
                flight_schedule_id = 2,
                status_id          = 3
            ),
            FlightPrice(
                id                 = 3,
                price              = 30900,
                remaining_seat     = 1,
                flight_schedule_id = 3,
                status_id          = 3
            )
        ])

    @classmethod
    def tearDownClass(cls):
        Airline.objects.all().delete()
        Airport.objects.all().delete()
        FlightStatus.objects.all().delete()
        FlightSchedule.objects.all().delete()
        FlightPrice.objects.all().delete()

    def test_flight_get_success(self):
        response = self.client.get('/flight?departure=GMP&arrival=CJU&date=2021-03-12&sort=departureTime:asc&timeOption=1&timeOption=2&timeOption=3&timeOption=4&passenger=3', content_type = 'application/json')

        self.assertEqual(response.json(),{
            'date'                 : '2021-03-12',
            'departureAirportName' : '김포',
            'departureAirportCode' : 'GMP',
            'arrivalAirportName'   : '제주',
            'arrivalAirportCode'   : 'CJU',
            'flights'              : [
                {
                    'id'           : 1,
                    'airline'      : 'wecode',
                    'airline_logo' : 'https://wecode.co.kr/',
                    'flightCode'   : 'WE001',
                    'departureTime': '05:00:00',
                    'arrivalTime'  : '06:10:00',
                    'durationTime' : '01:10:00',
                    'status'       : '특가석',
                    'remainingSeat': 3,
                    'price'        : '38900.00'
                },
                {
                    'id'           : 2,
                    'airline'      : 'wecode',
                    'airline_logo' : 'https://wecode.co.kr/',
                    'flightCode'   : 'WE002',
                    'departureTime': '10:00:00',
                    'arrivalTime'  : '11:10:00',
                    'durationTime' : '01:10:00',
                    'status'       : '특가석',
                    'remainingSeat': 5,
                    'price'        : '36900.00'
                }
            ]
        })
        self.assertEqual(response.status_code, 200)

    def test_flight_sorting_success(self):
        response = self.client.get('/flight?departure=GMP&arrival=CJU&date=2021-03-12&sort=price:asc&timeOption=1&timeOption=2&timeOption=3&timeOption=4&passenger=3', content_type = 'application/json')

        self.assertEqual(response.json(),{
            'date'                 : '2021-03-12',
            'departureAirportName' : '김포',
            'departureAirportCode' : 'GMP',
            'arrivalAirportName'   : '제주',
            'arrivalAirportCode'   : 'CJU',
            'flights'              : [
                {
                    'id'           : 2,
                    'airline'      : 'wecode',
                    'airline_logo' : 'https://wecode.co.kr/',
                    'flightCode'   : 'WE002',
                    'departureTime': '10:00:00',
                    'arrivalTime'  : '11:10:00',
                    'durationTime' : '01:10:00',
                    'status'       : '특가석',
                    'remainingSeat': 5,
                    'price'        : '36900.00'
                },
                {
                    'id'           : 1,
                    'airline'      : 'wecode',
                    'airline_logo' : 'https://wecode.co.kr/',
                    'flightCode'   : 'WE001',
                    'departureTime': '05:00:00',
                    'arrivalTime'  : '06:10:00',
                    'durationTime' : '01:10:00',
                    'status'       : '특가석',
                    'remainingSeat': 3,
                    'price'        : '38900.00'
                }
            ]
        })
        self.assertEqual(response.status_code, 200)

    def test_flight_time_filtering_success(self):
        response = self.client.get('/flight?departure=GMP&arrival=CJU&date=2021-03-12&sort=departureTime:asc&timeOption=1&passenger=3', content_type = 'application/json')

        self.assertEqual(response.json(),{
            'date'                 : '2021-03-12',
            'departureAirportName' : '김포',
            'departureAirportCode' : 'GMP',
            'arrivalAirportName'   : '제주',
            'arrivalAirportCode'   : 'CJU',
            'flights'              : [
                {
                    'id'           : 1,
                    'airline'      : 'wecode',
                    'airline_logo' : 'https://wecode.co.kr/',
                    'flightCode'   : 'WE001',
                    'departureTime': '05:00:00',
                    'arrivalTime'  : '06:10:00',
                    'durationTime' : '01:10:00',
                    'status'       : '특가석',
                    'remainingSeat': 3,
                    'price'        : '38900.00'
                }
            ]
        })
        self.assertEqual(response.status_code, 200)

    def test_flight_value_error(self):
        response = self.client.get('/flight?departure=GMP&arrival=CJU&date=2021-03-12&sort=price:asc&timeOption=dk&passenger=3')
        self.assertEqual(response.status_code, 400)
        self.assertEqual(response.json(), {
            'message': 'VALUE_ERROR'
        })

    def test_flight_key_error(self):
        response = self.client.get('/flight')
        self.assertEqual(response.status_code, 400)
        self.assertEqual(response.json(), {
            'message': 'KEY_ERROR'
        })
    def test_flight_index_error(self):
        response = self.client.get('/flight?timeOption=3&timeOption=4&departure=CJU&arrival=GMP&date=2021-03-12&sort=departureTime:desc&passenger=3', content_type = 'application/json')
        self.assertEqual(response.status_code, 400)
        self.assertEqual(response.json(), {
            'message'             : 'INDEX_ERROR',
            'date'                : '2021-03-12',
            'departureAirportCode': 'CJU',
            'arrivalAirportCode'  : 'GMP',
        })

    def test_flight_get_not_found(self):
        response = self.client.get('/flighdt?departure=GMP&arrival=CJU&date=2021-03-14&sort=price:asc&timeOption=1&passenger=3', content_type = 'application/json')
        self.assertEqual(response.status_code, 404)
