import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fund_management/features/transaction_history/data/data_sources/transaction_history_data_source_api.dart';
import 'package:fund_management/features/transaction_history/data/repositories/transaction_history_repository.dart';

final transactionHistoryRepositoryProvider = Provider((ref) {
  return TransactionHistoryRepository(TransactionHistoryDataSourceApi());
});
