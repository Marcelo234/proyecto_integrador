import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Home_page.dart';
import 'order_details.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030E22),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) =>
                            HomePage(),
                        transitionDuration: Duration(seconds: 0),
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/box_left.png',
                    width: 40,
                  ),
                ),
                Text(
                  'Cart',
                  style: GoogleFonts.montserrat(
                    color: Color(0xffFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xff2C3545),
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/checkout_icon.png',
                        width: 28,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 24),
          Column(
            children: [
              Container(
                width: 344,
                height: 115,
                decoration: BoxDecoration(
                  color: Color(0xff2C3545),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/product_two.png',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Nike Air Force X-AC Girl \nStyle',
                            style: GoogleFonts.montserrat(
                              color: Color(0xffF8F7FD),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '100',
                            style: GoogleFonts.montserrat(
                              color: Color(0xffF8F7FD),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 120.0),
                            child: Image.asset(
                              'assets/plusmin_icon.png',
                              width: 66,
                              height: 28,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                width: 344,
                height: 115,
                decoration: BoxDecoration(
                  color: Color(0xff2C3545),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/watch.png',
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Smartwatch 2.0',
                            style: GoogleFonts.montserrat(
                              color: Color(0xffF8F7FD),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '100',
                            style: GoogleFonts.montserrat(
                              color: Color(0xffF8F7FD),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 120.0, top: 10),
                            child: Image.asset(
                              'assets/plusmin_icon.png',
                              width: 66,
                              height: 28,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff030E22),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Text(
                '100',
                style: GoogleFonts.montserrat(
                  color: Color(0xffF8F7FD),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              label: ''),
          BottomNavigationBarItem(
            icon: Container(
              width: 153,
              height: 47,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Color(0xff6C5ECF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    )),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) =>
                          OrderDetails(),
                      transitionDuration: Duration(seconds: 0),
                    ),
                  );
                },
                child: Text(
                  'Checkout',
                  style: GoogleFonts.montserrat(
                    color: Color(0xffF8F7FD),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            label: '',
          )
        ],
      ),
    );
  }
}
