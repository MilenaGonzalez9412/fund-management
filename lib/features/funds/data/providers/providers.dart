import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data_sources/funds_data_source_api.dart';
import '../repositories/fund_management_repository.dart';

final fundManagementRepositoryProvider = Provider((ref) {
  return FundManagementRepository(FundsDataSourceApi());
});
