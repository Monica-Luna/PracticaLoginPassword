import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Screen2 extends StatelessWidget {
  final String username;

  const Screen2({super.key, required this.username});

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
