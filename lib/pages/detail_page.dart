import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/product_list.dart';
import '../widgets/variations_title.dart';
import 'Home_page.dart';
import 'order_details.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff030E22),
      body: SingleChildScrollView(
        child: Column(
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
                  ),
                ],
              ),
            ),
            Image.asset(
              'assets/product_two.png',
              width: 375,
              height: 387,
            ),
            Image.asset(
              'assets/two_circle.png',
              width: 28,
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 34.0, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nike Air Force X-AC Girl Style',
                    style: GoogleFonts.montserrat(
                      color: Color(0xffF8F7FD),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/star_icon.png',
                        width: 88,
                        height: 16,
                      ),
                      SizedBox(width: 5),
                      Text(
                        '(16)',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffCFCFCF),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: [
                      Text(
                        'Rp1.650.000',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffF8F7FD),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 6),
                      Text(
                        'Rp3.850.000',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffCFCFCF),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  Text(
                    'Choose Variations',
                    style: GoogleFonts.montserrat(
                      color: Color(0xffF8F7FD),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 59,
                        height: 59,
                        decoration: BoxDecoration(
                          color: Color(0xff2C3545),
                          borderRadius: BorderRadius.circular(24),
                          border: Border(
                            left: BorderSide(
                              color: Color(0xff6C5ECF),
                            ),
                            right: BorderSide(
                              color: Color(0xff6C5ECF),
                            ),
                            top: BorderSide(
                              color: Color(0xff6C5ECF),
                            ),
                            bottom: BorderSide(
                              color: Color(0xff6C5ECF),
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '36',
                              style: GoogleFonts.montserrat(
                                color: Color(0xffF8F7FD),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      VariationsTile(
                        number: '37',
                      ),
                      VariationsTile(
                        number: '38',
                      ),
                      VariationsTile(
                        number: '39',
                      ),
                      VariationsTile(
                        number: '40',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffF8F7FD),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        'This shoes material is canvas press with foam \nmat, bring back your high school moment with \nthis shoes. Choose your size and just wait for it.',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffCFCFCF),
                        ),
                      ),
                      SizedBox(height: 24),
                      Text(
                        'Related Products',
                        style: GoogleFonts.montserrat(
                          color: Color(0xffF8F7FD),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 16),
                    ],
                  ),
                  Container(
                    width: 380,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ProductList(
                              imageUrl: 'assets/product_eight.png',
                              name: 'Nike Yezzy T-20..',
                              ratings: 'assets/star_icon.png',
                              amount: '(105)',
                              price: 'Rp1.237.000',
                            ),
                            ProductList(
                              imageUrl: 'assets/product_nine.png',
                              name: 'Nike P-Y671 Exc..',
                              ratings: 'assets/star_icon.png',
                              amount: '(105)',
                              price: 'Rp1.237.000',
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ProductList(
                              imageUrl: 'assets/product_ten.png',
                              name: 'Nike Yezzy T-20..',
                              ratings: 'assets/star_icon.png',
                              amount: '(105)',
                              price: 'Rp1.237.000',
                            ),
                            ProductList(
                              imageUrl: 'assets/product_two.png',
                              name: 'Nike Air Force X..',
                              ratings: 'assets/star_icon.png',
                              amount: '(105)',
                              price: 'Rp1.237.000',
                            ),
                          ],
                        ),
                        SizedBox(height: 32),
                        Text(
                          "You've reached the end",
                          style: GoogleFonts.montserrat(
                            color: Color(0xfFF8F7FD),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
        ),
        child: BottomNavigationBar(
          backgroundColor: Color(0xff030E22),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Text(
                'Rp6.150.000',
                style: GoogleFonts.montserrat(
                  color: Color(0xffF8F7FD),
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'assets/checkout_product.png',
                  width: 34,
                  height: 32,
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
                    'Buy Now',
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
      ),
    );
  }
}
