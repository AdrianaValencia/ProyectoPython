from django.conf.urls.defaults import patterns,url

urlpatterns = patterns('catalogo.apps.Cosmetics.views',
		url(r'^edit/cosmetico/(?P<id_cosm>.*)/$', 'edit_cosmetics_view', name = 'vista_editar_cosmetico'),

		url(r'^add/cosmetic/$','add_cosmetic_view',name = 'vista_agregar_cosmetico'),
		
)
