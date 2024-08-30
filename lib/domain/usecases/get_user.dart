import 'package:clean_architecture_example/domain/entities/user.dart';
import 'package:clean_architecture_example/domain/repositories/user_repository.dart';

class GetUser {
  final UserRepository repository;

  GetUser(this.repository);

  Future<User> call(String id) {
    return repository.getUser(id);
  }
}
