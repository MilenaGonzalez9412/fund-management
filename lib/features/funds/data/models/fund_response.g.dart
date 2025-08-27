// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fund_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FundResponse _$FundResponseFromJson(Map<String, dynamic> json) =>
    _FundResponse(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      category: json['category'] as String,
      minimumQuantity: (json['minimumQuantity'] as num).toDouble(),
    );
