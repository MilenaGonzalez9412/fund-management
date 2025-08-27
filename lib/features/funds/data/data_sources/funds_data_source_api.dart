import 'package:fund_management/features/transaction_history/data/models/mock_transaction_history_response.dart';
import 'package:fund_management/features/user/data/models/mock_user_response.dart';

import '../models/fund.dart';
import '../models/fund_response.dart';
import '../models/mock_fund_response.dart';
import 'funds_data_source.dart';

class FundsDataSourceApi implements FundsDataSource {
  @override
  Future<List<Fund>> getFunds() async {
    await Future.delayed(Duration(seconds: 1));

    final List<Fund> funds =
        (fundsMock as List)
            .map((fund) => FundResponse.fromJson(fund).toEntity())
            .toList();
    return funds;
  }

  @override
  Future<void> subscribeFund({
    required int userId,
    required Fund fund,
    required String notificationMethod,
  }) async {
    final balance = userResponseMock['balance'] as double;

    final newBalance = balance - fund.minimumQuantity;

    transactionHistoryMock['userFunds'] ??= [];

    final userFunds = transactionHistoryMock['userFunds'] as List;

    final lastId =
        userFunds.isNotEmpty
            ? (userFunds.last['fundTransactionId'] ?? 0) as int
            : 0;
    final newId = lastId + 1;

    userResponseMock['currentAffiliation'] = fund.id;
    userResponseMock['balance'] = newBalance;

    userFunds.add({
      'fundId': fund.id,
      'fundTransactionId': newId,
      'fundName': fund.name,
      'transactionCost': fund.minimumQuantity,
      'startDate': DateTime.now().toIso8601String(),
      'notificationMethod': notificationMethod,
      'isActive': true,
    });

    await Future.delayed(Duration(seconds: 1));
  }

  @override
  Future<void> cancelSubscription({
    required int userId,
    required Fund fund,
  }) async {
    userResponseMock['currentAffiliation'] = 0;

    final userFunds = transactionHistoryMock['userFunds'] as List;
    for (var fundRecord in userFunds) {
      if (fundRecord['fundId'] == fund.id && fundRecord['isActive'] == true) {
        fundRecord['endDate'] = DateTime.now().toIso8601String();
        fundRecord['isActive'] = false;
      }
    }

    await Future.delayed(Duration(seconds: 1));
  }
}
