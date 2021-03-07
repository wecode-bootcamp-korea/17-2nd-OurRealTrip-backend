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

    def get(self, request, category_id=0):
        city         = request.GET['city']
        start_date   = request.GET['startDate']
        end_date     = request.GET['endDate']
        guest        = request.GET['guest']
        ordering     = request.GET.get('order', 'favored')
        rate         = request.GET.get('rate', 0.00)
        room_option  = request.GET.getlist('roomOption', None)

        q = (Q(city__name=city) 
            & Q(room__maximum_capacity__gte=guest) 
            & Q(rate__gte=rate) 
            & ~Q(room__unavailabledate__start_date__gte=start_date, room__unavailabledate__end_date__lte=end_date)
        )

        if category_id:
            q &= Q(category__id=category_id)

        if room_option:
            q &= Q(room__option__name__in=room_option)

        accommodations = Accommodation.objects\
            .select_related('address','category','city')\
            .prefetch_related('accommodationimage_set','room_set','review_set')\
            .filter(q)\
            .annotate(count=Count('review'), price=Min('room__price'))

        ordering_options = {
            'favored' : '-count',
            'ratingHigh' : '-rate',
            'priceLow' : 'price',
            'priceHigh' : '-price'
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
                'url'         : accommodation.accommodationimage_set.all()[0].image_url,
            } for accommodation in accommodations.order_by(ordering_options[ordering]) 
        ]

        return JsonResponse({'data': data}, status=200)

class AccommodationDetailView(View):
    def get(self, request, accommodation_id):
        try:
            accommodation = Accommodation.objects.get(id=accommodation_id)
            review_count  = Review.objects.filter(accommodation=accommodation_id).count()
            
            data = {
                'id'            : accommodation.id,
                'name'          : accommodation.name,
                'description'   : accommodation.description,
                'total_rate'    : accommodation.rate,
                'review_number' : review_count,
                'room'          : [{
                    'name'           : room.name,
                    'price'          : room.price,
                    'basic_capacity' : room.basic_capacity,
                    'max_capacity'   : room.maximum_capacity,
                    'image'          : [
                        {
                            'image_url' : image.image_url 
                        } for image in room.accommodation.accommodationimage_set.all()
                    ],
                } for room in accommodation.room_set.all()],
                'main_image'    : accommodation.accommodationimage_set.first().image_url,
                'address'       : accommodation.address.name,
                'host'          : {
                    'name'           : accommodation.host.name,
                    'image_url'      : accommodation.host.image_url
                },
                'review_list'   : [
                    {
                        'user'        : review.user.nickname,
                        'created_at'  : review.created_at,
                        'content'     : review.content,
                        'total_rate'  : review.total_rate
                    } for review in accommodation.review_set.all()
                ]
            }

            return JsonResponse({'data': data}, status=200)

        except Accommodation.DoesNotExist:
            return JsonResponse({'message': 'INVALID_ACCOMMODATION_ID'}, status=400)