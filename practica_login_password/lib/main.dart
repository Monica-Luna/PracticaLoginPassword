import 'package:flutter/material.dart';
import 'package:practica_login_password/config/router/app_router.dart';
import 'package:practica_login_password/presentation/provider/user_provider.dart';


import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter, // tu GoRouter
      debugShowCheckedModeBanner: false,
    );
  }
}
