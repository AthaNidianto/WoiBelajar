import 'package:go_router/go_router.dart';
import 'package:woibelajar/routes/routes.dart';
import 'package:woibelajar/screens/auth/sign_in_screen.dart';
import 'package:woibelajar/screens/auth/sign_up_screen.dart';

final GoRouter appRoute = GoRouter(
  initialLocation: '/signup',
  routes: [
    GoRoute(
      name: RouteName.signup.name,
      path: RouteName.signup.path,
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      name: RouteName.signin.name,
      path: RouteName.signin.path,
      builder: (context, state) => const SignInScreen(),
    ),
  ],
);