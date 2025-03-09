from django.http import JsonResponse
from django.shortcuts import render

alumnos = [
    {"nombre": "Andrea Mendoza", "matricula": "18001354"},
    {"nombre": "Carlos May", "matricula": "18001347"},
    {"nombre": "Fernando Joachin", "matricula": "18000621"},
    {"nombre": "Valentina Ortiz", "matricula": "17003931"},
    {"nombre": "José Leo", "matricula": "21216389"}
]

profesores = [
    {"nombre": "Dra. Prof. Andrea Mendoza", "numeroEmpleado": "P002"},
    {"nombre": "Dr. Ing. Carlos May ", "numeroEmpleado": "P007"},
    {"nombre": "Per. Fernando Joachin", "numeroEmpleado": "P003"},
    {"nombre": "Per. Valentina Ortiz", "numeroEmpleado": "P004"},
    {"nombre": "UwU. José Leo", "numeroEmpleado": "P004"}
]

def get_alumnos(request):
    return JsonResponse({"alumnos": alumnos})

def get_profesores(request):
    return JsonResponse({"profesores": profesores})

def index(request):
    return render(request, 'index.html')
