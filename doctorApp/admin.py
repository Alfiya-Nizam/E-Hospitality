from django.contrib import admin
from .models import TreatmentPlan,PrescriptionTable

# Register your models here.
admin.site.register(TreatmentPlan)
admin.site.register(PrescriptionTable)