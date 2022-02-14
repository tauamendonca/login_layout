import 'package:flutter/material.dart';
import 'package:login_layout_exercise/app/styles/styles.dart';

class CustomFieldText extends StatelessWidget {
  final Align? align;
  final String? hintText;
  final bool obscureText;
  final TextEditingController? controller;
  final Function(String?)? onChanged;
  final String? Function(String? value) validator;
  const CustomFieldText({
    Key? key,
    this.hintText,
    this.controller,
    this.onChanged,
    this.align,
    required this.validator,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      key: key,
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 8),
        hintText: hintText,
        hintStyle: cText1,
        enabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            color: cColorSecondary,
          ),
        ),
      ),
      style: cText1,
      textAlignVertical: TextAlignVertical.bottom,
    );
  }
}
