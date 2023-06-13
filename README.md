# MyGameTime Project

## DESCRIPCIÓN GENERAL
El sitio web cuenta con dos secciones **Store [tienda]** y **Administración [área administrativa]**. La sección de la **Store**, cuenta con una pagina principal, una pagina de tienda en la cual se muestran los productos activos, y la pagina contacto incluye la capacidad de enviar correos del formulario hacia el correo administrativo. Los usuarios pueden acceder al **área administrativa** a través del LogIn con su usuario y contraseña, dentro del **área administrativa**, se utiliza el Template AdminLTE como sistema administrativo, se pueden ingresar, actualizar y eliminar productos, adicionalmente se gestiona la información de los usuarios del sistema y se permite enviar correos desde el área administrativa.

---
## FUNCIONALIDADES

### Store
* Página **INICIO**
* página **TIENDA** contiene todos los productos activos en la DB
* Envió de correos desde la página **CONTACTO** hacia el correo administrativo.
* Acceso al área administrativa a través del **LogIn**
* Integración de canastilla de compras y generación de factura en PDF al finalizar la compra.
* Presentación de productos utilizando dataTables

### Administración
* Integración del Template AdminLTE como sistema administrativo
* Mantenimiento de información de los productos con sus catálogos
	* Carga de imagen de cada producto y recorte automático en la disposición del tamaño prestablecido
* Mantenimiento de los usuarios del sistema
* Envió de correos desde el área administrativa.

---
## TECNOLOGÍAS Y LIBRERÍAS UTILIZADAS 

* HTML5
* JavaScript
* jQuery
* PHP
* Croppie
* fPDF
* phpMailer
* SQL

---
## CONFIGURACIONES ADICIONALES

### Ubicación De La Base De Datos Para Pruebas
* 📂_localTestDB > 📄db_mygametime.sql
### Configuraciones Generales
* 📂system > 📄config.php
	* ***BASE_URL***  : Ubicación Proyecto, Server URL
	* ***HOST*** : localhost
	* ***USER*** : Usuario DB
	* ***PASSWORD*** : Password DB
	* ***DB_NAME*** : Nombre DB

### NOTA ADICIONAL
> La base de datos para pruebas **NO ESTÁ COMPLETA**, la restauración está en proceso.
