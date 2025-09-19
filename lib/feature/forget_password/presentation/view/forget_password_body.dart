import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:thimar/constant.dart';
import 'package:thimar/core/utils/image_assets.dart';
import 'package:thimar/core/widgets/custom_elevatedbutton.dart';
import 'package:thimar/core/widgets/custom_text_form.dart';

class ForgetPasswordBody extends StatelessWidget {
  const ForgetPasswordBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
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
              'أدخل رقم الجوال المرتبط بحسابك',
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Gap(20),
            CustomTextForm(icon: ImageAssets.phone, hitText: 'رقم الجوال'),
            Gap(20),
            CustomElevatedbutton(text: 'تأكيد رقم الجوال'),
            Gap(260),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'تسجيل الدخول',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      color: KPColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  ' لديك حساب بالفعل ؟  ',
                  textDirection: TextDirection.rtl,

                  style: TextStyle(
                    color: KPColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
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
