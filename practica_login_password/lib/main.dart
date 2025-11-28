import 'package:flutter/material.dart';
import 'package:practica_login_password/config/router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Usuario y contraseña',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      // hay que eliminar la propiedad de home
      //home: Screen1(),
      
    );
  }
}



