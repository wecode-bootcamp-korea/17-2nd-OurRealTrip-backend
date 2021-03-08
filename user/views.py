import requests, json, jwt

from django.http    import JsonResponse
from django.views   import View

from my_settings    import SECRET_KEY, ALGORITHM
from user.models    import User

class SignView(View):
    def get(self, request):
        try:
            kakao_access_token = request.headers['authorization']
            kakao_profile_url  = 'https://kapi.kakao.com/v2/user/me'
            headers            = ({'authorization' : f'Bearer {kakao_access_token}'})
            response           = requests.get(kakao_profile_url, headers=headers).json()
    
            kakao_id      = response['id']
            kakao_user    = response['kakao_account']
           
            if not User.objects.filter(kakao_id = kakao_id).exists():
                User.objects.create(
                    kakao_id = kakao_id,
                    email    = kakao_user['email'],
                    nickname = response['properties']['nickname'],
                )
           
            user         = User.objects.get(kakao_id = kakao_id)
            access_token = jwt.encode({'user_id' : user.id}, SECRET_KEY, algorithm=ALGORITHM)
           
            return JsonResponse({'message' : 'SUCCESS', 'access_token' : access_token}, status=200)

        except KeyError:
            return JsonResponse({'message' : 'INVALID_TOKEN'}, status=400)
