class Routes {
  final String name;
  final String path;

  const Routes({required this.name, required this.path});
}

class RouteName {
  RouteName._();

  static const signup = Routes(name: 'signup', path: '/signup');
  static const signin = Routes(name: 'signin', path: '/signin');
}