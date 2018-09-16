# Author: Mohammad Adil

from django.views.generic import TemplateView
from django.shortcuts import redirect
from django.shortcuts import render,render_to_response
from django.http import HttpResponse,HttpResponseRedirect
from .models import Login,Patient,Doctor

user_category='' 
user_name=''   
def LoginRegisterPageView(request):
    if request.method=='GET':
        return render(request, "login.html",{})
    if request.POST and "register-submit-btn" in request.POST:
        global user_name
        user_name=request.POST['email']
        user_password=request.POST['password']
        user_category=request.POST.get('radio2') # this get value 0 for patients and 1 for doctors.

        if Login.objects.filter(user_id=user_name).exists():
            return HttpResponse("User Already Exists")
        else:
            user_credentials=Login(user_id=user_name,user_pass=user_password,user_category=user_category)
            user_credentials.save()
            return HttpResponse("Registered Successfully")
    else:
        if request.POST and "login-submit-btn" in request.POST:
            global user_name
            user_name=request.POST['username']
            user_password=request.POST['password']

            if Login.objects.filter(user_id=user_name,user_pass=user_password).exists():
                global user_category
                user_category=Login.objects.values_list('user_category', flat=True).filter(user_id=user_name)
                if int(user_category[0])==1:
                    if Doctor.objects.filter(d_email=user_name,flag='1').exists():
                        msg={'email': user_name,
                            'flag':1,
                            'category':int(user_category[0])}
                        
                        return render(request,"dashboard.html",msg)    
                        #return HttpResponse("doctor")
                    else:
                        msg={'email': user_name,
                            'flag':0,
                            'category':int(user_category[0])}
                        return render(request,"dashboard.html",msg)
                elif int(user_category[0])==0:
                    if Patient.objects.filter(p_email=user_name,flag='1').exists():
                        msg={'email': user_name,
                            'flag':1,
                            'category':int(user_category[0])}
                        print(user_category)
                        return render(request,"dashboard.html",msg)
                        #return HttpResponse("Login Successful")
                    else:
                        msg={'email': user_name,
                            'flag':0,
                            'category':int(user_category[0])}
                        return render(request,"dashboard.html",msg)
                #return HttpResponseRedirect("/dashboard")
            else:
                #return HttpResponse("Username or Password is Incorrect")
                return render(request,"login.html",{'msg':{'error_flag':'1'}})

def DashboardPageView(request):
    
    if request.method=='POST': 
        global user_category
        user_category = request.POST['user-category']
        name=request.POST.get('user-name')
        address=request.POST['user-address']
        email=request.POST['user-email']
        flag=request.POST.get('flag')

        if user_category=='1':
            specialization=request.POST['user-spec']
            department=request.POST['user-department']
            slot=request.POST['user-slot']
            fee=request.POST['user-fee']

            user_details=Doctor(d_name=name,d_address=address,d_specialization=specialization,d_department=department,d_slot=slot,d_email=email,d_fee=fee,flag=flag)
            user_details.save()    
            print(request.POST)
        
        elif user_category=='0':
            age=request.POST['user-age']
            gender=request.POST['user-gender']
            user_details=Patient(p_name=name,p_age=age,p_gender=gender,p_address=address,p_email=email,flag=flag)
            user_details.save()
    
    msg={
        'flag':1,
        'category':user_category}
    return render(request,"dashboard.html",msg)


def PatientRecordPageView(request):
    return render(request,"patient_records.html")

def DashboardProfilePageView(request):
    if len(user_category) >0:
        if int(user_category[0])==0:
            user_details=Patient.objects.values_list('p_name','p_age','p_gender','p_address').filter(p_email=user_name)
        
        elif int(user_category[0])==1:
            user_details=Doctor.objects.values_list('d_name','d_address','d_specialization','d_department','d_fee').filter(d_email=user_name)
            user_slot=Doctor.objects.values_list('d_slot').filter(d_email=user_name)
    
        values = ','.join(str(v) for v in user_details[0])
        msg={
            'category':user_category[0],
            'details':values,
            'slot':user_slot[0]}
        print(values)
        return render(request,"profile.html",msg)
    else:
        return redirect('/login')