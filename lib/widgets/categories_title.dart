import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../colors.dart';

class CategoriesTtile extends StatelessWidget {
  final String imageUrl;
  final String text;

  CategoriesTtile({required this.imageUrl, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 55,
          height: 55,
          decoration: BoxDecoration(
            color: AppColors.FontColorBlue,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image.asset(
              imageUrl,
              width: 24,
            ),
          ),
        ),
        SizedBox(height: 10),
        Text(
          text,
          style: GoogleFonts.montserrat(
            color: AppColors.FontColorWhite,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
