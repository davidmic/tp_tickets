import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyRichText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          text: 'CL',
          style: GoogleFonts.courgette(
            // textStyle: Theme.of(context).textTheme.display1,
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
          children: [
            TextSpan(
              text: 'EA',
              style: TextStyle(color: Color(0xffe46b10), fontSize: 40),
            ),
            TextSpan(
              text: 'VE',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
          ]
      ),
    );
  }
}
