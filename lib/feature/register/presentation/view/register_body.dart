import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:thimar/constant.dart';
import 'package:thimar/core/routing/GoTo.dart';
import 'package:thimar/core/utils/image_assets.dart';
import 'package:thimar/core/widgets/custom_elevatedbutton.dart';
import 'package:thimar/core/widgets/custom_text_form.dart';
import 'package:thimar/feature/register/presentation/view/register_view.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Gap(80),
            Image.asset(ImageAssets.logo, height: 140),
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
              'يمكنك تسجيل حساب جديد الأن',
              textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            Gap(16),
            CustomTextForm(icon: ImageAssets.user, hitText: 'اسم المستخدم'),
            Gap(16),
            CustomTextForm(icon: ImageAssets.phone, hitText: 'رقم الجوال'),
            Gap(16),
            CustomTextForm(icon: ImageAssets.report, hitText: 'المدينة'),
            Gap(16),
            CustomTextForm(icon: ImageAssets.unlock, hitText: 'المدينة'),
            Gap(16),
            CustomTextForm(icon: ImageAssets.unlock, hitText: 'المدينة'),
            Gap(16),
            CustomElevatedbutton(text: 'تسجيل'),
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
