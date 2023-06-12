import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationTile extends StatelessWidget {
  String title;
  String text;
  String imageUrl;
  String time;

  NotificationTile({
    required this.imageUrl,
    required this.text,
    required this.time,
    required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.montserrat(
                  color: Color(0xff6C5ECF),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                text,
                style: GoogleFonts.montserrat(
                  color: Color(0xffCFCFCF),
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Image.asset(
                    imageUrl,
                    width: 16,
                  ),
                  SizedBox(width: 4),
                  Text(
                    time,
                    style: GoogleFonts.montserrat(
                      color: Color(0xff8A99AB),
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 17),
        Divider(
          color: Color(0xff707070),
          thickness: 1,
        )
      ],
    );
  }
}
