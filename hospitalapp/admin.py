from django.contrib import admin
from .models import  HospitalDetails,Department,Resource,DoctorDetails
# Register your models here.

admin.site.register(HospitalDetails)
admin.site.register(Department)
admin.site.register(Resource)
admin.site.register(DoctorDetails)