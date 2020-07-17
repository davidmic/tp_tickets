import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextField extends StatelessWidget {
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

  MyTextField({
    this.label,
    this.hintText,
    this.filled = false,
    this.onSaved,
    this.obsureText = false,
    this.readOnly = false,
    this.controller,
    this.validator,
    this.keyboardType,
    this.autoFocus,
    this.inputFormatters
});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            label,
            style: GoogleFonts.montserrat(
              fontSize: 16,
            ),
        ),
//        SizedBox(height: 2,),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.4,
          child: TextFormField(
            keyboardType: keyboardType,
            obscureText: obsureText,
            readOnly: readOnly,
            controller: controller,
            inputFormatters: inputFormatters,
            onSaved: onSaved,
            validator: validator,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: GoogleFonts.montserrat(
                fontSize: 12,
              ),
              focusColor: Color(0xffdbc6eb),
//                                enabledBorder: OutlineInputBorder(
//                                  borderSide: BorderSide.none,
//                                ),
//                                border: OutlineInputBorder(
//                                  borderSide: BorderSide(),
//                                ),
//                                focusedBorder: OutlineInputBorder(
//                                  borderSide: BorderSide.none,
//                                ),
            ),
          ),
        ),
      ],
    );
  }
}
