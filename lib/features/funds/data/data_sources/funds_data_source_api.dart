import '../models/fund.dart';
import '../models/fund_response.dart';
import '../models/mock_fund_response.dart';
import 'funds_data_source.dart';

class FundsDataSourceApi implements FundsDataSource {
  @override
  Future<List<Fund>> getFunds() async {
    await Future.delayed(Duration(seconds: 2));

    final List<Fund> funds =
        (fundsMock as List)
            .map((fund) => FundResponse.fromJson(fund).toEntity())
            .toList();
    return funds;
  }
}
