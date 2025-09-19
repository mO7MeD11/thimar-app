import 'package:flutter/material.dart';
import 'package:thimar/feature/forget_password/presentation/view/forget_password_body.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ForgetPasswordBody() ,
    ) ;
  }
}