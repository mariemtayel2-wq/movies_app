import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle getTextStyle({
  double fontSize = 14,
  FontWeight fontWeight = FontWeight.normal,
  Color color = Colors.black,
  double? letterSpacing,
  double? height,
  TextDecoration decoration = TextDecoration.none,
  Color? decorationColor,
  FontStyle fontStyle = FontStyle.normal,
  double? wordSpacing,
  Color? backgroundColor,
  List<Shadow>? shadows,
}) {
  return GoogleFonts.roboto(
    fontSize: fontSize,
    fontWeight: fontWeight,
    color: color,
    letterSpacing: letterSpacing,
    height: height,
    decoration: decoration,
    decorationColor: decorationColor,
    fontStyle: fontStyle,
    wordSpacing: wordSpacing,
    backgroundColor: backgroundColor,
    shadows: shadows,
  );
}
TextStyle headingStyle({Color color = Colors.black}) => getTextStyle(
  fontSize: 28,
  fontWeight: FontWeight.bold,
  color: color,
  letterSpacing: 0.5,
  height: 1.3,
);

TextStyle subheadingStyle({Color color = Colors.black87}) => getTextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w400,
  color: color,

);


TextStyle bodyStyle({Color color = Colors.black87}) => getTextStyle(
  fontSize: 14,
  fontWeight: FontWeight.normal,
  color: color,
  height: 1.6,
);
TextStyle textFieldStyle({Color color = Colors.black87}) => getTextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  color: color,

);


TextStyle captionStyle({Color color = Colors.grey}) => getTextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: color,
  letterSpacing: 0.2,
);
TextStyle buttonStyle({Color color = Colors.white}) => getTextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  color: color,
  letterSpacing: 1.2,
);

TextStyle linkStyle({Color color = Colors.blue}) => getTextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,

  color: color,
  decorationColor: color,
);

TextStyle errorStyle() => getTextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: Colors.red,
  letterSpacing: 0.2,
);

TextStyle hintStyle() => getTextStyle(
  fontSize: 14,
  color: Colors.grey.shade400,
  fontStyle: FontStyle.italic,
);

TextStyle labelStyle({Color color = Colors.black54}) => getTextStyle(
  fontSize: 13,
  fontWeight: FontWeight.w500,
  color: color,
  letterSpacing: 0.3,
);

TextStyle italicStyle({Color color = Colors.black87}) => getTextStyle(
  fontSize: 14,
  fontStyle: FontStyle.italic,
  color: color,
  height: 1.5,
);

TextStyle shadowStyle({Color color = Colors.black}) => getTextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold,
  color: color,
  shadows: [
    Shadow(
      blurRadius: 4,
      color: Colors.black38,
      offset: Offset(2, 2),
    ),
  ],
);

TextStyle priceStyle({Color color = Colors.green}) => getTextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
  color: color,
  letterSpacing: 0.5,
);

TextStyle strikeThroughStyle({Color color = Colors.grey}) => getTextStyle(
  fontSize: 14,
  color: color,
  decoration: TextDecoration.lineThrough,
  decorationColor: color,
);