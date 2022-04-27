import 'package:flutter/material.dart';

//Blue
class Blue {
  static Color light = const Color(0xff65EFF3);
  static Color standard = const Color(0xff17BBBF);
  static Color dark = const Color(0xff008B90);
}

//Brown
class Brown {
  static Color light = const Color(0xffFFC791);
  static Color standard = const Color(0xffD99663);
  static Color dark = const Color(0xffA56837);
}

//Gray
class Gray {
  static Color textFieldBorder = const Color(0xffBEBEBE);
  static Color textHint = const Color(0xff999999);
  static Color textEventSpecificInformations = const Color(0xff797979);
  static Color textEventInformations = const Color(0xff5D5D5D);
  static Color textEventTitle = const Color(0xff414141);
}

//White
class White {
  static Color standard = const Color(0xffFFFFFF);
  static Color lightHoverWhite = const Color(0xffF3F3F3);
  static Color darkHoverWhite = const Color(0xffE8E8E8);
}

//Black
class Black {
  static Color standard = const Color(0xff000000);
}

Widget verticalSpacer(double height) {
  return SizedBox(
    height: height,
  );
}

Widget horizontalSpacer(double width) {
  return SizedBox(
    width: width,
  );
}

String dateFormat(DateTime date) {
  String formattedDate = "";

  if (date.day < 10) formattedDate += '0';
  formattedDate += date.day.toString();
  formattedDate += '/';
  if (date.month < 10) formattedDate += '0';
  formattedDate += date.month.toString();
  formattedDate += '/';
  formattedDate += date.year.toString();
  formattedDate += ' - ';
  if (date.hour < 10) formattedDate += '0';
  formattedDate += date.hour.toString();
  formattedDate += 'h';
  if (date.minute < 10) formattedDate += '0';
  formattedDate += date.minute.toString();

  return formattedDate;
}
