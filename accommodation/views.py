import json

from datetime               import datetime
from django.views           import View
from django.http            import JsonResponse, HttpResponse, Http404
from django.db.models       import Count, Min, Max
from django.db.models       import Q

from user.models            import User
from accommodation.models   import (
    Accommodation,
    AccommodationImage,
    Category,
    Address,
    City,
    Host,
    Room,
    RoomOption,
    Review,
    Option,
    UnavailableDate
)
          
class AccommodationListView(View):

    """
    ORDERING

    favored(인기순)
    ratingHigh(평점순)
    priceLow(낮은 가격순)
    priceHigh(높은 가격순)
    """
    """
    DEFAULT QUERY STRING 

    category=호텔
    order=favored
    rate=0
    """

    def get(self, request, ):
        city         = request.GET.get('city', None)
        start_date   = request.GET.get('startDate', None)
        end_date     = request.GET.get('endDate', None)
        guest        = request.GET.get('guest', None)
        ordering     = request.GET.get('order', 'favored')
        rate         = request.GET.get('rate', 0)
        category     = request.GET.getlist('category', '호텔')
        room_option  = request.GET.getlist('roomOption', None)

        condition  = (
                Q(city__name= city)
                & Q(room__maximum_capacity__gte=guest)
                & ~Q(room__unavailabledate__start_date__gte=start_date, room__unavailabledate__end_date__lte=end_date)
        )
        
        accommodations = Accommodation.objects\
            .select_related(
            'address',
            'category',
            'city')\
            .prefetch_related(
            'accommodationimage_set',
            'room_set',
            'review_set')\
            .filter(condition)\
            .annotate(count=Count('review'), price=Min('room__price'))

        ordering_options = {
            'favored' : '-count',
            'ratingHigh' : '-rate',
            'priceLow' : 'room__price',
            'priceHigh' : '-room__price'
        }

        filter_prefixes = {
            'category'    : 'category__name__in',
            'room_option' : 'room__option__name__in',
            'rate'        : 'rate__gte'
        }

        filter_set = {
            filter_prefixes.get(key): value for (key, value) in dict(request.GET).items() if filter_prefixes.get(key)
        }

        data = [
            {
                'id'          : accommodation.id,
                'name'        : accommodation.name,
                'description' : accommodation.description,
                'category'    : accommodation.category.name,
                'rate'        : accommodation.rate,
                'review'      : accommodation.count,
                'price'       : accommodation.price,
                'url'         : accommodation.accommodationimage_set.first().image_url,
            } for accommodation in accommodations.filter(**filter_set).order_by(ordering_options[ordering])
        ]

        return JsonResponse({'data': data}, status=200)
