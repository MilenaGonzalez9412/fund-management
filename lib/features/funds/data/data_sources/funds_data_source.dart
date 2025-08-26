import '../models/fund.dart';

abstract class FundsDataSource {
  Future<List<Fund>> getFunds();
}
