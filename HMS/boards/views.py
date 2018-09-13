# Author: Mohammad Adil

from django.views.generic import TemplateView
from django.shortcuts import render,render_to_response
from django.http import HttpResponse,HttpResponseRedirect
from .models import Login
    
def LoginRegisterPageView(request):
    if request.method=='GET':
        return render(request, "login.html",{})
    if request.POST and "register-submit-btn" in request.POST:
        user_name=request.POST['email']
        user_password=request.POST['password']

        if Login.objects.filter(user_id=user_name, user_pass=user_password).exists():
            return HttpResponse("User Already Exists")
        else:
            user_credentials=Login(user_id=user_name,user_pass=user_password)
            user_credentials.save()
            return HttpResponse("Registered Successfully")
    else:
        if request.POST and "login-submit-btn" in request.POST:
            user_name=request.POST['username']
            user_password=request.POST['password']

            if Login.objects.filter(user_id=user_name,user_pass=user_password).exists():
                #return HttpResponse("Login Successful")
                return render(request,"dashboard.html",{})
                #return HttpResponseRedirect("/dashboard")
            else:
                #return HttpResponse("Username or Password is Incorrect")
                return render(request,"login.html",{'msg':{'error_flag':'1'}})

def DashboardPageView(request):
    return render(request,"dashboard.html",{})


