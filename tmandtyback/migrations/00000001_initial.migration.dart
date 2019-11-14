import 'dart:async';
import 'package:aqueduct/aqueduct.dart';   

class Migration1 extends Migration { 
  @override
  Future upgrade() async {
   		database.createTable(SchemaTable("Usuario", [SchemaColumn("id", ManagedPropertyType.integer, isPrimaryKey: true, autoincrement: false, isIndexed: true, isNullable: false, isUnique: false),SchemaColumn("user", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("password", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, defaultValue: "password", isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("mail", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("fullName", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("imageUrl", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true),SchemaColumn("userType", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false)]));
		database.createTable(SchemaTable("TipoUsuario", [SchemaColumn("idTypeUsuer", ManagedPropertyType.bigInteger, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),SchemaColumn("nameTypeUser", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true)]));
  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {
    final Map User = 
      {
        "id": 121,
        "Login": "weewwe",
        "Contrasena": "Wss&wewe()",
        "Correo": "we",
        "Nombre": "niqewqcolas",
        "UrlImage": "c:/app/imagenadmin2.jpg",
        "TipoUsuario": "jjuuju"
      };
    
    await database.store.execute('INSERT INTO _User () VALUES');
    
  }
}
    