import 'dart:io';
import 'package:safe_config/safe_config.dart';

//Acceso al archivo de propiedades que obtiene la informacion de conexion
class AppConfiguration extends Configuration {
 	AppConfiguration() : 
 		super.fromFile(File("config.yaml"));
  
  //Lista de conexiones a base de datos pata que cada uno pueda configurar la necesaria para ejecutar su proyecto.
  Map<String, DatabaseConfiguration> database;
}