import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCardIconButton extends StatelessWidget {
  final Function onTap;
  final IconData icon;
  final String text;
  final Color color;
  final Color iconColor;

  MyCardIconButton({this.text, this.icon, this.onTap, this.color, this.iconColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: color,
        elevation: 3,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              SizedBox(width: 5,),
              FaIcon(
                icon,
                size: 20,
                color: iconColor ?? Color(0xffffffff),
              ),
              SizedBox(width: 15,),
              Text(text ?? "",
                style: GoogleFonts.ubuntu(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
//2D92F4 - FACEBOOK
//#B4342A - GMAIL