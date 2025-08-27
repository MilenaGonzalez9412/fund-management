import 'package:fund_management/features/transaction_history/data/models/transaction_history.dart';

abstract class TransactionHistoryDataSource {
  Future<TransactionHistory> getHistory();
}
