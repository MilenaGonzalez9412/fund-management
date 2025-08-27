import '../models/fund.dart';

abstract class FundsDataSource {
  Future<List<Fund>> getFunds();

  Future<void> subscribeFund({
    required int userId,
    required Fund fund,
    required String notificationMethod,
  });

  Future<void> cancelSubscription({required int userId, required Fund fund});
}
