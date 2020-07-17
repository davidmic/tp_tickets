import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String hintText;
  final bool filled;
  final bool obsureText;
  final FormFieldSetter<String> onSaved;
  final FormFieldValidator validator;
  final TextInputType keyboardType;
  final List<TextInputFormatter> inputFormatters;
  final TextEditingController controller;
  final bool autoFocus;
  final bool readOnly;

  CustomTextFormField({
    this.label,
    this.hintText,
    this.filled = true,
    this.obsureText = false,
  this.onSaved,
    this.validator,
    this.keyboardType,
    this.controller,
    this.inputFormatters,
  this.autoFocus = false,
  this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left:20.0),
          child: Text(label,
            style: GoogleFonts.raleway(
                 textStyle: TextStyle(
                  fontSize: 18,
                   fontWeight: FontWeight.bold,
                   color: Color(0xff62d9a2)
          ),
    ),),
        ),
        SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 5.0),
          height: MediaQuery.of(context).size.height*0.09 ,
          child: TextFormField(
            readOnly: readOnly,
            controller: controller,
            inputFormatters: inputFormatters,
            keyboardType: keyboardType,
            onSaved: onSaved,
            validator: validator,
            autofocus: autoFocus ?? false,
            obscureText: obsureText,
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
              fontSize: 16,
            ),
            ),
            decoration: InputDecoration(
//              filled: true,
              fillColor: Color(0xff62d9a2).withOpacity(0.3),
              hintStyle: TextStyle(fontSize: 14,),
              hintText: hintText ?? label,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(color: Colors.black54, width: 1.0),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(color: Color(0xffF1F3F4), width: 1.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                borderSide: BorderSide(color: Color(0xff62d9a2), width: 1.0),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
