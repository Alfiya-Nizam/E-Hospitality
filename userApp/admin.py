from django.contrib import admin

# Register your models here.

from .models import  UserRegister,loginTable,Appointment

admin.site.register(UserRegister)
admin.site.register(loginTable)
admin.site.register(Appointment)