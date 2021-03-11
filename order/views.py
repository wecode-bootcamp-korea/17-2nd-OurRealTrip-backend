import requests, json, uuid

from django.http    import JsonResponse
from django.views   import View

from my_settings    import SECRET_KEY, ALGORITHM
from user.utils     import validate_signin
from user.models    import User
from flight.models  import FlightPrice
from order.models   import OrderStatus, FlightOrder, AccommodationOrder
from accommodation.models import Room

class FlightRoundTripOrderView(View):
    @validate_signin
    def post(self, request):
        try:
            data             = json.loads(request.body)
            passenger        = data['passenger']
            if passenger == 0:
                return JsonResponse({'message' : 'INVALID_PASSENGER'}, status=400)
    
            [FlightOrder.objects.create(
                serial_number = uuid.uuid4(),
                order_status  = OrderStatus.objects.get(id=1),
                user          = request.user,
                passenger     = passenger,
                flight_price  = FlightPrice.objects.get(id=flight),
                total_price   = int(passenger) * FlightPrice.objects.get(id=flight).price,
            ) for flight in [data['leavingFlight'], data['returningFlight']]]
    
            return JsonResponse({'message' : 'SUCCESS'}, status=200)
        
        except KeyError:
            return JsonResponse({'message' : 'INVALID_KEY'}, status=400)

        except ValueError:
            return JsonResponse({'message' : 'NEED_VALUE'}, status=400)

        except FlightPrice.DoesNotExist:
            return JsonResponse({'message' : 'INVALID_FLIGHT_ID'}, status=400)

class AccommodationOrderView(View):
    @validate_signin
    def post(self, request):
        try:
            user        = request.user
            data        = json.loads(request.body)
            total_price = data.get('totalPrice')
            guest       = data.get('guest')
            start_date  = data.get('startDate')
            end_date    = data.get('endDate')
            room        = data.get('room')

            AccommodationOrder.objects.create(
                total_price   = total_price,
                guest         = guest,
                start_date    = start_date,
                end_date      = end_date,
                serial_number = uuid.uuid4(),
                room          = Room.objects.get(id=room),
                order_status  = OrderStatus.objects.get(name="결제 대기"),
                user          = user,
            )
            return JsonResponse({'message': 'SUCCESS'}, status=200)

        except Room.DoesNotExist:
            return JsonResponse({'message': 'ROOM_DOES_NOT_EXIST'}, status=400)

        except OrderStatus.DoesNotExist:
            return JsonResponse({'message': 'ORDER_STATUS_DOES_NOT_EXIST'}, status=400)