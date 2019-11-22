import 'package:tmandtyback/Properties/appConfiguration.dart';
import 'package:tmandtyback/controller/users_controller.dart';

import 'dart:io';
import 'tmandtyback.dart';

class TmandtybackChannel extends ApplicationChannel {

  ManagedContext context;

  @override
  Future prepare() async {
    logger.onRecord.listen((rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));

    final config = AppConfiguration();
    final database = config.database["db2"];

    final dataModel = ManagedDataModel.fromCurrentMirrorSystem();
    final store = PostgreSQLPersistentStore.fromConnectionInfo(
        database.username,
        database.password,
        database.host,
        database.port,
        database.databaseName
    );
    context = ManagedContext(dataModel, store);
  }
//  @override
//  Future prepare() async {
//    logger.onRecord.listen((rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
//  }

  @override
  Controller get entryPoint => Router()
    ..route('/users/[:Login]').link(() => UsersController(context))
    ..route('/chats/').link(() => UsersController(context));

//    router
//        .route('/example')
//        .linkFunction((request) async {
//      return new Response.ok('Hallo world')
//        ..contentType = ContentType.TEXT;
//    };
}