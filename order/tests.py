import jwt
from decimal import Decimal

from django.test          import TestCase, Client

from my_settings          import SECRET_KEY, ALGORITHM
from user.models          import User
from flight.models        import Airline, Airport, FlightSchedule, FlightStatus, FlightPrice
from order.models         import FlightOrder, OrderStatus, AccommodationOrder
from accommodation.models import Accommodation, Address, Category, City, Host, Room

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


class AoccommodationOrderTest(TestCase):
    maxDiff = None

    @classmethod
    def setUpClass(cls):
        User.objects.create(
            id       = 2,
            nickname = 'test',
            email    = 'test@ourrealtrip.com',
            kakao_id = 123456,
        )

        OrderStatus.objects.create(
            id   = 1,
            name = '결제 대기'
        )

        Address.objects.create(
            id        = 1,
            latitude  = 33.4103113,
            longitude = 1268974265,
            name      = "제주특별자치도 서귀포시 성산읍 온평서로 28",
        )

        Host.objects.create(
            id        = 1,
            name      = "이소헌",
            image_url = "https://wecode.co.kr/static/media/lee-so.39e2a003.png",
        )

        City.objects.create(
            id   = 1,
            name = "제주",
        )

        Category.objects.create(
            id   = 1,
            name = '호텔',
        )

        Accommodation.objects.create(
            id          = 1,
            name        = "도시 호텔 제주",
            rate        = 3.7,
            address_id  = 1,
            host_id     = 1,
            city_id     = 1,
            category_id = 1,
        )

        Room.objects.bulk_create([
            Room(
                id               = 1,
                name             = "방",
                price            = 100000.00,
                maximum_capacity = 4,
                basic_capacity   = 2,
                accommodation_id = 1,
            )])

    @classmethod
    def tearDownClass(cls):
        Address.objects.all().delete()
        OrderStatus.objects.all().delete()
        Host.objects.all().delete()
        City.objects.all().delete()
        Category.objects.all().delete()
        Accommodation.objects.all().delete()

    def test_accommodation_order_post_success_data(self):
        headers = ({
            'HTTP_AUTHORIZATION': jwt.encode({
                'user_id': User.objects.get(id=2).id},
                SECRET_KEY,
                algorithm=ALGORITHM)
        })

        data     = ({
            'totalPrice': 100000.00,
            'guest'     : 2,
            'startDate' : '2021-04-24',
            'endDate'   : '2021-04-27',
            'room'      :1,
        })

        response = self.client.post(
            '/order/accommodation',
            data=data,
            **headers,
            content_type='application/json'
        )
        self.assertEqual(response.json(), {'message': 'SUCCESS'})
        self.assertEqual(response.status_code, 200)

        order = AccommodationOrder.objects.all()[0]
        data  = {
            'totalPrice'  : order.total_price,
            'guest'       : order.guest,
            'start_date'  : str(order.start_date),
            'end_date'    : str(order.end_date),
            'room'        : order.room_id,
            'order_status': order.order_status_id,
            'user'        : order.user_id,
        }

        self.assertEqual(
            data, {
                'totalPrice'  : 100000.00,
                'guest'       : 2,
                'start_date'  : '2021-04-24',
                'end_date'    : '2021-04-27',
                'room'        : 1,
                'order_status': 1,
                'user'        : 2,
            }
        )

    def test_accommodation_order_post_room_does_not_exist_error(self):
        headers = ({
            'HTTP_AUTHORIZATION': jwt.encode({
                'user_id': User.objects.get(id=2).id},
                SECRET_KEY,
                algorithm=ALGORITHM)
        })

        data = ({
            'totalPrice' : 100000.00,
            'guest'      : 2,
            'startDate'  : '2021-04-24',
            'endDate'    : '2021-04-27',
            'room'       : 1000,
        })

        response = self.client.post(
            '/order/accommodation',
            data=data,
            **headers,
            content_type='application/json'
        )
        self.assertEqual(response.json(), {'message': 'ROOM_DOES_NOT_EXIST'})
        self.assertEqual(response.status_code, 400)

    def test_accommodation_order_post_order_status_does_not_exist_error(self):
        OrderStatus.objects.get(id=1).delete()

        headers = ({
            'HTTP_AUTHORIZATION': jwt.encode({
                'user_id': User.objects.get(id=2).id},
                SECRET_KEY,
                algorithm=ALGORITHM)
        })

        data = ({
            'totalPrice' : 100000.00,
            'guest'      : 2,
            'startDate'  : '2021-04-24',
            'endDate'    : '2021-04-27',
            'room'       : 1,
        })

        response = self.client.post(
            '/order/accommodation',
            data=data,
            **headers,
            content_type='application/json'
        )
        self.assertEqual(response.json(), {'message': 'ORDER_STATUS_DOES_NOT_EXIST'})
        self.assertEqual(response.status_code, 400)