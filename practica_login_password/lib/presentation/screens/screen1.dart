import 'package:flutter/material.dart';
import 'package:practica_login_password/presentation/screens/screen2.dart';

class Screen1 extends StatelessWidget {

  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Introduce tu usuario y contaseña.")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => Screen2()),
            );
          },
          child: Text("Ir a la segunda pantalla"),
        ),
      ),
    );
  }
}