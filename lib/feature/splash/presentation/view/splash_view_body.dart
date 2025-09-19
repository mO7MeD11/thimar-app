import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:thimar/core/routing/GoTo.dart';
import 'package:thimar/core/utils/image_assets.dart';
import 'package:thimar/feature/login/presentation/view/login_view.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElasticIn(
        duration: Duration(seconds: 4),
        onFinish: (direction) {
          GoTo(LoginView());
        },
        child: Image.asset(ImageAssets.logo),
      ),
    );
  }
}
