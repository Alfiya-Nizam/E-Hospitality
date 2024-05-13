from django import forms
from .models import HospitalDetails,Department,Resource,DoctorDetails,UserAppointment

class LocationForm(forms.ModelForm):
    class Meta:
        model=HospitalDetails
        fields=['name']

class DepartmentForm(forms.ModelForm):
    class Meta:
        model=Department
        fields=['name']

class ResourceForm(forms.ModelForm):
    class Meta:
        model=Resource
        fields=['name']      

class DoctorForm(forms.ModelForm):
    class Meta:
        model=DoctorDetails
        fields=['name']       

# class AppointmentForm(forms.ModelForm):
#     class Meta:
#         model=DoctorDetails
#         fields=['name']               