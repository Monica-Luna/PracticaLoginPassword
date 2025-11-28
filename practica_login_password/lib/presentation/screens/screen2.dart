import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
    static const String name = 'screen2';
    final String userScreen2;

  const Screen2({super.key, required this.userScreen2});
    


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Estas en la segunda pantalla $userScreen2"),
        actions: [
          IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);  // pop → vuelve a Screen1
            },
          )
        ],
      ),
      body: Center(
        child: 
        Text("Llegaste a la segunda pantalla")),
    );
  }
}
