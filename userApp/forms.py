from django import forms
from .models import UserRegister,loginTable,Appointment

class UserForm(forms.ModelForm):
    class Meta:
        model=UserRegister
        fields=['name']

class UserForm(forms.ModelForm):
    class Meta:
        model=loginTable
        fields=['username']

class AppointmentForm(forms.ModelForm):
    class Meta:
        model=Appointment
        fields=['name']        