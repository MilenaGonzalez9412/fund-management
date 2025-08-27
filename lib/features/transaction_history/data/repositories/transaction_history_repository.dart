import 'package:fund_management/features/transaction_history/data/data_sources/transaction_history_data_source.dart';
import 'package:fund_management/features/transaction_history/data/models/transaction_history.dart';

class TransactionHistoryRepository {
  final TransactionHistoryDataSource _transactionHistoryDataSource;

  TransactionHistoryRepository(this._transactionHistoryDataSource);

  Future<TransactionHistory> getHistory() async {
    return _transactionHistoryDataSource.getHistory();
  }
}
