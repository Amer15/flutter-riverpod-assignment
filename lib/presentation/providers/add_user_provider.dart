import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_assignment/data/api/user_api.dart';
import 'package:flutter_riverpod_assignment/data/model/add_user/add_user_model.dart';
import 'package:flutter_riverpod_assignment/repository/user/user_repository.dart';
import 'package:flutter_riverpod_assignment/repository/user/user_repository_impl.dart';

final userApiProvider = Provider((ref) => UserApi());
final userRepositoryProvider = Provider<UserRepository>(
  (ref) => UserRepositoryImpl(
    ref.read(userApiProvider),
  ),
);

class AddUserNotifier extends AsyncNotifier<void> {
  @override
  Future<void> build() async {}

  Future<AsyncValue<void>> submitUser(AddUser user) async {
    try {
      state = const AsyncLoading();
      await ref.read(userRepositoryProvider).createUser(user);
      state = const AsyncData(null);
      return state;
    } catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
      return state;
    }
  }
}

final addUserProvider =
    AsyncNotifierProvider<AddUserNotifier, void>(AddUserNotifier.new);
