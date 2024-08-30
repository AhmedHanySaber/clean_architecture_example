import 'package:clean_architecture_example/domain/entities/user.dart';

abstract class UserRepository {
  Future<User> getUser(String id);
}
