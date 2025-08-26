import 'package:freezed_annotation/freezed_annotation.dart';

part 'fund.freezed.dart';

@freezed
abstract class Fund with _$Fund {
  const factory Fund({
    required int id,
    required String name,
    required String category,
    required int minimumQuantity,
  }) = _Fund;
}
