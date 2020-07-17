import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tp_ticketing/views/book_ticket.dart';
import 'package:tp_ticketing/views/signin.dart';
import 'package:tp_ticketing/widgets/customflatbutton.dart';
import 'package:tp_ticketing/widgets/iconwithcontent.dart';

class MyIndexPage extends StatefulWidget {
  @override
  _MyIndexPageState createState() => _MyIndexPageState();
}

class _MyIndexPageState extends State<MyIndexPage> {

  @override
  Widget build(BuildContext context) {
    bool isSmall = false;
    if (MediaQuery.of(context).size.width < 783) {
      isSmall = true;
    }
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(120,20,80,20),
                          width: double.infinity,
                          color: Color(0xff62D9A2),
                          child: Column(
                            children: [
                              Row(
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
                                        textColor: Colors.grey,
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
                                        textColor: Colors.grey,
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
                                        textColor: Colors.grey,
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
                                        textColor: Colors.grey,
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
                              Row(
                              children: [
                                SizedBox(
                                  width: MediaQuery.of(context).size.width * 0.45,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 30, bottom: 10),
                                        child: Text(
                                            'Making Safety Accessible, Visible and Achievable',
                                          style: GoogleFonts.montserrat(
                                              color: Colors.black54,
//                                          color: Color(0xffffffff),
                                            fontSize: 45,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                              ],
                      ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left:120, top: 30, bottom: 30),
                          color: Color(0xffF1F3F4),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                  'Your Safety is our topmost priority',
                                style: GoogleFonts.ubuntu(
                                  color: Colors.black54,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                          SizedBox(
                            height: 50,
                            child: FlatButton(
                             onPressed: (){
                               Navigator.push(context, MaterialPageRoute(builder: (context) => BookTicket()));
                             },
//                                      hoverColor: Color(0xffdbc6eb),
                             color: Color(0xff62d9a2),
//                           splashColor: Colors.white,
                             shape: RoundedRectangleBorder(
                               borderRadius: BorderRadius.all(Radius.circular(5)),
//                             side: BorderSide(color: Colors.black54, width: 1.0),
                             ),
                             child: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Row(
                                 children: [
//                                 FaIcon(
//                                   FontAwesomeIcons.ticketAlt,
//                                   color: Colors.black54,
//                                 ),
//                                 SizedBox(width: 2,),
                                   Text(
                                     'BOOK A TICKET',
                                     style: GoogleFonts.montserrat(color: Colors.black),
                                   ),

                                 ],
                               ),
                             ),
                         ),
                          ),
                            ],
                          ),
                        ),
//                      SizedBox(height: 100,),
                      Container(
                        padding: EdgeInsets.only(top: 60, bottom: 60),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconWithContent(
                              icon:  FontAwesomeIcons.bus,
                              title: 'Security',
                              subtitle: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                            ),
                            IconWithContent(
                              icon:  FontAwesomeIcons.plane,
                              title: 'Reliable',
                              subtitle: 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                            ),
                            IconWithContent(
                              icon:  FontAwesomeIcons.car,
                              title: 'Safe',
                              subtitle: 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Container(
                        padding: EdgeInsets.only(top: 30, bottom: 30),
                        color: Colors.black54,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                           Text(
                              "Copyright © 2020 tp-Tickets. All Rights Reserved" ,
                              style: GoogleFonts.montserrat(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ],
                    ),

                  ],
                ),
               Positioned(
                 right: 78,
                 top: 70,
                 child: Image.asset("asset/images/vehicle.png", width: 500, height: 240,),
               ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
