// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserResponse _$UserResponseFromJson(Map<String, dynamic> json) =>
    _UserResponse(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      lastName: json['lastName'] as String,
      balance: (json['balance'] as num).toDouble(),
      currentAffiliation: (json['currentAffiliation'] as num?)?.toInt(),
    );
