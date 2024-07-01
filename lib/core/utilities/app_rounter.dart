import 'package:go_router/go_router.dart';
import 'package:weather_app/features/home/presentation/view/home_view.dart';
import 'package:weather_app/features/home/presentation/view/search_view.dart';

abstract class AppRounter {
  static final routers = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/SearchView',
      builder: (context, state) => const SearchView(),
    )
  ]);
}
