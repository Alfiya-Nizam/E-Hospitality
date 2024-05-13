from django.db import models
from hospitalapp.models import Department,DoctorDetails

# Create your models here.
class UserRegister(models.Model):
    name=models.CharField(max_length=200)
    address=models.CharField(max_length=5000)
    place=models.CharField(max_length=200)
    district=models.CharField(max_length=200)
    state=models.CharField(max_length=200)
    pincode=models.CharField(max_length=200)
    phone=models.CharField(max_length=200)
    email=models.EmailField(max_length=200)
    username=models.CharField(max_length=200)
    password=models.CharField(max_length=200)
    password2 = models.CharField(max_length=200, default='') 

    def __str__(self):
        return '{}'.format(self.name)
    
class loginTable(models.Model):
    username=models.CharField(max_length=200)
    password=models.CharField(max_length=200)
    password2 = models.CharField(max_length=200, default='')  # Example default value

    type=models.CharField(max_length=200)

    def __str__(self):
        return '{}'.format(self.username)    


class Appointment(models.Model):
    STATUS_CHOICES = (
        ('pending', 'Pending'),
        ('confirmed', 'Confirmed'),
        ('cancelled', 'Cancelled'),
    )

    card_id = models.CharField(max_length=100)
    name = models.CharField(max_length=100)
    doctor = models.ForeignKey(DoctorDetails, on_delete=models.CASCADE)
    department = models.ForeignKey(Department, on_delete=models.CASCADE)
    appointment_date = models.DateField()
    appointment_time = models.CharField(max_length=255)
    problem = models.CharField(max_length=255)
    status = models.CharField(max_length=20, choices=STATUS_CHOICES, default='pending')

    def __str__(self):
        return f"Appointment for {self.name} with Dr. {self.doctor.name} on {self.appointment_date} at {self.appointment_time} (Status: {self.status})"

    