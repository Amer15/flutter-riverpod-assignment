import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_assignment/data/api/user_api.dart';
import 'package:flutter_riverpod_assignment/data/model/user/user_model.dart';
import 'package:flutter_riverpod_assignment/repository/user/user_repository.dart';
import 'package:flutter_riverpod_assignment/repository/user/user_repository_impl.dart';

final userApiProvider = Provider((ref) => UserApi());
final userRepositoryProvider = Provider<UserRepository>(
    (ref) => UserRepositoryImpl(ref.read(userApiProvider)));

class UserNotifier extends AsyncNotifier<List<User>> {
  @override
  Future<List<User>> build() async {
    return fetchUsers();
  }

  Future<List<User>> fetchUsers() async {
    state = const AsyncLoading();
    try {
      final repo = ref.read(userRepositoryProvider);
      final users = await repo.fetchUsers();
      state = AsyncData(users);
      return users;
    } catch (e, st) {
      state = AsyncError(e, st);
      rethrow;
    }
  }

  Future<void> refreshData() async {
    await fetchUsers();
  }
}

final userProvider =
    AsyncNotifierProvider<UserNotifier, List<User>>(UserNotifier.new);
