import '../data_sources/funds_data_source.dart';
import '../models/fund.dart';

class FundManagementRepository {
  final FundsDataSource _fundsDataSource;

  FundManagementRepository(this._fundsDataSource);

  Future<List<Fund>> getFunds() async {
    return _fundsDataSource.getFunds();
  }
}
