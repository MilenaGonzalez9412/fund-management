import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data_sources/funds_data_source_api.dart';
import '../repositories/fund_subscription_repository.dart';

final fundSubscriptionRepositoryProvider = Provider((ref) {
  return FundSubscriptionRepository(FundsDataSourceApi());
});
