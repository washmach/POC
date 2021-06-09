# POC
En este repositorio encontraremos las pruebas de concepto para dos proyectos.

El primero del que voy a hablar es integracion de paginas web en nuestro proyecto mobile flutter:
  Este proyecto se realiza con la arquitectura flutter basica añadiendo a esta el paquete webview_flutter a nuestro pubspec.yaml;
  el siguien paso crear una pagina en la cual por medio del widget WebView que provee el paquete anteriormente instalado, el widget cuenta con diferentes propiedades, pero para el   caso la mas importante son initialUrl y javascriptMode, por medio de las cuales proveemos la url del sitio que vamos a mostrar y damos permisos para ejecusion de codigo     javascript
  
Para el segundo proyecto tenemos la integracion de la plataforma twilio por el cual vamos a poder realizar video llamadas:

para la realizacion del proyecto es importante tener una cuenta twilio, pues al inscribirnos vamos a optener datos que posteriormente seran necesarios para hacer uso de las apis o servicios.
  *los datos son por ejemplo el SID que nos va a identificar como los prestadores secundarios del servicio
  *tambien un tokenid, para poder hacer llamado de las apis
  *entre otros datos necesarios para creacion de salas o manejo de mensajes de texto o wasap
  
luego de tener nuestra cuenta pasamos a la creacion del proyecto flutter:
  En nuestro proyecto de igual manera debemos realizar instalacion de paquetes y configuraciones, para dicha integracion es necesario el paquete twilio_programmable_video.
  
  -https://pub.dev/packages/twilio_programmable_video.
  
  las configuraciones a realizar estan indicadas en el paquete, ademas de indicarnos como realizar diferentes metodos para el processo y utilizacion de twilio.
  tambien podremos encontrar un ejemplo.
  
  en mi caso me guie de un ejemplo en la web el cual contenia manejo de estados por medio de flutter_riverpod.
  
  para la union de diferentes usuarios a las salas vi necesario la creacion de un endpoint para la creacion de los tokenaccess de usuarios los cuales son necesario para poder crear o ingresar a una sala
  
  ![image](https://user-images.githubusercontent.com/79798916/121432727-a5b31900-c940-11eb-9454-0a24fb3b1d02.png)

y nos indican como optener el token access por codigo

![image](https://user-images.githubusercontent.com/79798916/121432859-d2673080-c940-11eb-8100-e515392da0fc.png)


  
