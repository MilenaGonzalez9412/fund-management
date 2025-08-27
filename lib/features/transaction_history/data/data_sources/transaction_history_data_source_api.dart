import 'package:fund_management/features/transaction_history/data/data_sources/transaction_history_data_source.dart';
import 'package:fund_management/features/transaction_history/data/models/mock_transaction_history_response.dart';
import 'package:fund_management/features/transaction_history/data/models/transaction_history.dart';
import 'package:fund_management/features/transaction_history/data/models/transaction_history_response.dart';

class TransactionHistoryDataSourceApi implements TransactionHistoryDataSource {
  @override
  Future<TransactionHistory> getHistory() async {
    await Future.delayed(Duration(seconds: 1));

    return TransactionHistoryResponse.fromJson(
      transactionHistoryMock,
    ).toEntity();
  }
}
