import 'package:flutter/material.dart';

//Font Family
const cFontFamily = "OpenSans";

//Colors
const Color cColorPrimary = Color(0xff435AC2);
const Color cColorSecondary = Color(0xffA4B8EA);
const Color cColorForms = Color(0xFFAFBDE2);
const Color cColorWarning = Color(0xFFde4f54);
const Color cColorCheck = Colors.white;

//TextStyles
var cText1 = const TextStyle(
  color: cColorSecondary,
  fontFamily: cFontFamily,
  fontSize: 16,
);

var cTitleText = const TextStyle(
  fontFamily: cFontFamily,
  fontSize: 36,
  color: cColorPrimary,
  fontWeight: FontWeight.w700,
);

var cTitleSecond = const TextStyle(
  fontFamily: cFontFamily,
  fontSize: 24,
  color: cColorPrimary,
  fontWeight: FontWeight.w700,
);

var cText4 = const TextStyle(
  fontFamily: cFontFamily,
  fontSize: 16,
  fontWeight: FontWeight.w500,
  color: cColorWarning,
);

var cText5 = const TextStyle(
  fontFamily: cFontFamily,
  fontSize: 12,
  fontWeight: FontWeight.w700,
);

var cTextLink = const TextStyle(
  fontFamily: cFontFamily,
  fontSize: 12,
  color: cColorPrimary,
  fontWeight: FontWeight.w700,
  decoration: TextDecoration.underline,
);
