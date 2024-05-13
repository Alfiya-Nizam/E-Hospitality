from django.urls import path
from doctorApp import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns=[
    path('doctorHome/', views.doctorHome, name='doctorHome'),
    path('appointment_list/',views.view_appointments,name='appointment_list'),
    path('userHistory/', views.detailsview, name='details'),
    path('MedicalHistory/<int:user_id>/', views.medicaldetailsview, name='medical'),
    path('Prescription/',views.Prescription,name='Prescription'),
  
  
    # path('doctor_appointment_details/<int:doctor_id>/', views.doctor_appointment_details, name='doctor_appointment_details'),
    
    

]
if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT) 