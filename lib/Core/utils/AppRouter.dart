import 'package:booklyapp/Features/Splash/Presentation/Views/SplashView.dart';
import 'package:booklyapp/Features/Splash/home/presentation/views/BookDetailsView.dart';
import 'package:booklyapp/Features/Splash/home/presentation/views/homeView.dart';
import 'package:booklyapp/Features/Splash/search/presentation/Views/SearchView.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{

  static const kHomeView = '/HomeView' ;
  static const kBookDetailsView = '/BookDetailsView' ;
  static const kSearchView = '/SearchView' ;
  static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),),
    GoRoute(
      path: kBookDetailsView,
      builder: (context, state) => const BookDetailsView(),),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => const SearchView(),),

  ]);

  
}