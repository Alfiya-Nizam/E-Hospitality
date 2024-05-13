from django import forms
from .models import TreatmentPlan,PrescriptionTable

class TreatmentForm(forms.ModelForm):
    class Meta:
        model=TreatmentPlan
        fields=['plan']

class PrescriptionForm(forms.ModelForm):
    class Meta:
        model=PrescriptionTable
        fields=['name']