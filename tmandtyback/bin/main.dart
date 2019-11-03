import 'package:mysql1/mysql1.dart';
import 'package:tmandtyback/conection/databaseAccess.dart';
import 'package:tmandtyback/model/user.dart';
import 'package:tmandtyback/model/userType.dart';

import 'package:tmandtyback/tmandtyback.dart';

Future main() async {
  final app = Application<TmandtybackChannel>()
      ..options.configurationFilePath = "config.yaml"
      ..options.port = 8888;

  final count = Platform.numberOfProcessors ~/ 2;
  await app.start(numberOfInstances: count > 0 ? count : 1);

  print("Application started on port: ${app.options.port}.");
  print("Use Ctrl-C (SIGINT) to stop running the application.");

}