import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fund_management/features/user/data/models/user.dart';

part 'user_response.freezed.dart';
part 'user_response.g.dart';

@Freezed(copyWith: false, toJson: false)
abstract class UserResponse with _$UserResponse {
  const UserResponse._();
  const factory UserResponse({
    required int id,
    required String name,
    required String lastName,
    required double balance,
    required int? currentAffiliation,
  }) = _UserResponse;

  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);

  User toEntity() => User(
    id: id,
    name: name,
    lastName: lastName,
    balance: balance,
    currentAffiliation: currentAffiliation,
  );
}
