#vistas de la aplicacion ventas
from django.shortcuts import render_to_response
from django.template import RequestContext
from catalogo.apps.Cosmetics.forms import add_cosmetic_form
from catalogo.apps.Cosmetics.models import Cosmeticos
from django.http import HttpResponseRedirect

#def add_cosmetic_view(request):
#	if request.method =="POST": # si es POST
#		formulario = add_cosmetic_form(request.POST)
#		informacion = "inicializando"
#		if formulario.is_valid():
#			nombre		= formulario.cleaned_data['nombre']
#			descripcion = formulario.cleaned_data['descripcion']
#			c = Cosmeticos()
#			c.nombre = nombre
#			c.descripcion = descripcion
#			c.status = True
#			c.categoria = categoria
#			c.precio = precio
#			c.ingredientes = ingredientes
#			c.tipopiel = tipopiel
#			c.tipotratamiento = tipotratamiento
#			c.zonacorporal =zonacorporal
#			
#			c.save() # Guarda la informacion
#			informacion = "se guardo satisfactoriamente"
#		else:
#			info = "informacion con datos incorrectos"
#		formulario = add_cosmetic_form()
#		ctx = {'form':formulario, 'info': informacion}
#		return render_to_response('ventas/add_cosmetico.html', ctx,context_instance = RequestContext(request))
#	else: # si es GET
#		formulario = add_cosmetic_form()
#		ctx = {'form':formulario}
#		return render_to_response('ventas/add_cosmetico.html', ctx,context_instance = RequestContext (request))
def add_cosmetic_view(request):
	info = "inicializando"
	if request.method == "POST":
		formulario = add_cosmetic_form(request.POST, request.FILES)
		if formulario.is_valid():
			add = formulario.save(commit = False)
			add.status = True
			add.save() #guarda la informacion
			formulario.save_m2m() #guarda las relaciones ManyToMany
			info = "Guaradado satisfactoriamente"
			return HttpResponseRedirect ('/cosmetico/%s' %add.id)

	else:
		formulario = add_cosmetic_form()
	ctx = {'form':formulario, 'informacion':info}
	return render_to_response('Cosmetics/add_cosmetico.html', ctx, context_instance = RequestContext(request))

#def edit_cosmetics_view(request, id_cosm):
#	c = Cosmeticos.objects.get(id = id_cosm)

#	if request.method == "POST":
#		formulario = add_cosmetic_form(request.POST, request.FILES)
#		if formulario.is_valid():
#			nombre		= formulario.cleaned_data['nombre']
#			descripcion = formulario.cleaned_data['descripcion']
#			imagen		= formulario.cleaned_data['imagen']
#			precio		= formulario.cleaned_data['precio']
#			stock		= formulario.cleaned_data['stock']
#			c.nombre = nombre
#			c.descripcion = descripcion
#			c.status = True
#			if imagen:
#				c.imagen = imagen
#			c.precio = precio
#			c.stock = stock
#			c.save() # Guarda la informacion
#			informacion = "se guardo satisfactoriamente"
#			return HttpResponseRedirect ('/cosmetico/%s'%c.id)

#	if request.method == "GET":
#		formulario = add_cosmetic_form(initial = {
#										'nombre' : c.nombre,
#										'descripcion' : c.descripcion,
#										'precio' : c.precio,
#										'stock' : c.stock,  })
#		ctx = {'form' :formulario, 'cosmetico' :c}
#		return render_to_response('Cosmetics/edit_cosmetico.html',ctx ,context_instance = RequestContext(request))
def edit_cosmetics_view(request, id_cosm):
	info = ""
	cosm = Cosmeticos.objects.get(pk = id_cosm)
	if request.method == "POST":
		formulario = add_cosmetic_form(request.POST, request.FILES, instance = cosm)
		if formulario.is_valid():
			edit_cosm = formulario.save(commit = False)
			formulario.save_m2m()
			edit_cosm.status = True
			edit_cosm.save()
			info = "Guardado satisfactoriamente"
			return HttpResponseRedirect('/cosmetico/%s'% edit_cosm.id)

	else:
		formulario = add_cosmetic_form(instance = cosm)

	ctx = {'form': formulario, 'informacion': info}
	return render_to_response('Cosmetics/edit_cosmetico.html', ctx,context_instance = RequestContext(request))			


