import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomRaisedButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final Color color;
  final double borderRadius;
  final double borderWidth;
  final Color borderColor;
  final Color textColor;
  CustomRaisedButton({@required this.onPressed, this.text, this.color, this.borderRadius, this.borderWidth, this.borderColor, this.textColor});
  @override
  Widget build(BuildContext context) {
    return  RaisedButton(
      elevation: 0,
      onPressed: onPressed ?? (){},
      child: Text(text ?? '', style: GoogleFonts.playfairDisplay(
        fontSize: 16,
      ),),
      color: color,
      textColor: textColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
            Radius.circular(
                borderRadius ?? 15
            ),
        ),
        side: BorderSide(
            color: borderColor ?? Colors.white,
            width: borderWidth ?? 0.0,
        ),
      ),
    );
  }
}
