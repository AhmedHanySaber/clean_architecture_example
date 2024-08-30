import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:clean_architecture_example/domain/entities/user.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String name,
    required String email,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

extension UserModelX on UserModel {
  User toDomain() {
    return User(
      id: id,
      name: name,
      email: email,
    );
  }
}
