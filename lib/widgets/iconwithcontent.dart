import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class IconWithContent extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  IconWithContent({this.icon, this.title,this.subtitle});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FaIcon(
            icon,
            size: 60,
            color: Color(0xff62d9a2),
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(subtitle,
            textAlign: TextAlign.center,
            style: GoogleFonts.montserrat(
              color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
