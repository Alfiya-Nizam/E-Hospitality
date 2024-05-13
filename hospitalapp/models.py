from django.db import models

# Create your models here.

class HospitalDetails(models.Model):
    name = models.CharField(max_length=100)
    address = models.CharField(max_length=255)
    place = models.CharField(max_length=100)
    state = models.CharField(max_length=100)
    country = models.CharField(max_length=100)
    postal_code = models.CharField(max_length=20)
    phone = models.CharField(max_length=20)
    email = models.EmailField(max_length=100)
    image=models.ImageField(upload_to='pictures')
  

    def __str__(self):
        return '{}'.format(self.name)
       
    
class Department(models.Model):
    name = models.CharField(max_length=100)
    def __str__(self):
       return '{}'.format(self.name)
    
class Resource(models.Model):
    name = models.CharField(max_length=100)
    description = models.CharField(max_length=255)
   
    def __str__(self):
        return '{}'.format(self.name) 
    
class DoctorDetails(models.Model):
    name = models.CharField(max_length=100)
    address = models.CharField(max_length=255)
    place = models.CharField(max_length=100)
    state = models.CharField(max_length=100)
    country = models.CharField(max_length=100)
    phone = models.CharField(max_length=20)
    qualification = models.CharField(max_length=100)
    experience = models.CharField(max_length=100)
    department = models.ForeignKey('Department', on_delete=models.CASCADE)  # ForeignKey relationship
    email = models.EmailField(max_length=100)
    image = models.ImageField(upload_to='picture')
    username=models.CharField(max_length=200,default='')
    password=models.CharField(max_length=200,default='')
    password2=models.CharField(max_length=200,default='')

    def __str__(self):
        return '{}'.format(self.name) 
    
# class UserAppointment(models.Model):
#    class AppointmentDetails(models.Model):
#     card_id = models.CharField(max_length=100)
#     name = models.CharField(max_length=100)
#     doctor = models.ForeignKey(DoctorDetails, on_delete=models.CASCADE)
#     department = models.ForeignKey(Department, on_delete=models.CASCADE)  # Add this field
#     appointment_date = models.DateField()
#     appointment_time = models.CharField(max_length=100)
#     problem = models.TextField()
#     status = models.CharField(max_length=100, default='pending')

#     def __str__(self):
#         return f"Appointment for {self.name} with Dr. {self.doctor.name} on {self.appointment_date} at {self.appointment_time} (Status: {self.status})"    
    
    
