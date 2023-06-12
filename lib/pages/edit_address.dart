import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/form_title.dart';

class EditAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030E22),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 60.0,
                left: 15,
              ),
              child: Row(
                children: [
                  Image.asset(
                    'assets/box_left.png',
                    width: 40,
                  ),
                  SizedBox(width: 90),
                  Text(
                    'Edit Address',
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 34),
            Column(
              children: [
                FormTile(
                  text: 'Address Title',
                  hintText: 'Address Title',
                ),
                SizedBox(height: 16),
                FormTile(
                  text: 'Name',
                  hintText: 'Name',
                ),
                SizedBox(height: 16),
                FormTile(
                  text: 'Phone Number',
                  hintText: 'Phone Number',
                ),
                SizedBox(height: 16),
                FormTile(
                  text: 'Road Name - House Number',
                  hintText: 'Road Name - House Number',
                ),
                SizedBox(height: 16),
                FormTile(
                  text: 'Province',
                  hintText: 'Province',
                ),
                SizedBox(height: 16),
                FormTile(
                  text: 'City',
                  hintText: 'City',
                ),
                SizedBox(height: 16),
                FormTile(
                  text: 'Subdistrict',
                  hintText: 'Subdistrict',
                ),
                SizedBox(height: 16),
                FormTile(
                  text: 'Pos Number',
                  hintText: 'Pos Number',
                ),
                SizedBox(height: 16),
                FormTile(
                  text: 'Additional Details',
                  hintText: 'Additional Details',
                ),
              ],
            ),
            SizedBox(height: 40),
            Container(
              width: 343,
              height: 47,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xff6C5ECF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )),
                onPressed: () {},
                child: Text(
                  'Save',
                  style: GoogleFonts.montserrat(
                    color: Color(0xffF8F7FD),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Text(
              'Discard',
              style: GoogleFonts.montserrat(
                color: Color(0xff6C5ECF),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
