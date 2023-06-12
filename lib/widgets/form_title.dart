import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormTile extends StatelessWidget {
  String text;
  String hintText;

  FormTile({
    required this.hintText,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: GoogleFonts.montserrat(
            color: Color(0xffF8F7FD),
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 12),
        Container(
          width: 343,
          height: 40,
          child: TextFormField(
            cursorColor: Colors.white,
            style: GoogleFonts.montserrat(
              color: Color(0xffF8F7FD),
            ),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(left: 20, top: 11),
              fillColor: Color(0xff2C3545),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(21),
                borderSide: BorderSide.none,
              ),
              hintText: hintText,
              hintStyle: GoogleFonts.montserrat(
                color: Color(0xff68687A),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
