# Generated by Django 4.0.4 on 2024-05-09 02:22

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hospitalapp', '0002_doctordetails'),
    ]

    operations = [
        migrations.AddField(
            model_name='doctordetails',
            name='password',
            field=models.CharField(default='', max_length=200),
        ),
        migrations.AddField(
            model_name='doctordetails',
            name='username',
            field=models.CharField(default='', max_length=200),
        ),
    ]
