import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:thimar/constant.dart';
import 'package:thimar/core/utils/image_assets.dart';
import 'package:thimar/core/widgets/custom_elevatedbutton.dart';
import 'package:thimar/core/widgets/custom_text_form.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [
            Image.asset(ImageAssets.logo, height: 140),
            Gap(20),
            Text(
              'مرحبا بك مرة أخرى',

              textDirection: TextDirection.rtl,
              style: TextStyle(
                color: KPColor,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Gap(10),
            Text(
              'يمكنك تسجيل الدخول الأن',
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Gap(10),
            CustomTextForm(icon: ImageAssets.phone, hitText: 'رقم الجوال'),
            Gap(10),
            CustomTextForm(icon: ImageAssets.unlock, hitText: 'كلمة المرور'),

            Gap(10),

            Text(
              'نسيت كلمه المرور',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Gap(20),
            CustomElevatedbutton(text: 'تسجيل الدخول'),

            Gap(150),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'تسجيل الدخول',
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    color: KPColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    
                  } ,
                  child: Text(
                    '  ليس لديك حساب ؟  ',
                    textDirection: TextDirection.rtl,
                  
                    style: TextStyle(
                      color: KPColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
