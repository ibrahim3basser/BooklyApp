import 'package:booklyapp/Constants.dart';
import 'package:booklyapp/Core/utils/AppRouter.dart';
import 'package:booklyapp/Core/utils/assets.dart';
import 'package:booklyapp/Features/Presentation/Views/Widgets/SlidingText.dart';
import 'package:booklyapp/Features/Splash/home/presentation/views/homeView.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();

    navigateToHome();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetData.logo),
        const SizedBox(height: 4,),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }
  
  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this , 
      duration: const Duration(seconds: 1));
      slidingAnimation = Tween<Offset>(begin: const Offset(0, 2),end: Offset.zero).animate(animationController);
      animationController.forward();
  }

  void navigateToHome() {
    Future.delayed(const Duration(seconds: 2),(){
      // Get.to(() => const HomeView() , transition: Transition.fade, duration: kTransitionDuration);
      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }
}
