import 'package:go_router/go_router.dart';
import 'package:practica_login_password/presentation/screens/screen1.dart';
import 'package:practica_login_password/presentation/screens/screen2.dart';

final GoRouter appRouter = GoRouter(
  routes: [
   GoRoute(
      path: '/',
      name: Screen1.name,
      builder: (context, state) => Screen1(),
    ),

    /*GoRoute(
      path: '/screen2',
      name: Screen2.name,
      builder: (context, state) => Screen2(userScreen2: '',),
    ),*/

    GoRoute(
      path: '/screen2/:userScreen2',  // 👈 Defination of params in the path is important
      name: Screen2.name,
      builder: (context, state) => Screen2(
        userScreen2: state.pathParameters['userScreen2']!,
      ),
    ),
  ],
);
