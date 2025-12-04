import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: LoginScreen.name,
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/second/:username',
      name: SecondScreen.name,
      builder: (context, state) {
        final username = state.pathParameters['username']!;
        return SecondScreen(username: username);
      },
    ),
  ],
);
