import 'package:fund_management/features/user/data/data_sources/user_data_source.dart';
import 'package:fund_management/features/user/data/models/mock_user_response.dart';
import 'package:fund_management/features/user/data/models/user.dart';
import 'package:fund_management/features/user/data/models/user_response.dart';

class UserDataSourceApi implements UserDataSource {
  @override
  Future<User> getUser() async {
    await Future.delayed(Duration(seconds: 4));

    return UserResponse.fromJson(
      userResponseMock as Map<String, dynamic>,
    ).toEntity();
  }
}
