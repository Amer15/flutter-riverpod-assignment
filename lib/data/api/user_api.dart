import 'dart:convert';

import 'package:flutter_riverpod_assignment/data/model/add_user/add_user_model.dart';
import 'package:flutter_riverpod_assignment/data/model/user/user_model.dart';
import 'package:http/http.dart' as http;

class UserApi {
  Future<List<User>> fetchUsers() async {
    final response = await http.get(Uri.parse("https://reqres.in/api/users"),
        headers: {"x-api-key": "reqres-free-v1", "Accept": "application/json"});

    if (response.statusCode == 200) {
      try {
      final body = jsonDecode(response.body);

      if (body is Map && body["data"] is List) {
        final List data = body["data"];
        return data.map((user) => User.fromJson(user)).toList();
      } else {
        throw Exception("Oops! something went wrong, failed to load users");
      }
    } catch (e) {
      throw Exception("Oops! something went wrong, failed to load users");
    }
    } else {
      throw Exception("failed to load users");
    }
  }

  Future<void> createUser(AddUser user) async {
    final response = await http.post(
      Uri.parse("https://reqres.in/api/users"),
      body: jsonEncode(user),
      headers: {"x-api-key": "reqres-free-v1"},
    );

    if (response.statusCode != 201) {
      throw Exception("failed to load users");
    }
  }
}
