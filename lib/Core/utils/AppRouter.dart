import 'package:booklyapp/Features/Splash/Presentation/Views/SplashView.dart';
import 'package:booklyapp/Features/Splash/home/presentation/views/homeView.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{

  static const kHomeView = '/HomeView' ;
  static final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => const HomeView(),)
  ]);

  
}