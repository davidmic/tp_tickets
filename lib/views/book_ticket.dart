import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tp_ticketing/views/request.dart';
import 'package:tp_ticketing/views/signin.dart';
import 'package:tp_ticketing/widgets/customflatbutton.dart';
import 'package:tp_ticketing/widgets/customtextformfield.dart';

class BookTicket extends StatelessWidget {
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
                      Text('O-Transport',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: CustomTextFormField(
                          label: 'From',
                          keyboardType: TextInputType.text,
                          hintText: 'Type Departure',
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.4,
                        child: CustomTextFormField(
                          label: 'To',
                          keyboardType: TextInputType.text,
                          hintText: 'Type Destination',
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.18,
                          child: CustomTextFormField(
                            label: 'Departure Date',
                            keyboardType: TextInputType.text,
                            hintText: 'dd/mm/yy',
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.18,
                          child: CustomTextFormField(
                            label: 'Departure Time',
                            keyboardType: TextInputType.text,
                            hintText: 'hh/mm/ss',
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.18,
                          child: CustomTextFormField(
                            label: 'Gender',
                            keyboardType: TextInputType.text,
                            hintText: 'select gender',
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.18,
                          child: CustomTextFormField(
                            readOnly: true,
                            label: 'Distance to cover',
                            keyboardType: TextInputType.text,
                            hintText: '0km',
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    padding: EdgeInsets.only(right: 120),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 50,
                          width: 200,
                          child: FlatButton(
                            onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MyRequest()));
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
                                    'BOOK MY TICKET',
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
            Container(
              width: double.infinity,
              child: Image.asset("asset/images/map2.png", fit: BoxFit.cover,),
            ),
          ],
        ),
      ),
    );
  }
}
