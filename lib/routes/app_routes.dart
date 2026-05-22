import 'package:go_router/go_router.dart';
import 'package:woibelajar/screens/auth/sign_in_screen.dart';
import 'package:woibelajar/screens/auth/sign_up_screen.dart';

final GoRouter appRoute = GoRouter(
  initialLocation: '/signup',
  routes: [
    GoRoute(
      path: '/signup',
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      path: '/signin',
      builder: (context, state) => const SignInScreen(),
    ),
  ],
);