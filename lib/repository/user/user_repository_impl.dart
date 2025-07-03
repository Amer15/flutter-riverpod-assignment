import 'package:flutter_riverpod_assignment/data/api/user_api.dart';
import 'package:flutter_riverpod_assignment/data/model/add_user/add_user_model.dart';
import 'package:flutter_riverpod_assignment/data/model/user/user_model.dart';
import 'package:flutter_riverpod_assignment/repository/user/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApi _api;
  UserRepositoryImpl(this._api);

  @override
  Future<List<User>> fetchUsers() => _api.fetchUsers();

  @override
  Future<void> createUser(AddUser user) => _api.createUser(user);
}
