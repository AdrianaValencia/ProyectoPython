# Create your views here.
from django.http import HttpResponse
from catalogo.apps.Cosmetics.models import *
from django.core import serializers


def ws_productos_view(request):
	data = serializers.serialize("json",Cosmetico.objects.filter(status = True))
	return HttpResponse(data, mimetype = 'application/json')


from .serializer import cosmetico_serializer, categoria_serializer, TipoPiel_serializer
from rest_framework import viewsets

class cosmetico_viewset(viewsets.ModelViewSet):
	queryset = Cosmeticos.objects.all()
	serializer_class = cosmetico_serializer

class categoria_viewset (viewsets.ModelViewSet):
	queryset = Categoria.objects.all()
	serializer_class = categoria_serializer

class tipopiel_viewset(viewsets.ModelViewSet):
	queryset = TipoPiel.objects.all()
	serializer_class = TipoPiel_serializer