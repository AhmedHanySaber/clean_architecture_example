import 'package:clean_architecture_example/domain/usecases/get_user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:clean_architecture_example/domain/entities/user.dart';

import '../../data/repository/user_repository_impl.dart';

final userProvider = FutureProvider.family<User, String>((ref, id) async {
  final getUser = ref.watch(getUserProvider);
  return getUser(id);
});

final getUserProvider = Provider((ref) => GetUser(UserRepositoryImpl()));
