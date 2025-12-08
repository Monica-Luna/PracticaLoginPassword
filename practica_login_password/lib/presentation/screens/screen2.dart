import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:practica_login_password/presentation/screens/Screen3.dart';

class Screen2 extends StatelessWidget {
  final String username;

  const Screen2({super.key, required this.username});

  static const String name = 'second';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            // ENCABEZADO DEL DRAWER
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.blue),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 40, color: Colors.blue),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Usuario: $username',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Pantalla principal',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),
            // ITEMS DEL MENÚ (FUERA DEL DrawerHeader)
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Ir a Sreen3'),
              onTap: () {
                context.pushNamed(
                  Screen3.name,
                  pathParameters: {"username": username},
                );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Configuración'),
              onTap: () {
                Navigator.pop(context);
                // Navegar a configuración
              },
            ),
            ListTile(
              leading: const Icon(Icons.history),
              title: const Text('Historial'),
              onTap: () {
                Navigator.pop(context);
                // Navegar a historial
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text('Ayuda'),
              onTap: () {
                Navigator.pop(context);
                // Navegar a ayuda
              },
            ),
            const Divider(), // Línea divisoria
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text('Cerrar Sesión', style: TextStyle(color: Colors.red)),
              onTap: () {
                Navigator.pop(context); // Cierra el drawer
              },
            ),
          ],
        ),
      ),
    );
  }
}
