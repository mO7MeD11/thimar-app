import 'package:flutter/material.dart';
import 'package:thimar/feature/otp/presentation/view/otp_body.dart';

class OtpView extends StatelessWidget {
  const OtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OtpBody(),
    );
  }
}
