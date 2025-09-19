import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:thimar/constant.dart';
import 'package:thimar/core/utils/image_assets.dart';
import 'package:thimar/core/widgets/custom_elevatedbutton.dart';

class OtpBody extends StatefulWidget {
  const OtpBody({super.key});

  @override
  State<OtpBody> createState() => _OtpBodyState();
}

class _OtpBodyState extends State<OtpBody> {
  final CountDownController _controller = CountDownController();
  bool isVisible = false;
  @override
  void dispose() {
    isVisible = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,

      children: [
        Gap(80),
        Image.asset(ImageAssets.logo, height: 140),
        Gap(20),
        Text(
          'نسيت كلمة المرور',

          textDirection: TextDirection.rtl,
          style: TextStyle(
            color: KPColor,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        Gap(10),
        Text(
          'أدخل الكود المكون من 4 أرقام المرسل علي رقم الجوال\n+9660548745 ',
          textDirection: TextDirection.rtl,

          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
        Gap(20),

        PinCodeTextField(
          length: 4,
          obscureText: false,
          animationType: AnimationType.fade,
          pinTheme: PinTheme(
            disabledColor: Colors.transparent,
            inactiveColor: Colors.grey.shade100,

            selectedColor: Colors.grey,

            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(10),
            fieldHeight: 60,
            fieldWidth: 70,
            activeFillColor: Colors.white,
          ),
          appContext: context,
        ),
        Gap(20),
        CustomElevatedbutton(
          text: 'تاكيد الكود',
          onPressed: () {
            isVisible = true;
            setState(() {});
          },
        ),
        Gap(20),
        Center(
          child: Text(
            '    لم تستلم الكود  ؟   \nيمكنك إعادة إرسال الكود بعد',
            style: TextStyle(fontSize: 15),
          ),
        ),

        Gap(20),
        if (!isVisible)
          CircularCountDownTimer(
            width: 100,
            height: 100,
            duration: 5,
            fillColor: Colors.grey,
            ringColor: KPColor,
            isReverse: true,
            isReverseAnimation: true,
            controller: _controller,

            onComplete: () {
              isVisible = false;
              setState(() {});
            },
          ),
        Gap(20),

        if (isVisible)
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(120, 45), //
                ),

                onPressed: () {
                  _controller.reset();
                  isVisible = false;
                  setState(() {});
                },
                child: const Text("إعادة الإرسال"),
              ),
            ],
          ),
      ],
    );
  }
}
