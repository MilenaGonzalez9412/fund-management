import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fund_management/features/funds/data/models/fund.dart';
import 'package:fund_management/features/funds/data/providers/providers.dart';
import 'package:fund_management/features/user/data/models/user.dart';
import 'package:fund_management/features/user/data/providers/providers.dart';

final userProvider = FutureProvider<User>(
  (ref) => ref.watch(userRepositoryProvider).getUser(),
);

final fundProvider = FutureProvider<List<Fund>>(
  (ref) => ref.watch(fundSubscriptionRepositoryProvider).getFunds(),
);

final fundByIdProvider = Provider.family<Fund?, int>((ref, id) {
  return ref
      .watch(fundProvider)
      .maybeWhen(
        data: (funds) {
          final exists = funds.where((fund) => fund.id == id);
          return exists.isNotEmpty ? exists.first : null;
        },
        orElse: () => null,
      );
});
