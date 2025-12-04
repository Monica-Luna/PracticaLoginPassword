import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SecondScreen extends StatelessWidget {
  final String username;

  const SecondScreen({super.key, required this.username});

  static const String name = 'second';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: Text('Hola $username'),
        actions: [
          IconButton(
            tooltip: 'Volver',
            icon: const Icon(Icons.cancel),
            onPressed: () {
              context.goNamed('login');
            },
          ),
        ],
      ),
      body: Center(child: Text('Hola $username')),
    );
  }
}
