import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fund_management/features/transaction_history/data/models/transaction_history.dart';

part 'transaction_history_response.freezed.dart';
part 'transaction_history_response.g.dart';

@Freezed(copyWith: false, toJson: false)
abstract class TransactionHistoryResponse with _$TransactionHistoryResponse {
  const TransactionHistoryResponse._();

  const factory TransactionHistoryResponse({
    required int id,
    required int userId,
    required List<FundTransactionResponse> userFunds,
  }) = _TransactionHistoryResponse;

  factory TransactionHistoryResponse.fromJson(Map<String, dynamic> json) =>
      _$TransactionHistoryResponseFromJson(json);

  TransactionHistory toEntity() => TransactionHistory(
    id: id,
    userId: userId,
    userFunds: userFunds.map((userFund) => userFund.toEntity()).toList(),
  );
}

@Freezed(copyWith: false, toJson: false)
abstract class FundTransactionResponse with _$FundTransactionResponse {
  const FundTransactionResponse._();
  const factory FundTransactionResponse({
    required int fundTransactionId,
    required int fundId,
    required String fundName,
    required double transactionCost,
    required String startDate,
    required String endDate,
    required bool isActive,
  }) = _FundTransactionResponse;

  factory FundTransactionResponse.fromJson(Map<String, dynamic> json) =>
      _$FundTransactionResponseFromJson(json);

  FundTransaction toEntity() => FundTransaction(
    fundTransactionId: fundTransactionId,
    fundId: fundId,
    fundName: fundName,
    transactionCost: transactionCost,
    startDate: startDate,
    endDate: endDate,
    isActive: isActive,
  );
}
