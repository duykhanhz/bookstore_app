import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:inkmelo_app/config/Colors.dart';

class TextFormFieldDefault extends StatelessWidget {
  const TextFormFieldDefault(
      {super.key,
      required this.labelText,
      required this.hintText,
      required this.validator,
      required this.textController});

  final String labelText;
  final String hintText;
  final FormFieldValidator<String> validator;
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 272  ,
      // color: Colors.red,
      child: TextFormField(
        validator: validator,
        controller: textController,
        style: GoogleFonts.openSans(
            textStyle: TextStyle(
                color: Colors.black,
                fontSize: 15  ,
                fontWeight: FontWeight.bold)),
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          labelStyle: GoogleFonts.openSans(
            textStyle: TextStyle(
                color: primaryColor,
                fontSize: 15  ,
                fontWeight: FontWeight.w900),
          ),
          hintStyle: GoogleFonts.openSans(
              textStyle: TextStyle(
                  color: kLowTextColor,
                  fontSize: 15  ,
                  fontWeight: FontWeight.w700)),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 26  , vertical: 10  ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28  ),
              borderSide: const BorderSide(
                  width: 2, color: Color.fromARGB(255, 220, 220, 220)),
              gapPadding: 10),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28  ),
              borderSide: const BorderSide(
                  width: 2, color: Color.fromARGB(255, 220, 220, 220)),
              gapPadding: 10),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(28  ),
              borderSide: const BorderSide(
                  width: 2, color: Color.fromARGB(255, 220, 220, 220)),
              gapPadding: 10),
        ),
      ),
    );
  }
}
