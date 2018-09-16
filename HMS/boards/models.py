# Author: Mohammad Adil


from __future__ import unicode_literals

from django.db import models
from django.core.validators import MaxLengthValidator,MinLengthValidator

# Create your models here.
class Login(models.Model):
    user_id=models.CharField(primary_key=True,blank=False,max_length=60)
    user_pass=models.CharField(max_length=20, blank=False)
    user_category=models.CharField(max_length=1)

class Patient(models.Model):
    pid=models.AutoField(primary_key=True,max_length=10)
    p_name=models.CharField(max_length=50, blank=False)
    p_age=models.IntegerField(blank=False)
    p_gender=models.CharField(max_length=6)
    p_address=models.CharField(max_length=100)
    p_email=models.CharField(max_length=60)
    flag=models.IntegerField()
    datecreated=models.DateTimeField(auto_now_add=True)

class Doctor(models.Model):
    did=models.AutoField(primary_key=True,max_length=10)
    d_name=models.CharField(max_length=50, blank=False)
    d_specialization=models.CharField(max_length=50,blank=False)
    d_department=models.CharField(max_length=50)
    d_slot=models.CharField(max_length=1000)
    d_fee=models.IntegerField()
    d_address=models.CharField(max_length=100)
    d_email=models.CharField(max_length=60)
    flag=models.IntegerField()
    datecreated=models.DateTimeField(auto_now_add=True)