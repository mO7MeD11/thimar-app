import 'package:flutter/material.dart';
import 'package:thimar/constant.dart';
import 'package:thimar/core/routing/GoTo.dart';
import 'package:thimar/feature/splash/presentation/view/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('ar'),
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.grey),
          bodyMedium: TextStyle(color: Colors.grey),
          bodySmall: TextStyle(color: Colors.grey),
        ),
      ).copyWith(scaffoldBackgroundColor: Color(0xffFFFFFF)),
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
