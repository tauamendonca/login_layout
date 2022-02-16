import 'package:flutter/material.dart';

//Font Family
const cFontFamily = "OpenSans";

//Background Image
var cImage = "assets/images/background.png";

//Colors
const Color cColorPrimary = Color(0xff435AC2);
const Color cColorSecondary = Color(0xffA4B8EA);
const Color cColorForms = Color(0xFFAFBDE2);
const Color cColorWarning = Color(0xFFde4f54);
const Color cColorCheck = Colors.white;

//TextStyles

//Texto básico (usado nos inputs)
var cTextBasic = const TextStyle(
  color: cColorSecondary,
  fontFamily: cFontFamily,
  fontSize: 16,
);

//Texto de Título Principal (Get Started)
var cTitleText = const TextStyle(
  fontFamily: cFontFamily,
  fontSize: 36,
  color: cColorPrimary,
  fontWeight: FontWeight.w700,
);

//Texto de título Secundário (Sign Up)
var cTitleSecond = const TextStyle(
  fontFamily: cFontFamily,
  fontSize: 32,
  color: cColorPrimary,
  fontWeight: FontWeight.w700,
);

//Texto do aviso sobre campo incorreto
var cTextWarning = const TextStyle(
  fontFamily: cFontFamily,
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: cColorWarning,
);

//Texto dos Links (Sign in / Terms of Service / Privacy Policy)
var cTextLink = const TextStyle(
  fontFamily: cFontFamily,
  fontSize: 12,
  color: cColorPrimary,
  fontWeight: FontWeight.w700,
  decoration: TextDecoration.underline,
);

//Texto da Checkbox
var cTextCheckbox = const TextStyle(
  fontFamily: cFontFamily,
  fontSize: 12,
  color: cColorSecondary,
);
