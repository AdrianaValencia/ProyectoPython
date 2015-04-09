-- phpMyAdmin SQL Dump
-- version 2.11.4
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 13-03-2015 a las 19:15:57
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de datos: `catalogo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `auth_group`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_5f412f9a` (`group_id`),
  KEY `auth_group_permissions_83d7f98b` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `auth_group_permissions`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_37ef4eb4` (`content_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Volcar la base de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add content type', 4, 'add_contenttype'),
(11, 'Can change content type', 4, 'change_contenttype'),
(12, 'Can delete content type', 4, 'delete_contenttype'),
(13, 'Can add session', 5, 'add_session'),
(14, 'Can change session', 5, 'change_session'),
(15, 'Can delete session', 5, 'delete_session'),
(16, 'Can add site', 6, 'add_site'),
(17, 'Can change site', 6, 'change_site'),
(18, 'Can delete site', 6, 'delete_site'),
(19, 'Can add log entry', 7, 'add_logentry'),
(20, 'Can change log entry', 7, 'change_logentry'),
(21, 'Can delete log entry', 7, 'delete_logentry'),
(22, 'Can add cosmeticos', 8, 'add_cosmeticos'),
(23, 'Can change cosmeticos', 8, 'change_cosmeticos'),
(24, 'Can delete cosmeticos', 8, 'delete_cosmeticos'),
(25, 'Can add categoria', 9, 'add_categoria'),
(26, 'Can change categoria', 9, 'change_categoria'),
(27, 'Can delete categoria', 9, 'delete_categoria'),
(28, 'Can add tipo piel', 10, 'add_tipopiel'),
(29, 'Can change tipo piel', 10, 'change_tipopiel'),
(30, 'Can delete tipo piel', 10, 'delete_tipopiel'),
(31, 'Can add tipo tratamiento', 11, 'add_tipotratamiento'),
(32, 'Can change tipo tratamiento', 11, 'change_tipotratamiento'),
(33, 'Can delete tipo tratamiento', 11, 'delete_tipotratamiento'),
(34, 'Can add zona corporal', 12, 'add_zonacorporal'),
(35, 'Can change zona corporal', 12, 'change_zonacorporal'),
(36, 'Can delete zona corporal', 12, 'delete_zonacorporal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL auto_increment,
  `password` varchar(128) NOT NULL,
  `last_login` datetime NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$10000$eAk6sUWeyAAC$R+uBM0fZuNSULC5a2Ruv1q+Pcr5Jv8zAIs4ZJuowJl4=', '2015-03-13 22:52:41', 1, 'admin', '', '', '', 1, 1, '2015-03-12 23:45:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_6340c63c` (`user_id`),
  KEY `auth_user_groups_5f412f9a` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `auth_user_groups`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_6340c63c` (`user_id`),
  KEY `auth_user_user_permissions_83d7f98b` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `auth_user_user_permissions`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cosmetics_categoria`
--

DROP TABLE IF EXISTS `cosmetics_categoria`;
CREATE TABLE IF NOT EXISTS `cosmetics_categoria` (
  `id` int(11) NOT NULL auto_increment,
  `tipoproducto` varchar(100) NOT NULL,
  `nombrecategoria` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `cosmetics_categoria`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cosmetics_cosmeticos`
--

DROP TABLE IF EXISTS `cosmetics_cosmeticos`;
CREATE TABLE IF NOT EXISTS `cosmetics_cosmeticos` (
  `id` int(11) NOT NULL auto_increment,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext NOT NULL,
  `status` tinyint(1) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `ingredientes` longtext NOT NULL,
  `tipopiel` varchar(100) NOT NULL,
  `tipotratamiento` varchar(100) NOT NULL,
  `zonacorporal` varchar(100) NOT NULL,
  `imagen` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Volcar la base de datos para la tabla `cosmetics_cosmeticos`
--

INSERT INTO `cosmetics_cosmeticos` (`id`, `nombre`, `descripcion`, `status`, `categoria`, `ingredientes`, `tipopiel`, `tipotratamiento`, `zonacorporal`, `imagen`) VALUES
(8, 'Máscara Hidratante', 'Contiene extracto de Noni, vitaminas y minerales para restaurar la humedad esencial de la piel. Esta máscara fórmula única calmar limpia, hidrata y protege la piel.', 1, 'Hidratantes', 'Aloe barbadensis (Aloe Vera) jugo de la hoja *, Rosa damascena (Rose) de agua *, glicerina ^, Caolín, Olivoyl proteína de trigo hidrolizada, alcohol cetearílico, gliceril oleato, estearato de glicerina, CI 77891 (dióxido de titanio) y sílice, Helianthus annuus (girasol ) Oil *, Rosa eglentaria (Rosa Mosqueta) Oil *, sodio PCA, trehalosa, glicerina caprilato, Morinda citrifolia (Noni) Extracto *, sodio hialurónico, Persea gratissima (Avocado) Oil *, d-alfa acetato de tocoferol (soja derivan Natural La vitamina E), Rosa damascena (Rose) Oil *, Santalum spicatum (sándalo) Oil *, Cedrus atlantica (Cedro) aceite *', 'Piel Seca', 'Limpieza', 'rostro', 'MultimediaData/Cosmeticos/Máscara Hidratante/hydrating-mask-75.jpg'),
(2, 'Crema Limpiadora', 'Enriquecido con poderosos beneficios de Noni, Extracto de Aloe y sándalo para limpiar suavemente la suciedad y la mugre mientras que ayuda a nutrir y revitalizar la piel seca y deshidratada.', 1, 'Limpiadores', 'Matricaria chamomilla (recutita - Manzanilla) Extract *, Aloe barbadensis (Aloe Vera) jugo de la hoja *, Olivoyl proteína de trigo hidrolizada, alcohol cetearílico, gliceril oleato, estearato de glicerina, glicerina, Macadamia integrifolia (Macadamia) Aceite de semilla *, ácido esteárico, dicaprililéter , Morinda citrifolia (Noni) Extracto *, Persea gratissima (Avocado) Oil *, Rosa eglentaria (Rosa Mosqueta) Oil *, d-alfa acetato de tocoferol (soja derivado natural de la vitamina E), xantana Gum, bencilo alcohol, ácido deshidroacético, Citrus aurantium ssp.bergamia (bergamota) Oil *, Santalum spicatum (sándalo) Oil *, Citrus reticulata (Mandarín) Oil *, Citrus paraíso (pomelo) Oil *, Lavandula angustifolia (lavanda) Oil *, palmitato de ascorbilo, lecitina (OGM) *, hidróxido de potasio, ácido láctico, cloruro de sodio (solución de sal de mar macrobiótica), Beta caroteno, Olea europaea (olivo) Petróleo, Aqua (agua)', 'Todo tipo de piel', 'Limpieza', 'rostro', 'MultimediaData/Cosmeticos/Crema Limpiadora/cream-cleanser.jpg'),
(7, 'Crema Exfoliante', 'Crema Exfoliante contiene una mezcla única de cultivo biológico Harina de Avena y de bambú para pulir suavemente las células muertas de la piel de distancia, ayudando a revelar un cutis más suave más suave.', 1, 'Tratamientos', 'Matricaria chamomilla (recutita - manzanilla) *, Aloe barbadensis (Aloe Vera) jugo de la hoja *, Olivoyl proteína de trigo hidrolizada, alcohol cetearílico, gliceril oleato, estearato de glicerina, glicerina, Macadamia integrifolia (Macadamia) Aceite de semilla *, Bambusa arundinacea (Bambú) Tallo Extracto, ácido esteárico, Avena sativa (avena) Kernel Harina *, Morinda citrifolia (Noni) Extracto *, dicaprililéter, Persea gratissima (Avocado) Oil *, Rosa eglentaria (Rosa Mosqueta) Oil *, d-alfa acetato de tocoferol (soja derivado natural de vitamina E), goma xantana, alcohol bencílico, ácido deshidroacético, Santalum spicatum (sándalo) aceite *, Citrus reticulata (Mandarín) aceite *, Citrus paradisi (pomelo) aceite *, Citrus aurantifolia (lima) aceite *, Citrus aurantium ssp .bergamia (bergamota) Oil *, palmitato de ascorbilo, lecitina (OGM) *, hidróxido de potasio, ácido láctico, cloruro de sodio (solución de sal de mar macrobiótica), Beta caroteno, Olea europaea (olivo) Petróleo, Aqua (agua)', 'Todo tipo de piel', 'Exfoliante', 'rostro', 'MultimediaData/Cosmeticos/Crema Exfoliante/exfoliating-cream_1.jpg'),
(5, 'Espuma Limpiadora', 'La espuma limpiadora es suave formulada para pieles grasas piel  mixta. Es natural y suave, libera la piel de impurezas. El Aloe Vera, Té Verde y sándalo protegen la piel de los radicales libres, dejando la piel fresca, revitalizada y limpio.', 1, 'Limpiadores', 'Camellia sinensis (té verde) *, Rosa centifolia (Rose) Extracto *, Aloe barbadensis (Aloe Vera) jugo de la hoja *, Coco-glucósido, sodio cocoil glutamato, glicerina, goma xantana, gliceril oleato, Morinda citrifolia (Noni) Extracto * , alcohol bencílico, ácido deshidroacético, Santalum spicatum (sándalo) Oil *, Cedrus atlantica (Cedro) Oil *, dicaprililéter, ácido láctico lecitina, cloruro de sodio (sal marina macrobiótica), Aqua (agua)', 'Todo tipo de piel', 'Limpieza', 'Cuerpo', 'MultimediaData/Cosmeticos/Espuma Limpiadora/foaming-cleanser_1.jpg'),
(6, 'Gel de baño esencial', 'Una deliciosa mezcla aromática de aceites esenciales de origen orgánico, Ylang Ylang, extracto de Noni, sándalo, rosa y pachulí. Libre de parabenos y irritantes de la piel', 1, 'Limpiadores', 'Camellia sinensis (té verde) *, Rosa Centifolia (Rose) Extracto *, Aloe barbadensis (Aloe Vera) Jugo de hoja *, decilglucósido, Coco-glucósido, glicerina, sodio cocoil glutamato, goma xantana, Morinda citrifolia (Noni) Extracto * , gliceril oleato, dicaprilo éter, ácido láctico, cloruro de sodio (sal del mar macrobiótica), alcohol bencílico, Santalum spicatum (sándalo) Aceite *. Cananga ordorata (Ylang Ylang) aceite *, Pogostemon cablin (Pachulí) Oil *, ácido deshidroacético, lecitina (OGM) *, Aqua (agua).', 'Todo tipo de piel', 'Limpieza', 'Cuerpo', 'MultimediaData/Cosmeticos/Gel de baño esencial/essential-body-wash_2.jpg'),
(9, 'Bálsamo de rejuvenecimiento para pies', 'Rejuvenecimiento para pies contiene extracto de Noni, calmante extractos vegetales, ácidos grasos esenciales y aceites esenciales refrescantes combinados para calmar, fresco y animar cansados, doloridos pies y los talones.', 1, 'Limpiadores', 'Aloe barbadensis (Aloe Vera) jugo de la hoja *, Lavandula angustifolia (lavanda) *, Camellia sinensis (té verde) *, Rosa centifolia (Rose) *, Hibiscus sabdariffa (Hibiscus) Extract *, proteína de trigo hidrolizada Olivoyl, alcohol cetearílico, gliceril oleato , estearato de glicerina, glicerina, Cocos nucifera (coco) aceite *, Helianthus annuus (girasol) aceite *, Macadamia integrifolia (Macadamia) aceite de semilla *, Morinda citrifolia (Noni) Extract *, trehalosa, alcohol bencílico, goma xantana, Persea gratissima (Avocado) Oil *, d-alfa acetato de tocoferol (soja deriva vitamina E Natural), Mentha piperita (hierbabuena) Oil *, palmitato de ascorbilo (vitamina C), Citrus sinensis (naranja) Oil *, lecitina (OGM) *, dehidroacético ácido, Citrus aurantium ssp.bergamia (bergamota) Oil *, ácido láctico, el hidróxido de potasio, Aqua (agua)', 'Todo tipo de piel', 'Relajaciòn', 'Pies', 'MultimediaData/Cosmeticos/Bálsamo de rejuvenecimiento para pies/rejuvenating-foot-balm_1.jpg'),
(10, 'Gel Crema Contorno de Ojos', 'Es una alta concentración de algas orgánicos (conocidos para impulsar la producción de colágeno) combinado con Noni, Extracto de Manzanilla, fucus y vitamina C y E ayudan a proteger y rejuvenecer el contorno de los ojos. Contiene Aloe Vera se enfríe y calmar, ojos hinchados cansados.', 1, 'Rejuvenecimiento', 'Matricaria chamomilla (recutita - Manzanilla) *, Fucus vesiculosus (fucus) Extracto *, Aloe barbadensis (Aloe Vera) jugo de la hoja *, Cetearil olivate, Sorbitan olivate, cetil palmitato, palmitato de sorbitán, glicerina, Morinda citrifolia (Noni fruta) Extracto *, Undaria pinnatifida (Wakame) Extracto *, caprilato de glicerilo, goma xantana, alcohol bencílico, carragenina, hialuronato de sodio, acetato de tocoferol d-alfa (soja deriva natural de vitamina E), ácido poliglutámico (natto Gum), ácido deshidroacético, palmitato de ascorbilo (vitamina C ), cloruro de sodio (sal del mar macrobiótica), hidróxido de potasio, Aqua (agua).', 'Todo tipo de piel', 'Anti-envejecimiento', 'Ojos', 'MultimediaData/Cosmeticos/Gel Crema Contorno de Ojos/recovery-eye-gel-cream_1.jpg'),
(11, 'Loción enriquecedora para el cuerpo', ' crema hidratante que proporciona la piel con alimento completo y protección. Orgánicamente crecido jojoba, extracto de Noni, manteca de cacao y Macadamia reintroducir los ácidos grasos esenciales en la piel mientras Botanicals plantas ayudan a suavizar y proteger la piel de los radicales libres dañinos.', 1, 'Hidratantes', 'Lavandula angustifolia (lavanda), Camellia sinensis (té verde) *, Rosa centifolia (Rose) *, Hibiscus sabdariffa (Hibiscus) Extracto *, Aloe barbadensis (Aloe Vera) Jugo de hoja *, Olivoyl proteína de trigo hidrolizada, alcohol cetearílico, gliceril oleato, estearato de glicerina, Helianthus annuus (girasol) aceite *, Macadamia integrifolia (Macadamia) aceite de semilla *, glicerina, Morinda citrifolia (Noni) de retorno *, Simmondsia chinensis (jojoba) Oil *, Persea gratissima (Avocado) Oil *, Rosa eglentaria (Rosa Mosqueta) Oil *, d-alfa acetato de tocoferol (soja deriva vitamina E Natural), alcohol bencílico, Santalum spicatum (sándalo) Oil *, goma xantana, Citrus reticulata (Mandarín) Oil *, Citrus paradisi (pomelo) Oil *, palmitato de ascorbilo (vitamina C), Butyrospermum parkii (Shea Butter) *, Citrus aurantium ssp bergamia (bergamota) Oil *, Punica Granatum (Granada) Los esteroles, Theobroma cacao (cacao) Mantequilla', 'Todo tipo de piel', 'Hidratacion', 'Cuerpo', 'MultimediaData/Cosmeticos/Loción enriquecedora para el cuerpo/enriched-body-lotion_1.jpg'),
(12, 'Bálsamo Labios', 'Nuestra fórmula vitamina mejorada contiene vitamina C y E para calmar, lisa y renovar incluso el más seco de los labios agrietados, dejándolos suaves y besables.', 1, 'Hidratantes', 'Ricinus communis (ricino) Oil *, cera de abejas *, Castor Isostearate Cera de abejas succinato, Simmondsia chinensis (jojoba) Oil *, Cocos nucifera (coco) Aceite *, cetil palmitato, palmitato de sorbitán, Sorbitan Olivate, alfa d- acetato de tocoferol (soja deriva Natural La vitamina E), Persea gratissima (Avocado) Oil *, Rosa eglentaria (Rosa Mosqueta) Oil *, Citrus aurantifolia (lima) Oil *, palmitato de ascorbilo (vitamina C), Malpighia glabra (cereza acerola en polvo) *, maltodextrina', 'Todo tipo de piel', 'Hidratacion', 'Labios', 'MultimediaData/Cosmeticos/Bálsamo Labios/vitamin-enhanced-lip-balm_1.jpg'),
(13, 'Revitalizador de Cuerpo (Pack)', 'Disfrute de un resplandor en todo el cuerpo! Comience por pulir las células muertas de la piel con nuestra suave pero eficaz Crema Exfoliante, entonces refrescar y tonificar su piel con nuestra aromática Essential Body Wash. Termine con un potente tratamiento para su piel mezclando unas gotas de nuestro galardonado de lujo Rosa Mosqueta Aceite Corporal con nuestro Enriquecido Loción Corporal para la piel, que es suave, luminosa y profundamente hidratada todo!', 1, 'Paquetes de Belleza', 'Lavandula angustifolia (lavanda), Camellia sinensis (té verde) *, Rosa centifolia (Rose) *, Hibiscus sabdariffa (Hibiscus) Extracto *, Aloe barbadensis (Aloe Vera) Jugo de hoja *, Olivoyl proteína de trigo hidrolizada, alcohol cetearílico, gliceril oleato, estearato de glicerina, Helianthus annuus (girasol) aceite *, Macadamia integrifolia (Macadamia) aceite de semilla *, glicerina, Morinda citrifolia (Noni) de retorno *, Simmondsia chinensis (jojoba) Oil *, Persea gratissima (Avocado) Oil *, Rosa eglentaria (Rosa Mosqueta) Oil *, d-alfa acetato de tocoferol (soja deriva vitamina E Natural), alcohol bencílico, Santalum spicatum (sándalo) Oil *, goma xantana, Citrus reticulata (Mandarín) Oil *, Citrus paradisi (pomelo)', 'Todo tipo de piel', 'Belleza', 'Cuerpo', 'MultimediaData/Cosmeticos/Revitalizador de Cuerpo (Pack)/revitalizing-body-pack_1.jpg'),
(14, 'Aceite de Rosa Mosqueta Cuerpo', 'Por la experiencia de baño definitiva poner unas gotas de aceite de rosa mosqueta cuerpo en el baño para crear una experiencia super hidratante.', 1, 'Tratamientos', 'Rosa eglentaria (Rosa Mosqueta) Oil *, carbonato de dicaprililo, d-alfa acetato de tocoferol (soja deriva Vitamina E Natural), Punica granatum (granada) Oil *, Morinda citrifolia (Noni fruta) *, Fragancias (Parfum)', 'Todo tipo de piel', 'Relajaciòn', 'Cuerpo', 'MultimediaData/Cosmeticos/Aceite de Rosa Mosqueta Cuerpo/luxurious-rosehip-body-oil_1.jpg'),
(15, 'Crema de Día', 'Un hidratante diaria teñido crema hidratante con protector solar. Fácil y rápido de aplicar la prestación de los beneficios adicionales de la hidratación y el tinte de una luz y una cobertura fresca', 1, 'Tratamientos', 'Extracto acuoso de Camellia sinensis (té verde *), Matricaria chamomilla (manzanilla) *, Rosa centifolia (Rose) *, Lavandula angustifolia (lavanda) *, Olea europea (de oliva) de la hoja *, Aloe barbadensis (Aloe Vera) *, Morinda citrifolia (Noni) *, glicerina, integrifolia macadamia (Macadamia) aceite de semilla *, óxido de zinc, ácido esteárico, Olivoyl proteína de trigo hidrolizada, alcohol cetearílico, gliceril oleato, estearato de glicerina, Persea gratissima (Avocado) Oil *, Cetearil Olivate, Sorbitan Olivate , CI 77891, sílice, sílice hidratada, glicerina caprilato', 'Todo tipo de piel', 'Hidratacion', 'Cuerpo', 'MultimediaData/Cosmeticos/Crema de Día/tinted-day-cream_1.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cosmetics_tipopiel`
--

DROP TABLE IF EXISTS `cosmetics_tipopiel`;
CREATE TABLE IF NOT EXISTS `cosmetics_tipopiel` (
  `id` int(11) NOT NULL auto_increment,
  `tipopiel` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `cosmetics_tipopiel`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cosmetics_tipotratamiento`
--

DROP TABLE IF EXISTS `cosmetics_tipotratamiento`;
CREATE TABLE IF NOT EXISTS `cosmetics_tipotratamiento` (
  `id` int(11) NOT NULL auto_increment,
  `nombretratamiento` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `cosmetics_tipotratamiento`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cosmetics_zonacorporal`
--

DROP TABLE IF EXISTS `cosmetics_zonacorporal`;
CREATE TABLE IF NOT EXISTS `cosmetics_zonacorporal` (
  `id` int(11) NOT NULL auto_increment,
  `nombrezona` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Volcar la base de datos para la tabla `cosmetics_zonacorporal`
--


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL auto_increment,
  `action_time` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `content_type_id` int(11) default NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `django_admin_log_6340c63c` (`user_id`),
  KEY `django_admin_log_37ef4eb4` (`content_type_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcar la base de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `user_id`, `content_type_id`, `object_id`, `object_repr`, `action_flag`, `change_message`) VALUES
(1, '2015-03-12 23:47:58', 1, 8, '1', 'Espuma Limpiadora', 1, ''),
(2, '2015-03-13 20:47:53', 1, 8, '4', 'Crema Limpiadora', 3, ''),
(3, '2015-03-13 20:47:53', 1, 8, '3', 'Crema Limpiadora', 3, ''),
(4, '2015-03-13 20:47:53', 1, 8, '1', 'Espuma Limpiadora', 3, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Volcar la base de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'content type', 'contenttypes', 'contenttype'),
(5, 'session', 'sessions', 'session'),
(6, 'site', 'sites', 'site'),
(7, 'log entry', 'admin', 'logentry'),
(8, 'cosmeticos', 'Cosmetics', 'cosmeticos'),
(9, 'categoria', 'Cosmetics', 'categoria'),
(10, 'tipo piel', 'Cosmetics', 'tipopiel'),
(11, 'tipo tratamiento', 'Cosmetics', 'tipotratamiento'),
(12, 'zona corporal', 'Cosmetics', 'zonacorporal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY  (`session_key`),
  KEY `django_session_b7b81f0c` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcar la base de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8y89ca9ehltgsvv9kujct0p8kotggesa', 'NDllMDUxMDljMzk1NGJjODY0Njg4MzhlOTQ0NDM1NTYzZTcwNzllZTp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9pZCI6MX0=', '2015-03-27 22:52:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_site`
--

DROP TABLE IF EXISTS `django_site`;
CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL auto_increment,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcar la base de datos para la tabla `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');
