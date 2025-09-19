import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({super.key, required this.icon, required this.hitText});

  final String icon;
  final String hitText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintStyle: TextStyle(color: Colors.grey),
        hintText: hitText,
        hintTextDirection: TextDirection.rtl,
        suffixIcon: Image.asset(icon),
        focusedBorder: _decorationInput(),
        enabledBorder: _decorationInput(),
        disabledBorder: _decorationInput(),
        border: _decorationInput(),
      ),
    );
  }

  OutlineInputBorder _decorationInput() {
    return OutlineInputBorder(
      borderSide: BorderSide(width: .5, color: Colors.grey.shade400),
      borderRadius: BorderRadius.circular(10),
    );
  }
}
