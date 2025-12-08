import 'package:go_router/go_router.dart';
import 'package:practica_login_password/presentation/screens/screen1.dart';
import 'package:practica_login_password/presentation/screens/screen2.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: Screen1.name,
      builder: (context, state) => Screen1(),
    ),
    GoRoute(
      path: '/screen2/:username',
      name: Screen2.name,
      builder: (context, state) {
        final username = state.pathParameters['username']!;
        return Screen2(username: username);
      },
    ),
  ],
);
