import 'package:example/main.dart';
import 'package:go_router/go_router.dart';

enum RouteNames { home }

// ... other imports

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: RouteNames.home.name,
      builder: (context, state) => const MyHomePage(),
    ),
  ],
  redirect: (context, state) {
    // Check if the current location has the tgWebAppData parameter.
    // If it does, we redirect to the clean path '/'.
    // This effectively strips the query parameters from the initial URL.
    if (state.matchedLocation.contains('tgWebAppData')) {
      return '/';
    }
    return null; // Return null to not redirect.
  },
);
