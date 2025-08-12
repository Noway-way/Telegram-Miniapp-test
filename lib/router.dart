import 'package:example/main.dart';
import 'package:go_router/go_router.dart';

enum RouteNames { home }

final GoRouter router = GoRouter(routes: [
  // Parent route: BetChoicePage
  GoRoute(
    path: '/',
    name: RouteNames.home.name,
    builder: (context, state) {
      // The initial route that shows the BetChoicePage.
      return const MyHomePage();
    },
  ),
]);
