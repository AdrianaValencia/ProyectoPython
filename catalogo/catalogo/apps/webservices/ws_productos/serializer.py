from rest_framework import serializers
from catalogo.apps.Cosmetics.models import Cosmeticos, Categoria, TipoPiel

class cosmetico_serializer(serializers.HyperlinkedModelSerializer):
	class Meta:
		model = Cosmeticos
		fields = ('url','descripcion','status','nombre','imagen',)

class categoria_serializer(serializers.HyperlinkedModelSerializer):
	class Meta:
		model = Categoria
		fields = ('url','nombrecategoria',)

class TipoPiel_serializer(serializers.HyperlinkedModelSerializer):
	class Meta:
		model = TipoPiel
		fields = ('url','tipopiel',)	

#https://pypi.python.org/pypi/djangorestframework/2.3.14