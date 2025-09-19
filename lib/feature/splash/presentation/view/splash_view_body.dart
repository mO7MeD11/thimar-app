import 'package:flutter/material.dart';
import 'package:thimar/core/utils/image_assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(ImageAssets.logo));
  }
}
