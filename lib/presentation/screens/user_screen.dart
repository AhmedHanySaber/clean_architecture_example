import 'package:clean_architecture_example/presentation/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAsyncValue = ref.watch(userProvider('123'));

    return Scaffold(
      appBar: AppBar(title: Text('User')),
      body: userAsyncValue.when(
        data: (user) => Center(child: Text('Name: ${user.name}')),
        loading: () => CircularProgressIndicator(),
        error: (error, stack) => Text('Error: $error'),
      ),
    );
  }
}
