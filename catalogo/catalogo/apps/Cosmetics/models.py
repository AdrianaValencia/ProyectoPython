from django.db import models

# Create your models here.


class Cosmeticos(models.Model):
	def url(self, filename):
		ruta = "MultimediaData/Cosmeticos/%s/%s"%(self.nombre, str(filename))
		return ruta

	nombre			= models.CharField(max_length = 100)
	descripcion 	= models.TextField(max_length = 500)
	status			= models.BooleanField(default = True) 
	categoria		= models.CharField(max_length = 100)
	ingredientes    = models.TextField(max_length = 500)
	tipopiel		= models.CharField(max_length = 100)
	tipotratamiento = models.CharField(max_length = 100)
	zonacorporal    = models.CharField(max_length = 100)
	imagen			= models.ImageField(upload_to = url, null = True, blank = True)
	def __unicode__(self):
		return self.nombre

		
class Categoria(models.Model):

	tipoproducto   	= models.CharField(max_length = 100)
	nombrecategoria			= models.CharField(max_length = 100)


	def __unicode__(self):
		return self.tipoproducto

class TipoPiel(models.Model):

	tipopiel 		= models.CharField(max_length = 100)

	def __unicode__(self):
		return self.tipopiel

class TipoTratamiento(models.Model):

	nombretratamiento = models.CharField(max_length = 100)

	def __unicode__(self):
		return self.nombretratamiento

class ZonaCorporal(models.Model):

	nombrezona		= models.CharField(max_length = 100)

	def __unicode__(self):
		return self.nombrezona