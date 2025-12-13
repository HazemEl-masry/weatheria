import 'package:go_router/go_router.dart';
import 'package:weather_app/features/splash/presentation/screens/splash_screen.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [GoRoute(path: '/', builder: (context, state) => const SplashScreen())],
);
