import json, jwt

from django.test    import TestCase, Client
from unittest.mock  import patch, MagicMock

from my_settings    import SECRET_KEY, ALGORITHM
from user.models    import User

class UserSignInTests(TestCase):
    @classmethod
    def setUpClass(cls):
        User.objects.create(
            kakao_id = 987654321,
            email    = 'user@ourrealtrip.com',
            nickname = 'user'
        )

    @classmethod
    def tearDownClass(cls):
        User.objects.all().delete()

    @patch('user.views.requests')
    def test_signup_success(self, mocked_request):
        class FakeKakao():
            def json(self):
                return {
                    'id'            : 123456789,
                    'connected_at'  : '2021-03-07T15:18:34Z',
                    'properties'    : {'nickname': 'test'},
                    'kakao_account' : {
                        'profile_needs_agreement': False,
                        'profile'                : {'nickname': 'test'},
                        'has_email'              : True,
                        'email_needs_agreement'  : False,
                        'is_email_valid'         : True,
                        'is_email_verified'      : True,
                        'email'                  : 'test@ourrealtrip.com'
                    }
                }

        mocked_request.get = MagicMock(return_value = FakeKakao())

        data     = ({'HTTP_AUTHORIZATION': '123456789'})
        response = self.client.get('/user/sign', content_type = 'application/json', **data)

        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.json(), 
            {
                'message' : 'SUCCESS', 
                'access_token' : jwt.encode(
                    {'user_id' : User.objects.latest('id').id}, 
                    SECRET_KEY, 
                    algorithm=ALGORITHM)
            }
        )

    @patch('user.views.requests')
    def test_signin_success(self, mocked_request):
        class FakeKakao():
            def json(self):
                return {
                    'id'            : 987654321,
                    'connected_at'  : '2021-03-07T15:18:34Z',
                    'properties'    : {'nickname': 'user'},
                    'kakao_account' : {
                        'profile_needs_agreement': False,
                        'profile'                : {'nickname': 'user'},
                        'has_email'              : True,
                        'email_needs_agreement'  : False,
                        'is_email_valid'         : True,
                        'is_email_verified'      : True,
                        'email'                  : 'user@ourrealtrip.com'
                    }
                }

        mocked_request.get = MagicMock(return_value = FakeKakao())

        data     = ({'HTTP_AUTHORIZATION': '987654321'})
        response = self.client.get('/user/sign', content_type = 'application/json', **data)

        self.assertEqual(response.status_code, 200)
        self.assertEqual(response.json(), 
            {
                'message' : 'SUCCESS', 
                'access_token' : jwt.encode(
                    {'user_id' : User.objects.get(kakao_id='987654321').id},
                    SECRET_KEY, 
                    algorithm=ALGORITHM
                )
            }
        )
        

    def test_sign_fail_with_invalid_token(self):
        data     = ({'HTTP_AUTHORIZATION': 'invalid_token'})
        response = self.client.get('/user/sign', content_type = 'application/json', **data)

        self.assertEqual(response.status_code, 400)
        self.assertEqual(response.json(), {'message' : 'INVALID_TOKEN'})
