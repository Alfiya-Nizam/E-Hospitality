from django.db import models

# Create your models here.
class TreatmentPlan(models.Model):
    plan = models.CharField(max_length=100)
    
    def __str__(self):
        return '{}'.format(self.plan)
    
class PrescriptionTable(models.Model):
    name = models.CharField(max_length=100)
    
    def __str__(self):
        return '{}'.format(self.name)    