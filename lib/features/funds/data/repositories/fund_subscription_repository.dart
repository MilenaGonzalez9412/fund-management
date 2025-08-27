import '../data_sources/funds_data_source.dart';
import '../models/fund.dart';

class FundSubscriptionRepository {
  final FundsDataSource _fundsDataSource;

  FundSubscriptionRepository(this._fundsDataSource);

  Future<List<Fund>> getFunds() async {
    return _fundsDataSource.getFunds();
  }

  Future<void> subscribe(
    int userId,
    Fund fund,
    String notificationMethod,
  ) async {
    return _fundsDataSource.subscribeFund(
      userId: userId,
      fund: fund,
      notificationMethod: notificationMethod,
    );
  }

  Future<void> cancelSubscription({
    required int userId,
    required Fund fund,
  }) async {
    return _fundsDataSource.cancelSubscription(userId: userId, fund: fund);
  }
}
