from django.urls import path
from hospitalapp import views 
# from . import views
from django.conf import settings
from django.conf.urls.static import static


urlpatterns=[
    path('hospital/',views.CreateHospital,name='hospital'),
    path('department/',views.CreateDepartment,name='department'),
    path('resource/',views.CreateResource,name='resource'),
    path('AddDoctor/',views.CreateDoctor,name='AddDoctor'),
    path('userView/',views.userView,name='userView'),
    path('adminHome/',views.adminHome,name='adminHome'),
    path('UserViewDoctor/',views.UserViewDoctor,name='UserViewDoctor'),
    path('AdminViewAppointment/',views.AdminAppointmentView,name='AdminViewAppointment'),
    path('accept_appointment/<int:appointment_id>/', views.accept_appointment_view, name='accept_appointment'),
    path('reject_appointment/<int:appointment_id>/', views.reject_appointment_view, name='reject_appointment'),

]
if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)