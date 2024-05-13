from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns=[
    path('userRegister/', views.UserRegistration, name='userRegister'),
    path('login',views.loginPages,name='login'),
    # path('login/',views.loginPages,name='login'),
    path('logout/',views.logOut,name='logout'),
    path('userHome/',views.userHome,name='userHome'),
    path('userAppointment/', views.CreateUserAppointment, name='userAppointment'),
    path('userViewBooking/', views.viewBooking, name='userViewBooking'),
    path('deleteview/<int:appointment_id>/', views.deleteview, name='delete'),
    path('update/<int:appointment_id>/', views.updateBooking, name='update'),
    path('UserViewPlan/', views.ViewTreatmentPlan, name='UserViewPlan'),
    path('create_checkout_session/',views.create_checkout_session,name='create_checkout_session'),
    path('success/',views.success,name='success'),
    path('cancel/',views.cancel,name='cancel'),
    path('',views.index,name='index'),
    
  
    

]
if settings.DEBUG:
    urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT) 