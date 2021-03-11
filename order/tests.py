import jwt

from django.test    import TestCase, Client

from my_settings    import SECRET_KEY, ALGORITHM
from user.models    import User
from flight.models  import Airline, Airport, FlightSchedule, FlightStatus, FlightPrice
from order.models   import FlightOrder, OrderStatus

class FlightRoundTripOrderTest(TestCase):
    maxDiff = None

    @classmethod
    def setUpClass(cls):
        User.objects.create(
            id = 1,
            nickname = 'test',
            email    = 'test@ourrealtrip.com',
            kakao_id = 123456,
        )

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
                departure_date       = '2021-03-14',
                arrival_date         = '2021-03-14',
                departure_time       = '10:00:00',
                arrival_time         = '11:10:00',
                duration_time        = '01:10:00',
                airline_id           = 1,
                departure_airport_id = 2,
                arrival_airport_id   = 1,
                time_frame           = 2
            )
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
            )
        ])

        OrderStatus.objects.create(
            id = 1,
            name = '결제대기'
        )

    @classmethod
    def tearDownClass(cls):
        User.objects.all().delete()
        Airline.objects.all().delete()
        Airport.objects.all().delete()
        FlightStatus.objects.all().delete()
        FlightSchedule.objects.all().delete()
        FlightPrice.objects.all().delete()
        OrderStatus.objects.all().delete()
        FlightOrder.objects.all().delete()

    def test_flight_order_post_success(self):
        headers  = ({
            'HTTP_AUTHORIZATION' : jwt.encode({
                'user_id' : User.objects.get(id=1).id}, 
                SECRET_KEY, 
                algorithm=ALGORITHM)
        })
        data     = ({
            'passenger'       : 2,
            'leavingFlight'   : 1,
            'returningFlight' : 2,
        })
        response = self.client.post('/order/flight', data=data, **headers, content_type='application/json')

        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.json(), {'message' : 'SUCCESS'})

    def test_flight_order_post_success_data(self):
        headers  = ({
            'HTTP_AUTHORIZATION' : jwt.encode({
                'user_id' : User.objects.get(id=1).id}, 
                SECRET_KEY, 
                algorithm=ALGORITHM)
        })
        data     = ({
            'passenger'       : 2,
            'leavingFlight'   : 1,
            'returningFlight' : 2,
        })
        response = self.client.post('/order/flight', data=data, **headers, content_type='application/json')

        order = FlightOrder.objects.all()[0]
        data  = {
            'total_price'   : order.total_price,
            'passenger'     : order.passenger,
            'order_status'  : order.order_status_id,
            'flight_price'  : order.flight_price_id,
            'user'          : order.user_id
        }

        self.assertEqual(
            data,
            {
                'total_price'  : 77800.00,
                'passenger'    : 2,
                'order_status' : 1,
                'flight_price' : 1,
                'user'         : 1,
            }
        )

    def test_flight_order_post_invalid_passenger(self):
        headers  = ({
            'HTTP_AUTHORIZATION' : jwt.encode({
                'user_id' : User.objects.get(id=1).id}, 
                SECRET_KEY, 
                algorithm=ALGORITHM)
        })
        data     = ({
            'passenger'       : 0,
            'leavingFlight'   : 1,
            'returningFlight' : 2,
        })
        response = self.client.post(
            '/order/flight', 
            data=data, 
            **headers, 
            content_type='application/json'
        )

        self.assertEqual(response.status_code, 400)
        self.assertEqual(response.json(), {'message' : 'INVALID_PASSENGER'})
        
    def test_flight_order_post_invalid_key(self):
        headers  = ({
            'HTTP_AUTHORIZATION' : jwt.encode({
                'user_id' : User.objects.get(id=1).id}, 
                SECRET_KEY, 
                algorithm=ALGORITHM)
        })
        data     = ({
            'passenger'       : 2,
            'Flight'          : 1,
            'returningFlight' : 2,
        })
        response = self.client.post(
            '/order/flight', 
            data=data, 
            **headers, 
            content_type='application/json'
        )

        self.assertEqual(response.status_code, 400)
        self.assertEqual(response.json(), {'message' : 'INVALID_KEY'})

    def test_flight_order_post_need_value(self):
        headers  = ({
            'HTTP_AUTHORIZATION' : jwt.encode({
                'user_id' : User.objects.get(id=1).id}, 
                SECRET_KEY, 
                algorithm=ALGORITHM)
        })
        data     = ({
            'passenger'       : 2,
            'leavingFlight'   : 'fake_string',
            'returningFlight' : 2,
        })
        response = self.client.post(
            '/order/flight', 
            data=data, 
            **headers, 
            content_type='application/json'
        )

        self.assertEqual(response.status_code, 400)
        self.assertEqual(response.json(), {'message' : 'NEED_VALUE'})

    def test_flight_order_post_invalid_flight_id(self):
        headers  = ({
            'HTTP_AUTHORIZATION' : jwt.encode({
                'user_id' : User.objects.get(id=1).id}, 
                SECRET_KEY, 
                algorithm=ALGORITHM)
        })
        data     = ({
            'passenger'       : 2,
            'leavingFlight'   : None,
            'returningFlight' : 2,
        })
        response = self.client.post(
            '/order/flight', 
            data=data, 
            **headers, 
            content_type='application/json'
        )

        self.assertEqual(response.status_code, 400)
        self.assertEqual(response.json(), {'message' : 'INVALID_FLIGHT_ID'})
