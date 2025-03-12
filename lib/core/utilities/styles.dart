import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/core/functions/get_responsive_size.dart';

class Styles {

  static TextStyle style60(BuildContext context) =>  TextStyle(
    fontSize: getResponsiveSize(context, 50),
    fontFamily: 'Oswald',
  );
    static TextStyle style45(BuildContext context) => TextStyle(
    fontSize: getResponsiveSize(context, 45),
    fontWeight: FontWeight.w500,
    fontFamily: 'Oswald',
  );
   static TextStyle style40(BuildContext context) =>  TextStyle(
    fontSize: getResponsiveSize(context, 40),
    fontWeight: FontWeight.w500,
    fontFamily: 'Oswald',
  );



  static TextStyle style22 (BuildContext context) =>  TextStyle(
   
    fontFamily: 'Oswald',
    fontSize: getResponsiveSize(context, 22),
  );
    static TextStyle style20 (BuildContext context) => TextStyle(
    fontFamily: 'Oswald',
    fontSize: getResponsiveSize(context, 20),
    fontWeight: FontWeight.bold,
  );
  static TextStyle style18 (BuildContext context) =>TextStyle(
    fontFamily: 'Oswald',
    fontSize: getResponsiveSize(context, 18),
    fontWeight: FontWeight.w500,
  );
  static TextStyle style12 (BuildContext context) => TextStyle(
    fontFamily: 'Oswald',
    fontSize: getResponsiveSize(context, 12),
    fontWeight: FontWeight.w500,
  );

  
}

