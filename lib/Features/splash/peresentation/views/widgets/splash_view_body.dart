import 'package:bokly_app/core/utils/assetsdata.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lottie/lottie.dart';

import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
            .animate(animationController);

    animationController.forward();

    void dispose() {
      super.dispose();
      animationController.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Flexible(child: Image.asset(AssetsData.MainLogo)),
        Flexible(
          child: Lottie.network(
            'https://lottie.host/2875bcb5-b647-41e2-a547-d725ef644d90/zk5kLwomf4.json',
          ),
        ),
        Flexible(
          child: SlidingText(slidingAnimation: slidingAnimation),
        ),
      ],
    );
  }
}
