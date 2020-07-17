import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tp_ticketing/widgets/cardiconbutton.dart';
import 'package:tp_ticketing/widgets/customflatbutton.dart';
import 'package:tp_ticketing/widgets/textfield.dart';


class MySignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isSmall = false;
    if (MediaQuery.of(context).size.width < 783) {
      isSmall = true;
    }
    return Scaffold(
      body: ListView(
        children: [
          Container(
//            color: Color(0xffffffff),
          color: Colors.black,
            width: MediaQuery.of(context).size.width,
//            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.55,
                          height: MediaQuery.of(context).size.height,
                          color: Color(0xffdbc6eb),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
//                        mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('',
                                      style: GoogleFonts.ubuntu(
                                        color: Colors.white,
                                        fontSize: 24,
                                      ),
                                    ),
//                              Image.asset("asset/image/cle.png",),
                                  ],
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.25,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width * 0.4,
                                    child: Text  (
                                        "Welcome to the relationship expert match maker",
                                      softWrap: true,
                                      style: GoogleFonts.montserrat(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
//                      height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.height,
                          color: Color(0xffffffff),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10,),
                                isSmall ? Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Sign Up', style: GoogleFonts.montserrat(fontSize: 25, fontWeight: FontWeight.bold),),
                                    CustomFlatButton(
                                      textColor: Colors.deepPurple,
                                      text: 'Sign in',
                                      borderRadius: 5,
                                      borderSideColor: Color(0xffdbc6eb),
                                      borderSideWidth: 1,
                                      onPressed: (){},
                                    ),
                                  ],
                                ):
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Sign Up', style: GoogleFonts.montserrat(fontSize: 25, fontWeight: FontWeight.bold),),
                                    CustomFlatButton(
                                      textColor: Colors.deepPurple,
                                      text: 'Sign in',
                                      borderRadius: 5,
                                      borderSideColor: Color(0xffdbc6eb),
                                      borderSideWidth: 1,
                                      onPressed: (){},
                                    ),
                                  ],
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.04,),
                                MyTextField(
                                  label: 'Full Name',
                                  onSaved: (val){},
                                  validator: (val){},
                                  hintText: 'Name',
                                  keyboardType: TextInputType.text,
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                                MyTextField(
                                  label: 'Email',
                                  onSaved: (val){},
                                  validator: (val){},
                                  hintText: 'example@mail.com',
                                  keyboardType: TextInputType.emailAddress,
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                                MyTextField(
                                  obsureText: true,
                                  label: 'Password',
                                  onSaved: (val){},
                                  validator: (val){},
                                  hintText: 'Password',
                                  keyboardType: TextInputType.visiblePassword,
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
                                MyTextField(
                                  obsureText: true,
                                  label: 'Confirm Password',
                                  onSaved: (val){},
                                  validator: (val){},
                                  hintText: 'Repeat Password',
                                  keyboardType: TextInputType.visiblePassword,
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                                CheckboxListTile(
                                  value: false,
                                  title: Text("I agree to the term of use"),
                                  onChanged: (val){
                                    print(val);
                                  },
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CustomFlatButton(
                                      color: Colors.purple,
                                      textColor: Colors.white,
                                      text: 'Create My Account',
                                      onPressed: (){},
                                      borderRadius: 5,
                                    ),
                                  ],
                                ),
                                SizedBox(height: MediaQuery.of(context).size.height * 0.01,),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text('Create an account with ', style: GoogleFonts.montserrat(fontSize: 16,),),
                                        SizedBox(height: 2,),
                                        isSmall ? Column (
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            MyCardIconButton(
                                              onTap: (){},
                                              icon: FontAwesomeIcons.google,
                                              color: Colors.red,
                                              text: 'oogle',
                                            ),
                                            SizedBox(width: 40,),
                                            MyCardIconButton(
                                              onTap: (){},
                                              icon: FontAwesomeIcons.facebook,
                                              color: Colors.blue,
                                              text: 'acebook',
                                            ),
                                          ],
                                        ) : Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            MyCardIconButton(
                                              onTap: (){},
                                              icon: FontAwesomeIcons.google,
                                              color: Color(0xffde5246),
                                              text: 'Google',
                                            ),
                                            SizedBox(width: 40,),
                                            MyCardIconButton(
                                              onTap: (){},
                                              icon: FontAwesomeIcons.facebookF,
                                              color: Color(0xff4267B2),
                                              text: 'Facebook',
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Positioned(
                  left: 10,
                  top: -40,
                  child: Image.asset("asset/image/cle.png", width: 200, height: 140,),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
