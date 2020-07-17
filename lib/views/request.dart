import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tp_ticketing/views/book_ticket.dart';
import 'package:tp_ticketing/views/signin.dart';
import 'package:tp_ticketing/widgets/customflatbutton.dart';
import 'package:tp_ticketing/widgets/customtextformfield.dart';

class MyRequest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(left: 120, right: 120, top: 10, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.busAlt,
                        color: Colors.black54,
                      ),
                      SizedBox(width: 5,),
                      Text('tp-Tickets',
                        style: GoogleFonts.ubuntu(
                          color: Colors.black54,
                          fontSize: 24,
                        ),
                      ),
                    ],
                  ),
                  Row(
//                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomFlatButton(
                        textColor: Colors.black,
                        color: Colors.transparent,
                        text: 'Home',
                        borderRadius: 0,
                        borderSideWidth: 0,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MySignIn()));
                        },
                      ),
                      SizedBox(width: 5,),
                      CustomFlatButton(
                        textColor: Colors.black,
                        color: Colors.transparent,
                        text: 'Ticket Status',
                        borderRadius: 0,
                        borderSideWidth: 0,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MySignIn()));
                        },
                      ),
                      SizedBox(width: 5,),
                      CustomFlatButton(
                        textColor: Colors.black,
                        color: Colors.transparent,
                        text: 'About Us',
                        borderRadius: 0,
                        borderSideWidth: 0,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MySignIn()));
                        },
                      ),
                      SizedBox(width: 5,),
                      CustomFlatButton(
                        textColor: Colors.black,
                        color: Colors.transparent,
                        text: 'Contact Us',
                        borderRadius: 0,
                        borderSideWidth: 0,
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MySignIn()));
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xfff1f3f4),
              padding: EdgeInsets.only(left: 120, bottom: 20, top: 10),
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Ticket Summary',
                        style: GoogleFonts.montserrat(
                            color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                        ),
                      ),
                    ),
                  ),
                  Divider(),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Ticket No:                ',
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 35,),
                        Text(
                          '0XFFRdrTHAxKUL20',
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                              fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Departure:               ',
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 35,),
                        Text(
                          'Lagos',
                          style: GoogleFonts.montserrat(
                              color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Destination:            ',
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 35,),
                        Text(
                          'Abuja',
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Time of Departure:',
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 35,),
                        Text(
                          '0000hrs',
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Distance to Travel: ',
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(width: 35,),
                        Text(
                          '537 km',
                          style: GoogleFonts.montserrat(
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 120),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 50,
//                          width: 200,
                          child: FlatButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => BookTicket()));
                            },
//                                      hoverColor: Color(0xffdbc6eb),
                            color: Color(0xff5C4033),
//                           splashColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(5)),
//                             side: BorderSide(color: Colors.black54, width: 1.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'PROCEED WITH MY REQUEST',
                                    style: GoogleFonts.montserrat(color: Colors.white),
//                                  textAlign: TextAlign.center,
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}







//After data entry,
// the summary of the ticket information
// (showing distance to travel, time of departure, ticket number etc)