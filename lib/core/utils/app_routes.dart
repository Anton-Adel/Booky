import 'package:booky/features/homa/presentation/views/book_detial_view.dart';
import 'package:booky/features/homa/presentation/views/home_view.dart';
import 'package:booky/features/search/presentation/view/search_view.dart';
import 'package:booky/features/splash/presentaion/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static String homeView = "/homeView";
  static String searchView = "/searchView";
  static String bookDetailsView = "/bookDetailsView";
  static final Routes = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: searchView,
      builder: (context, state) => const SearchView(),
    ),
    GoRoute(
      path: homeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: bookDetailsView,
      builder: (context, state) => const BookDetailsView(),
    )
  ]);
}
