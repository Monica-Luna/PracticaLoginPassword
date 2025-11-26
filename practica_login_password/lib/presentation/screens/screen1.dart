import 'package:flutter/material.dart';
import 'package:practica_login_password/presentation/screens/screen2.dart';

class Screen1 extends StatelessWidget {
   final user = TextEditingController();
   final password = TextEditingController();
  
  Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Introduce tu usuario y contaseña")),
      body: Center(
          child: Padding(
            padding: EdgeInsets.all(30),

            child: Column(

            children: [
              TextFormField(
                controller: user,
                decoration: InputDecoration(labelText: "Usuario"),
              ),

              SizedBox(height: 20),

              TextFormField(
                controller: password,
                decoration: InputDecoration(labelText: "Contraseña"),
              ),

              SizedBox(height: 20),

              
            ],
          ),
        ),
      ),
    );
  }
}

