import requests, json, uuid

from django.http    import JsonResponse
from django.views   import View

from my_settings    import SECRET_KEY, ALGORITHM
from user.utils     import validate_signin
from user.models    import User
from flight.models  import FlightPrice
from order.models   import OrderStatus, FlightOrder

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

