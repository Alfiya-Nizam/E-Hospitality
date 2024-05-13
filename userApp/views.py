from django.shortcuts import render,redirect
from .models import UserRegister,loginTable,Appointment
from hospitalapp.models import Department,DoctorDetails
from doctorApp.models import TreatmentPlan
from django.contrib import messages
from django.contrib.auth import logout
from django.core.exceptions import ObjectDoesNotExist
import stripe
from django.conf import settings
from django.urls import reverse
# Create your views here.

def UserRegistration(request):
    if request.method == 'POST':
        userprofile = UserRegister(
            name=request.POST.get('name', ''),
            address=request.POST.get('address', ''),
            place=request.POST.get('place', ''),
            district=request.POST.get('district', ''),
            state=request.POST.get('state', ''),
            pincode=request.POST.get('pincode', ''),
            phone=request.POST.get('phone', ''),
            email=request.POST.get('email', ''),
            username=request.POST.get('username', ''),
            password=request.POST.get('password', ''),
            password2=request.POST.get('password1', '')
        )

        login_table = loginTable(
            username=request.POST.get('username', ''),
            password=request.POST.get('password', ''),
            password2=request.POST.get('password1', ''),
            type='user'
        )

        if userprofile.password == userprofile.password2:
            userprofile.save()
            login_table.save()
            messages.success(request, 'Registration successful')
            return redirect('login')
        else:
            messages.error(request, 'Passwords do not match')
            return redirect('userRegister')

    return render(request, 'user/userRegister.html')


def loginPages(request):
    if request.method=='POST':
        username=request.POST['username']
        password=request.POST['password']
        user=loginTable.objects.filter(username=username,password=password,type='user,admin,doctor').exists()
        try:
            if user is not None:
                user_details=loginTable.objects.get(username=username,password=password)
                user_name=user_details.username
                type=user_details.type
                if type=='user':
                    request.session['username']=user_name
                    return redirect('userHome')
                
                elif type=='admin':
                    request.session['username']=user_name
                    return redirect('adminHome') 
                    
                elif type=='doctor':
                    request.session['username']=user_name
                    return redirect('doctorHome') 
            else:
                messages.error(request,'invalid username or password')
        except:
            messages.error(request,'invalid role')
    return render(request,'login.html')    


def logOut(request):
    logout(request)
    return redirect('login')
def userHome(request):
    user_name=request.session['username']
    return render(request,'user/userHome.html',{'user_name':user_name})

def userRegister(request):
    return render(request,'user/userRegister.html')

def CreateUserAppointment(request):
    departments = Department.objects.all()
    doctors = DoctorDetails.objects.all()

    if request.method == 'POST':
        card_id = request.POST.get('card_id')
        name = request.POST.get('name')
        selected_doctor_id = request.POST.get('doctor')
        selected_doctor = DoctorDetails.objects.get(pk=selected_doctor_id)
        selected_department_id = request.POST.get('department')
        selected_department = Department.objects.get(pk=selected_department_id)
        appointment_date = request.POST.get('appointment_date')
        appointment_time = request.POST.get('appointment_time')
        problem = request.POST.get('problem')

        # Create the AppointmentDetails instance
        appointment = Appointment.objects.create(
            card_id=card_id,
            name=name,
            doctor=selected_doctor,
            department=selected_department,
            appointment_date=appointment_date,
            appointment_time=appointment_time,
            problem=problem,
            status='pending'
        )
        
        # No need to set status here as it defaults to 'pending'

        # Optionally, you can add a success message
        messages.success(request, 'Appointment created successfully')

        # Redirect or render a response
        # return redirect('appointment_list')  # Example redirect to appointment list
        # Or render a success page or return to the same page
        # return render(request, 'success.html')

    return render(request, 'user/userAppointment.html', {'departments': departments, 'doctors': doctors})

def viewBooking(request):

    appointments = Appointment.objects.filter()
    return render(request, 'user/userViewBooking.html', {'appointments': appointments})

def deleteview(request,appointment_id):
    appointment=Appointment.objects.get(id=appointment_id)
    if request.method=='POST':
        appointment.delete()
        return redirect('userViewBooking')
    return render(request,'user/deleteview.html',{'appointment':appointment})


def updateBooking(request,book_id):
    appointment=Appointment.objects.get(id=book_id)
    if request.method=='POST':
        appointment_date=request.POST.get('appointment_date')
        appointment_time=request.POST.get('appointment_time')
        appointment.appointment_date=appointment_date
        appointment.appointment_time=appointment_time
        appointment.save()
        return redirect('userViewBooking')
    return render(request,'user/update.html',{'appointment':appointment})
      
def ViewTreatmentPlan(request):
    treatmentPlan = TreatmentPlan.objects.all()
    return render(request, 'user/UserViewPlan.html', {'treatmentPlan': treatmentPlan})      



def create_checkout_session(request):
    
    # Define the default price in INR (200 INR in this case)
    default_price_inr = 200 * 100  # Stripe expects the amount in cents

    if request.method == 'POST':
        # Set up Stripe with your secret key
        stripe.api_key = settings.STRIPE_SECRET_KEY

        # Create a checkout session with the default price
        checkout_session = stripe.checkout.Session.create(
            payment_method_types=['card'],
            line_items=[
                {
                    'price_data': {
                        'currency': 'INR',
                        'unit_amount': default_price_inr,
                        'product_data': {
                            'name': 'Product Name'  # Name of your product
                        },
                    },
                    'quantity': 1  # Quantity is 1 for a single item
                }
            ],
            mode='payment',
            success_url=request.build_absolute_uri(reverse('success')),
            cancel_url=request.build_absolute_uri(reverse('cancel'))
        )

        # Redirect the user to the checkout session URL
        return redirect(checkout_session.url, code=303)





               
                   

def success(request):
    return render(request, 'user/success.html')

def cancel(request):
    return render(request,'user/cancel.html')

def index(request):
    return render(request,'user/index.html')
