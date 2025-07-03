import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_user_model.freezed.dart';
part 'add_user_model.g.dart';

@freezed
class AddUser with _$AddUser {
  const factory AddUser({
    required String name,
    required String job,
  }) = _AddUser;

  factory AddUser.fromJson(Map<String, dynamic> json) => _$AddUserFromJson(json);
}