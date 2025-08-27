import 'package:freezed_annotation/freezed_annotation.dart';

part 'transaction_history.freezed.dart';

@freezed
abstract class TransactionHistory with _$TransactionHistory {
  const factory TransactionHistory({
    required int id,
    required int userId,
    required List<FundTransaction> userFunds,
  }) = _TransactionHistory;
}

@freezed
abstract class FundTransaction with _$FundTransaction {
  const factory FundTransaction({
    required int fundTransactionId,
    required int fundId,
    required String fundName,
    required double transactionCost,
    required String startDate,
    String? endDate,
    required String notificationMethod,
    required bool isActive,
  }) = _FundTransaction;
}
