import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFlatButton extends StatelessWidget {

  final Color color;
  final Color textColor;
  final String text;
  final TextStyle style;
  final double borderRadius;
  final Color borderSideColor;
  final double borderSideWidth;
  final Function onPressed;

  CustomFlatButton({
    this.color,
    this.textColor,
    this.text,
    this.style,
    this.borderRadius,
    this.borderSideColor,
    this.borderSideWidth,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: color ?? Colors.white,
      textColor: textColor ?? Colors.black,
      child: Text(
        text,
        style: style ?? GoogleFonts.montserrat(),
      ),
      onPressed: onPressed,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 5)),
        side: BorderSide(color: borderSideColor ?? color, width: borderSideWidth ?? 0),
      ),
    );
  }
}
