import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:fund_management/features/funds/data/models/fund.dart';

part 'fund_response.freezed.dart';
part 'fund_response.g.dart';

@Freezed(copyWith: false, toJson: false)
abstract class FundResponse with _$FundResponse {
  const FundResponse._();
  const factory FundResponse({
    required int id,
    required String name,
    required String category,
    required int minimumQuantity,
  }) = _FundResponse;

  factory FundResponse.fromJson(Map<String, dynamic> json) =>
      _$FundResponseFromJson(json);

  Fund toEntity() => Fund(
    id: id,
    name: name,
    category: category,
    minimumQuantity: minimumQuantity,
  );
}
