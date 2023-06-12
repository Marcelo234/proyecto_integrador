import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VariationsTile extends StatelessWidget {
  String number;

  VariationsTile({required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 59,
      height: 59,
      decoration: BoxDecoration(
        color: Color(0xff2C3545),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number,
            style: GoogleFonts.montserrat(
              color: Color(0xffF8F7FD),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
