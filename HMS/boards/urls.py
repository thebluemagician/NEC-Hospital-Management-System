#Author: adil.md70@gmail.com

from django.urls  import path,include
from django.contrib import admin
from .views import LoginRegisterPageView,DashboardPageView
from . import views

urlpatterns = [
    #path('about/',AboutPageView.as_view(),name="about"),
    path('login/',views.LoginRegisterPageView,name="login"),
    path('dashboard/',views.DashboardPageView,name="dashboard"),
    #path('login/', views.Login,name="login"),


    path('',include('django.contrib.auth.urls')),

    
]