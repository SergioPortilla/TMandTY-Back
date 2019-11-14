
import 'package:aqueduct/aqueduct.dart';
import 'package:tmandtyback/model/user.dart';
import 'package:tmandtyback/query/userDAO.dart';

import 'package:tmandtyback/tmandtyback.dart';

class UsersController extends ResourceController {
  UsersController(this.context);

  ManagedContext context;
  @Operation.get('Login')
  Future<Response> getUsers(@Bind.path('Login') String login) async {
    final readQuery = Query<User>(context)
      ..where((User) => User.user).equalTo(login);
    final read = await readQuery.fetchOne();

    if (read == null) {
      return Response.notFound(body: 'Item not found.');
    }
    return Response.ok(read);
//    final Map<String, dynamic> body = await request.body.decode();
//    print(login);
//    final registroEncontrado = await UserDao().searchByLogin(login);
//    return Response.ok(registroEncontrado);
    return Response.ok("registroEncontrado");
  }

  @Operation.post()
  Future<Response> createUser(@Bind.body() User body) async {
    final readQuery = Query<User>(context)..values = body;
    final insertedRead = await readQuery.insert();

    return Response.ok(insertedRead);
//    final Map<String, dynamic> body = await request.body.decode();
//    User cUser = User.fromJson(body);
//    final realizado = await UserDao().createUser(cUser);
//    return Response.ok(realizado);
  }

  @Operation.put()
  Future<Response> updateUser() async {
    return Response.ok("update");
  }
}