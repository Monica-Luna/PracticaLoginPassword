import 'package:flutter/material.dart';
import 'package:practica_login_password/domain/entities/user.dart';
import 'package:practica_login_password/presentation/provider/user_provider.dart';
import 'package:provider/provider.dart';

class Screen3 extends StatelessWidget {
  static const String name = "screen3";
  final String username;

  const Screen3({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    final userProvider = context.watch<UserProvider>();

    return Scaffold(
      appBar: AppBar(title: Text("Usuarios desde Google Sheet")),

      body: userProvider.listUsers.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: userProvider.listUsers.length,
              itemBuilder: (context, index) {
                final User user = userProvider.listUsers[index];
                final imageUrl = user.photoUrl;

                // -----------------------------------------------------------------
                // CARD + GESTURE DETECTOR + INKWELL
                // -----------------------------------------------------------------
                return Card(
                  margin: EdgeInsets.all(12),
                  elevation: 5,

                  child: GestureDetector(
                    // GestureDetector permite gestos avanzados
                    onDoubleTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text("Doble click en ${user.username}")),
                      );
                    },

                    child: InkWell(
                      // InkWell para efecto visual + tap básico
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                            title: Text("URL de la imagen"),
                            content: Text(imageUrl),
                            actions: [
                              TextButton(
                                child: Text("Cerrar"),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ],
                          ),
                        );
                      },

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          // Imagen del CSV
                          ClipRRect(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                            child: Image.network(
                              imageUrl,
                              height: 200,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),

                          // Texto debajo
                          Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Usuario: ${user.username}",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    )),
                                SizedBox(height: 5),
                                Text("Contraseña: ${user.password}"),
                                SizedBox(height: 5),
                                Text("Imagen: ${user.photoUrl}"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              
              },
            ),
    );
  }
}
