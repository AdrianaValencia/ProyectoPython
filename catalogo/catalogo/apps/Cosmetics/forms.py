from django import forms
from catalogo.apps.Cosmetics.models import Cosmeticos, Categoria

#class add_cosmetic_form(forms.Form):
#	nombre			= forms.CharField(widget = forms.TextInput())
#	descripcion 	= forms.CharField(widget = forms.Textarea())
#	categoria		= forms.CharField(widget = forms.TextInput())
#	precio			= forms.CharField(widget = forms.TextInput())
#	ingredientes	= forms.CharField(widget = forms.Textarea())
#	tipopiel		= forms.CharField(widget = forms.TextInput())
#	tipotratamiento = forms.CharField(widget = forms.TextInput())
#	zonacorporal 	= forms.CharField(widget = forms.TextInput())

#	def clean (self):
#		return self.cleaned_data

class add_cosmetic_form(forms.ModelForm):
	class Meta:
		model = Cosmeticos
		
