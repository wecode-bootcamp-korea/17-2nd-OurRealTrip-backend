import json

from django.test          import TestCase,Client

from .models import (
    RefundAccount,
    User,
    Address,
    Host,
    City,
    Category,
    Accommodation,
    Room,
    AccommodationImage,
    OrderStatus,
    AccommodationOrder,
    Review,
    UnavailableDate
)

from accommodation.views  import AccommodationListView

client = Client()

class AccommodationListTest(TestCase):

    def setUp(self):
        RefundAccount.objects.create(
            id                  = 1,
            bank_account_number = '01',
            bank_name           = 'CITYBANK',
            owner               =' Hee Young Jung'
        )

        User.objects.create(
            id                = 1,
            nickname          = '정희영',
            email             = 'jhee@wecode.com',
            image_url         = 'image01/wecode.com',
            refund_account_id = 1
        )
        
        Address.objects.create(
            id        = 1, 
            name      = '제주특별자치도 제주시 한림읍 귀덕리 1836-3',
            longitude = '123.00001', 
            latitude  = '192.00001'
        )

        Host.objects.create(
            id        = 1,
            name      ='허민지', 
            image_url ='null'
        )

        self.city = City.objects.create(
            id   = 1, 
            name = '제주'
        )

        Category.objects.create(
            id   = 1,
            name = '호텔'
        )
        
        Accommodation.objects.create(
            id          = 1,
            name        = '토토 게스트하우스',
            description = '파도를 감상하며 명상하기 좋은 게스트하우스', 
            rate        = '4.20', 
            content     = 'null', 
            address_id  = 1, 
            host_id     = 1, 
            city_id     = 1, 
            category_id = 1
        )

        Room.objects.bulk_create([
            Room( 
                id               = 1,
                name             = '스튜디오1',
                price            = '89000.00',
                maximum_capacity = '3',
                basic_capacity   = '2',
                accommodation_id = 1,
                extra_price      = '0'
            ),
            
            Room( 
                id               = 2,
                name             = '패밀리 스위트룸',
                price            = '222000.00',
                maximum_capacity = '4',
                basic_capacity   = '4',
                accommodation_id = 1,
                extra_price      ='0'
            )
        ])

        AccommodationImage.objects.create(
            image_url        = 'image01/wecode.com',
            accommodation_id = 1,
            room_id          = 1
        )

        OrderStatus.objects.create(
            id   = 1,
            name = '예약완료'
        )

        AccommodationOrder.objects.create(
            total_price      = '333000.00',
            guest            = '2',
            start_date       = '2020-03-01',
            end_date         = '2020-03-15',
            serial_number    = 'ordernumber00001',
            order_status_id  = 1,
            user_id = 1,
            room_id          = 1
        )

        Review.objects.create(
            content                = '우리 팀 멋있다!',
            image_url              = 'www.wecode.com',
            location_rate          = '3.4',
            sanitary_rate          = '4.5',
            facility_rate          = '3.2',
            hospitality_rate       = '128.00001',
            total_rate             = '128.00002',
            user_id                = 1,
            accommodation_id       = 1,
            accommodation_order_id = 1
        )

        UnavailableDate.objects.create(
            id         = 1,
            start_date = '2020-09-09',
            end_date   = '2020-10-09',
            room_id    = 1
        )

    def tearDown(self):
            Accommodation.objects.all().delete()
            User.objects.all().delete()
            Address.objects.all().delete()
            Host.objects.all().delete()
            City.objects.all().delete()
            Category.objects.all().delete()
            Room.objects.all().delete()
            AccommodationImage.objects.all().delete()
            OrderStatus.objects.all().delete()
            AccommodationOrder.objects.all().delete()
            Review.objects.all().delete()
            RefundAccount.objects.all().delete()
            UnavailableDate.objects.all().delete()

    def test_accommodation_list_data(self):
        response = client.get(f'/accommodation?city={self.city.name}&startDate=2021-03-17&endDate=2021-03-18&guest=2&order=favored')
        
        self.assertEqual(response.status_code, 200)



        



        

