from django.conf.urls.defaults import patterns, url
from django.contrib import admin

urlpatterns = patterns('catalogo.apps.home.views',
	url(r'^$','index_view', name = 'vista_principal'),
	url(r'^about/$', 'about_view', name ='vista_about'),
	url(r'^cosmeticos/page/(?P<pagina>.*)/$', 'cosmetics_view', name = 'vista_cosmeticos'),
    url(r'^contacto/$','contact_view', name = 'vista_contacto'),
	url(r'^login/$', 'login_view', name = 'vista_login'),
	url(r'^logout/$', 'logout_view', name = 'vista_logout'),
	url(r'^cosmetico/(?P<id_cosm>.*)/$', 'single_cosmetic_view', name = 'vista_single_cosmetico'),

)