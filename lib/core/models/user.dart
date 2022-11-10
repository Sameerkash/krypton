import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.g.dart';
part 'user.freezed.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required final int balance,
    required final String name,
    final String? avatar,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
