from django.shortcuts import render,get_object_or_404
from userApp.models import Appointment,UserRegister
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from .models import TreatmentPlan,PrescriptionTable

# Create your views here.

def doctorHome(request):
    user_name=request.session['username']
    return render(request,'doctor/doctorHome.html',{'user_name':user_name})


# def doctor_appointment_details(request, doctor_id):
#     # Fetch appointment details for the specified doctor ID
#     appointments = Appointment.objects.filter(doctor_id=doctor_id)
    
#     # Pass the appointments to the template for rendering
#     return render(request, 'doctor/doctor_appointment_details.html', {'appointments': appointments})

# @login_required
# def view_appointments(request):
#     appointments = Appointment.objects.filter(doctor=request.user)
#     context = {
#         'appointments': appointments,
#     }
#     return render(request, 'doctor/appointment_list.html', context)


def view_appointments(request):
    appointments = Appointment.objects.all()
    return render(request, 'doctor/appointment_list.html', {'appointments': appointments})

def detailsview(request):
    udetails = UserRegister.objects.all()
    return render(request, 'doctor/userHistory.html', {'udetails': udetails})

def medicaldetailsview(request,user_id):
    medical=Appointment.objects.get(id=user_id)
    return render(request,'doctor/MedicalHistory.html',{'medical':medical})

# def treatmentPlan(request):
#     return render(request,'doctor/treatmentPlan.html')

def treatmentPlan(request):
    if request.method == 'POST':
        plan = request.POST.get('plan')

        treatment = TreatmentPlan.objects.create(
            plan=plan
        ) 
    return render(request,'doctor/treatmentPlan.html')

def Prescription(request):
    if request.method == 'POST':
        name = request.POST.get('name')

        prescribe = PrescriptionTable.objects.create(
            name=name
        ) 
    return render(request,'doctor/Prescription.html')




