import 'package:go_router/go_router.dart';
import 'package:weather_app/features/home/presentation/screens/home_screen.dart';
import 'package:weather_app/features/search/presentation/screens/search_screen.dart';
import 'package:weather_app/features/splash/presentation/screens/splash_screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SplashScreen()),
    GoRoute(
      path: "/HomeScreen",
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: "/SearchScreen",
      builder: (context, state) => const SearchScreen(),
    ),
  ],
);
