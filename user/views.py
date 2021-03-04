import json, jwt
from weakref import KeyedRef

from django.views   import View
from django.http    import JsonResponse

from my_settings    import SECRET_KEY, ALGORITHM
from user.models    import User

class SigninView(View):
    def post(self, request):
        try:
            data = json.loads(request.body)
            email = data['email']

            if User.objects.filter(email=email).exists():
                user_id = User.objects.get(email=email).id
                access_token = jwt.encode({'user_id' : user_id}, SECRET_KEY, algorithm=ALGORITHM)
                return JsonResponse({'MESSAGE' : 'SUCCESS', 'ACCESS_TOKEN' : access_token}, status=200)
            return JsonResponse({'MESSAGE' : 'INVALID_EMAIL'}, status=400)

        except KeyError:
            return JsonResponse({'MESSAGE' : 'INVALID_KEY'}, status=400)
        
        except json.decoder.JSONDecodeError:
            return JsonResponse({'MESSAGE' : 'NO_REQUEST_BODY'}, status=400)
