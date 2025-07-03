import 'package:flutter_riverpod_assignment/data/model/add_user/add_user_model.dart';
import 'package:flutter_riverpod_assignment/data/model/user/user_model.dart';

abstract class UserRepository {
  Future<List<User>> fetchUsers();
  Future<void> createUser(AddUser user);
}