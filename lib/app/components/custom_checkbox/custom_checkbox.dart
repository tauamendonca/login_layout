import 'package:flutter/material.dart';
import 'package:login_layout_exercise/app/styles/styles.dart';

class CustomCheckbox extends StatefulWidget {
  final String? textFirst;
  final String? textTwo;
  final String? textTree;
  final String? textFour;
  final String textLink;
  final double? width;

  const CustomCheckbox({
    Key? key,
    this.textFirst,
    this.textTwo,
    this.textTree,
    this.textFour,
    this.textLink = "",
    this.width,
  }) : super(key: key);

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //checkbox redonda
        Checkbox(
          //layout
          checkColor: cColorCheck,
          side: const BorderSide(color: cColorPrimary, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),

          //valor
          value: value,
          onChanged: (bool? value) {
            setState(() {
              this.value = value!;
            });
          },
        ),

        //texto de Remember me / Termos de compromisso
        RichText(
          text: TextSpan(
            //Texto inicial após o Checkbox
            text: widget.textFirst,
            style: cText1,
            children: [
              TextSpan(
                text: widget.textTwo,
                style: cText1,
              ),
              TextSpan(text: widget.textTree, style: cText1),
              TextSpan(
                text: widget.textFour,
                style: cTextLink,
              ),
            ],
          ),
        ),
        SizedBox(
          width: widget.width,
        ),

        //Link - Forgot Password
        Text(
          widget.textLink,
          style: cTextLink,
        )
      ],
    );
  }
}
