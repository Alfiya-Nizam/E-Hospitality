from django.shortcuts import render,redirect,get_object_or_404
from .models import HospitalDetails,Department,Resource,DoctorDetails
from userApp.models import loginTable,UserRegister,Appointment
from django.http import HttpResponse
from django.contrib import messages
from django.contrib.auth.models import User
# Create your views here.
def CreateHospital(request):
    if request.method == 'POST':
        name = request.POST.get('name')
        address = request.POST.get('address')
        place = request.POST.get('place') 
        state = request.POST.get('state')
        country = request.POST.get('country')
        postal_code = request.POST.get('postal_code')
        phone = request.POST.get('phone')
        email = request.POST.get('email')
        image = request.FILES.get('image')
  
        profile = HospitalDetails.objects.create(
            name=name,
            address=address,
            place=place,
            state=state,
            country=country,
            postal_code=postal_code,
            phone=phone,
            email=email,
            image=image
        )
     
    return render(request, 'admin/hospital.html')  

def CreateDepartment(request):
    if request.method == 'POST':
        name = request.POST.get('name')

        department = Department.objects.create(
            name=name
        )    
    return render(request, 'admin/department.html')  

def CreateResource(request):
    if request.method == 'POST':
        name = request.POST.get('name')
        description = request.POST.get('description')
        

        resource = Resource.objects.create(
            name=name,
            description=description
        )    
    return render(request, 'admin/resource.html')  


def CreateDoctor(request):
    departments = Department.objects.all()

    if request.method == 'POST':
        # Retrieve form data
        name = request.POST.get('name')
        address = request.POST.get('address')
        place = request.POST.get('place') 
        state = request.POST.get('state')
        country = request.POST.get('country')
        phone = request.POST.get('phone')
        qualification = request.POST.get('qualification')
        experience = request.POST.get('experience')
        selected_department_id = request.POST.get('department')
        selected_department = Department.objects.get(pk=selected_department_id)
        email = request.POST.get('email')
        image = request.FILES.get('image')
        username = request.POST.get('username')
        password = request.POST.get('password')
        password2 = request.POST.get('password1')

        # Create DoctorDetails instance
        profile = DoctorDetails.objects.create(
            name=name,
            address=address,
            place=place,
            state=state,
            country=country,
            phone=phone,
            qualification=qualification,
            experience=experience,
            department=selected_department,
            email=email,
            image=image,
            username=username,
            password=password,
            password2=password2
        )

        login_table = loginTable(
            username=request.POST.get('username', ''),
            password=request.POST.get('password', ''),
            password2=request.POST.get('password1', ''),
            type='doctor'
        )

        if profile.password == profile.password2:
            profile.save()
            login_table.save()
            messages.success(request, 'Registration successful')
            return redirect('login')
        else:
            messages.error(request, 'Passwords do not match')
            return redirect('userRegister')
    return render(request, 'admin/AddDoctor.html', {'departments': departments}) 

def userView(request):
    profiles = UserRegister.objects.all()
    return render(request, 'admin/viewUser.html', {'profiles': profiles})

def adminHome(request):
    user_name=request.session['username']
    return render(request,'admin/adminHome.html',{'user_name':user_name})


# def login(request):
#     return render(request,'login.html')

def UserViewDoctor(request):
    profiles = DoctorDetails.objects.all()
    return render(request, 'user/UserViewDoctor.html', {'profiles': profiles})

def AdminAppointmentView(request):
    appointments = Appointment.objects.all()
    return render(request, 'admin/AdminViewAppointment.html', {'appointments': appointments})

def accept_appointment_view(request, appointment_id):
    appointment = get_object_or_404(Appointment, id=appointment_id)
    appointment.status = 'confirmed'  # Update status to 'confirmed' for accepted appointment
    appointment.save()
    return redirect('AdminViewAppointment')  # Redirect to admin view appointment page after accepting

def reject_appointment_view(request, appointment_id):
    appointment = get_object_or_404(Appointment, id=appointment_id)
    appointment.status = 'cancelled'  # Update status to 'cancelled' for rejected appointment
    appointment.save()
    return redirect('AdminViewAppointment')  # Redirect to admin view appointment page after rejecting