import json, jwt

from django.http    import JsonResponse

from my_settings    import SECRET_KEY, ALGORITHM
from user.models    import User

def validate_signin(func):
    def wrapper(self, request, *args, **kwargs):
        try:
            access_token = request.headers['authorization']
            payload = jwt.decode(access_token, SECRET_KEY, algorithms=ALGORITHM)
            user = User.objects.get(id=payload['user_id'])
            request.user = user
            
            return func(self, request, *args, **kwargs)

        except KeyError:
            return JsonResponse({'MESSAGE' : 'NEED_TO_SIGNIN'}, status=401)

        except jwt.exceptions.DecodeError:
            return JsonResponse({'MESSAGE' : 'INVALID_TOKEN'}, status=400)

        except User.DoesNotExist:
            return JsonResponse({'MESSAGE' : 'INVALID_USER'}, status=400)

    return wrapper

def get_current_user_id(request):
    try:
        if request.headers.get('authorization'):
            return User.objects.get(id=jwt.decode(request.headers['authorization'],     SECRET_KEY, algorithms=ALGORITHM)).id
        return 0

    except jwt.exceptions.DecodeError:
        return JsonResponse({'MESSAGE' : 'INVALID_TOKEN'}, status=400)

    except User.DoesNotExist:
        return JsonResponse({'MESSAGE' : 'INVALID_USER'}, status=400)
