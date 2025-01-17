import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

Color primary = const Color(0xFF687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color bgcolor = const Color(0xffeeedf2);
  static Color textColor = const Color(0xFF3b3b3b);
  static Color ticketBlue = const Color(0xFF526799);
  static Color ticketOrange = const Color(0xFFF37B67);
  static Color planeColor = const Color(0xFFBFC2DF);
  static Color findTicketColor = const Color(0xD91130CE);
  static Color circleColor = const Color(0xFF189999);
  static Color ticketColor = const Color(0xFFFFFFFF);
  static Color dotColor = const Color(0xFF8ACCF7);
  static Color ticketColor2 = const Color(0xFFFFFFFF);

  static TextStyle textStyle =
      TextStyle(fontWeight: FontWeight.normal, fontSize: 17, color: textColor);

  static TextStyle headLine1 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 27,
    color: AppStyles.textColor,
  );
  static TextStyle headline2 =
      const TextStyle(fontWeight: FontWeight.w500, fontSize: 17);

  static TextStyle headLine3 = TextStyle(
    fontWeight: FontWeight.normal,
    color: textColor,
    fontSize: 18,
  );

  static TextStyle headLine4 = TextStyle(
  fontWeight: FontWeight.normal,
  color: textColor,
  fontSize: 16,
  );
}
