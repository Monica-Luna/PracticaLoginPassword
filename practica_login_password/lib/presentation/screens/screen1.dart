import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practica_login_password/domain/entities/user.dart';
import 'package:practica_login_password/presentation/provider/user_provider.dart';
import 'package:provider/provider.dart';


class Screen1 extends StatelessWidget {
  Screen1({super.key});

  static const String name = 'login';

  final user = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final userProvider = context.watch<UserProvider>();
    return Scaffold(
      appBar: AppBar(title: const Text("Escribe usuario y contraseña")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(controller: user),
              const SizedBox(height: 20),
              TextFormField(
                controller: password,
                obscureText: true,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  int bandera = 0;
                  for (User usuario in userProvider.listUsers) {
                    if (usuario.username == user.text &&
                        usuario.password == password.text) {
                      bandera = 1;
                      context.go('/screen2/${user.text}');
                    }
                  }
                  if (bandera == 0) {
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        title: const Text(
                          "Usuario y contraseña no encontrados",
                        ),
                        actions: [
                          TextButton(
                            child: const Text("Volver"),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: const Text("Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}