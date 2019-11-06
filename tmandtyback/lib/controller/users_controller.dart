
import 'package:aqueduct/aqueduct.dart';
import 'package:tmandtyback/model/user.dart';
import 'package:tmandtyback/query/userDAO.dart';

import 'package:tmandtyback/tmandtyback.dart';

class UsersController extends ResourceController {

  @Operation.get('Login')
  Future<Response> getUsers(@Bind.path('Login') String login) async {
    final Map<String, dynamic> body = await request.body.decode();
    print(login);
    final registroEncontrado = await UserDao().searchByLogin(login);
    return Response.ok(registroEncontrado);
  }

  @Operation.post()
  Future<Response> createUser() async {
    final Map<String, dynamic> body = await request.body.decode();
    User cUser = User.fromJson(body);
    final realizado = await UserDao().createUser(cUser);
    return Response.ok(realizado);
  }

  @Operation.put()
  Future<Response> updateUser() async {
    return Response.ok("update");
  }
}