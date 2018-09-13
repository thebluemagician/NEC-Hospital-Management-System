# Author: Mohammad Adil


from __future__ import unicode_literals

from django.db import models
from django.core.validators import MaxLengthValidator,MinLengthValidator

# Create your models here.
class Login(models.Model):
    user_id=models.CharField(primary_key=True,blank=False,max_length=20)
    user_pass=models.CharField(max_length=20, blank=False)