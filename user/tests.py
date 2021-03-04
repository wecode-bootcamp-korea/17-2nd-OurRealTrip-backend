import json

from django.test    import TestCase, Client

from user.models    import User

class UserSignInTests(TestCase):
    def setUp(self):
        User.objects.create(nickname='nickname03', email='user03@ourrealtrip.com')

    def tearDown(self):
        return super().tearDown()

    def test_users_table_data(self):
        email = User.objects.get(nickname='nickname03').email
        self.assertEqual(email, 'user03@ourrealtrip.com')

    def test_signin_success(self):
        data = {'email' : 'user03@ourrealtrip.com'}
        response = self.client.post('/user/signin', json.dumps(data), content_type='application/json')
        self.assertEqual(response.status_code, 200)

    def test_signin_invalid_email(self):
        data = {'email' : 'user03@gmail.com'}
        response = self.client.post('/user/signin', json.dumps(data), content_type='application/json')
        self.assertEqual(response.status_code, 400)
        self.assertEqual(response.json(), {'MESSAGE' : 'INVALID_EMAIL'})

    def test_signin_invalid_key(self):
        data = {'e' : 'user03@ourrealtrip.com'}
        response = self.client.post('/user/signin', json.dumps(data), content_type='application/json')
        self.assertEqual(response.status_code, 400)
        self.assertEqual(response.json(), {'MESSAGE' : 'INVALID_KEY'})

    def test_signin_no_request_body(self):
        data = {'email' : 'user03@ourrealtrip.com'}
        response = self.client.post('/user/signin')
        self.assertEqual(response.status_code, 400)
        self.assertEqual(response.json(), {'MESSAGE' : 'NO_REQUEST_BODY'})
