import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fund_management/features/transaction_history/data/models/transaction_history.dart';
import 'package:fund_management/features/transaction_history/data/providers/provider.dart';

final transactionHistoryProvider = FutureProvider<TransactionHistory>(
  (ref) => ref.watch(transactionHistoryRepositoryProvider).getHistory(),
);
