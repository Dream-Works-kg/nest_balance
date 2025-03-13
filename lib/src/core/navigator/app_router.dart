import 'package:go_router/go_router.dart';
import 'package:nest_balance/src/presentations/home/home.dart';
import 'package:nest_balance/src/presentations/splash/splash.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: '/home_view',
        builder: (context, state) => HomeView(),
      ),
    ],
  );
}
