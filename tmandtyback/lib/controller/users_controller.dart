
import 'package:aqueduct/aqueduct.dart';
import 'package:tmandtyback/model/user.dart';
import 'package:tmandtyback/query/userDAO.dart';
import 'dart:async';

import 'package:tmandtyback/tmandtyback.dart';

class UsersController extends ResourceController {

  @Operation.get('id')
  Future<Response> getUsers(@Bind.path('id') int id) async {
    return Response.ok("body");
  }

  @Operation.post()
  Future<Response> createUser() async {
    User createUser = User.fromJson(request.body.decode());
    return Response.ok("post");
  }

  @Operation.put()
  Future<Response> updateUser() async {
    return Response.ok("update");
  }
}