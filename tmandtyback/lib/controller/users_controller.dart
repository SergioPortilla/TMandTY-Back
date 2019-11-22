
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
      ..where((user) => user.userName).equalTo(login.toUpperCase());
    final read = await readQuery.fetchOne();

    if (read == null) {
      return Response.notFound(body: 'Item not found.');
    }
    return Response.ok(read);
  }

  @Operation.post()
  Future<Response> createUser(@Bind.body() User body) async {
    final readQuery = Query<User>(context)..values = body;
    final insertedRead = await readQuery.insert();
    print(insertedRead);
    return Response.ok(insertedRead);
  }

  @Operation.put()
  Future<Response> updateUser() async {
    return Response.ok("update");
  }
}