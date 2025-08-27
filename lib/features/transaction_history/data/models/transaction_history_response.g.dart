// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_history_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TransactionHistoryResponse _$TransactionHistoryResponseFromJson(
  Map<String, dynamic> json,
) => _TransactionHistoryResponse(
  id: (json['id'] as num).toInt(),
  userId: (json['userId'] as num).toInt(),
  userFunds:
      (json['userFunds'] as List<dynamic>)
          .map(
            (e) => FundTransactionResponse.fromJson(e as Map<String, dynamic>),
          )
          .toList(),
);

_FundTransactionResponse _$FundTransactionResponseFromJson(
  Map<String, dynamic> json,
) => _FundTransactionResponse(
  fundTransactionId: (json['fundTransactionId'] as num).toInt(),
  fundId: (json['fundId'] as num).toInt(),
  fundName: json['fundName'] as String,
  transactionCost: (json['transactionCost'] as num).toDouble(),
  startDate: json['startDate'] as String,
  endDate: json['endDate'] as String?,
  notificationMethod: json['notificationMethod'] as String,
  isActive: json['isActive'] as bool,
);
