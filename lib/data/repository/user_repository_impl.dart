
import 'package:clean_architecture_example/domain/entities/user.dart';
import 'package:clean_architecture_example/domain/repositories/user_repository.dart';

import '../model/user_model.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<User> getUser(String id) async {
    // Simulating a data fetch, replace this with actual API call
    await Future.delayed(Duration(seconds: 2));
    return UserModel(id: id, name: 'John Doe', email: 'john@example.com').toDomain();
  }
}
