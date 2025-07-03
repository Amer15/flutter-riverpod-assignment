// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddUser _$AddUserFromJson(Map<String, dynamic> json) {
  return _AddUser.fromJson(json);
}

/// @nodoc
mixin _$AddUser {
  String get name => throw _privateConstructorUsedError;
  String get job => throw _privateConstructorUsedError;

  /// Serializes this AddUser to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AddUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AddUserCopyWith<AddUser> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddUserCopyWith<$Res> {
  factory $AddUserCopyWith(AddUser value, $Res Function(AddUser) then) =
      _$AddUserCopyWithImpl<$Res, AddUser>;
  @useResult
  $Res call({String name, String job});
}

/// @nodoc
class _$AddUserCopyWithImpl<$Res, $Val extends AddUser>
    implements $AddUserCopyWith<$Res> {
  _$AddUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AddUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? job = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddUserImplCopyWith<$Res> implements $AddUserCopyWith<$Res> {
  factory _$$AddUserImplCopyWith(
          _$AddUserImpl value, $Res Function(_$AddUserImpl) then) =
      __$$AddUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String job});
}

/// @nodoc
class __$$AddUserImplCopyWithImpl<$Res>
    extends _$AddUserCopyWithImpl<$Res, _$AddUserImpl>
    implements _$$AddUserImplCopyWith<$Res> {
  __$$AddUserImplCopyWithImpl(
      _$AddUserImpl _value, $Res Function(_$AddUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of AddUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? job = null,
  }) {
    return _then(_$AddUserImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      job: null == job
          ? _value.job
          : job // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AddUserImpl implements _AddUser {
  const _$AddUserImpl({required this.name, required this.job});

  factory _$AddUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddUserImplFromJson(json);

  @override
  final String name;
  @override
  final String job;

  @override
  String toString() {
    return 'AddUser(name: $name, job: $job)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUserImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.job, job) || other.job == job));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, job);

  /// Create a copy of AddUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUserImplCopyWith<_$AddUserImpl> get copyWith =>
      __$$AddUserImplCopyWithImpl<_$AddUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddUserImplToJson(
      this,
    );
  }
}

abstract class _AddUser implements AddUser {
  const factory _AddUser(
      {required final String name, required final String job}) = _$AddUserImpl;

  factory _AddUser.fromJson(Map<String, dynamic> json) = _$AddUserImpl.fromJson;

  @override
  String get name;
  @override
  String get job;

  /// Create a copy of AddUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddUserImplCopyWith<_$AddUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
