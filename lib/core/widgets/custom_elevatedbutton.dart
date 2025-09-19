import 'package:flutter/material.dart';
import 'package:thimar/constant.dart';

class CustomElevatedbutton extends StatelessWidget {
  const CustomElevatedbutton({super.key, this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,

      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(KPColor),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: BorderSide(color: KPColor, width: 1), //
          ),
        ),

        minimumSize: WidgetStateProperty.all(Size(double.infinity, 60)),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w700,
          fontSize: 15,
        ),
      ),
    );
  }
}
