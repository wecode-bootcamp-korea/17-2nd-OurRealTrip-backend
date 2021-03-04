from django.urls    import path, include

from user.views     import SigninView

urlpatterns = [
    path('/signin', SigninView.as_view()),
]
