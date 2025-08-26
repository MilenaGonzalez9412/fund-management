import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data_sources/user_data_source_api.dart';
import '../respositories/user_respository.dart';

final userRepositoryProvider = Provider((ref) {
  return UserRespository(UserDataSourceApi());
});
