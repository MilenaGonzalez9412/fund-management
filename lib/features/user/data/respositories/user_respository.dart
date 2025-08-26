import '../data_sources/user_data_source.dart';
import '../models/user.dart';

class UserRespository {
  final UserDataSource _userDataSource;

  UserRespository(this._userDataSource);

  Future<User> getUser() async {
    return _userDataSource.getUser();
  }
}
