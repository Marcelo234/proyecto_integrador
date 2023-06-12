import 'package:ecommerce_app2/colors.dart';
import 'package:ecommerce_app2/widgets/categories_title.dart';
import 'package:ecommerce_app2/widgets/product_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'cart_page.dart';
import 'search_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2C3545),
        title: Text(
          'Inventario',
          style: GoogleFonts.montserrat(
            color: AppColors.FontColorWhite,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(
                Icons.person_outline_rounded,
              ),
              title: Text('Perfil'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configuracion'),
              onTap: () {},
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xff030E22),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        width: 295,
                        height: 40,
                        child: TextFormField(
                          cursorColor: Colors.white,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(
                              top: 11,
                              bottom: 11,
                            ),
                            fillColor: Color(0xff2C3545),
                            filled: true,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(21),
                              borderSide: BorderSide.none,
                            ),
                            hintText: "I'm searching for..",
                            hintStyle: GoogleFonts.montserrat(
                              color: Color(0xff68687A),
                            ),
                            prefixIcon: InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                  context,
                                  PageRouteBuilder(
                                    pageBuilder:
                                        (context, animation1, animation2) =>
                                            SearchPage(),
                                    transitionDuration: Duration(seconds: 0),
                                  ),
                                );
                              },
                              child: Icon(
                                Icons.search,
                                color: Color(0xff68687A),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  left: 16,
                  right: 16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Bienvenidos al sistema",
                      style: GoogleFonts.montserrat(
                        color: AppColors.FontColorWhite,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20.0,
                  left: 20.0,
                  right: 20,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CategoriesTtile(
                          imageUrl: 'assets/category_two.png',
                          text: 'Stationary',
                        ),
                        CategoriesTtile(
                          imageUrl: 'assets/category_two.png',
                          text: 'Electronic',
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/category_three.png',
                          width: 120, // Ajusta el valor según tus necesidades
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Panama',
                          style: GoogleFonts.montserrat(
                            color: AppColors.FontColorWhite,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Image.asset(
                          'assets/category_four.png',
                          width: 120, // Ajusta el valor según tus necesidades
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0, left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Something you like:',
                      style: GoogleFonts.montserrat(
                        color: AppColors.FontColorWhite,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20.0, left: 40, right: 40, bottom: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProductList(
                          imageUrl: 'assets/product_four.png',
                          name: 'Garnier Pure Act..',
                          ratings: 'assets/star_icon.png',
                          amount: '(16)',
                          price: 'Rp4.500.000',
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ProductList(
                          imageUrl: 'assets/product_five.png',
                          name: 'Rexus Headphon..',
                          ratings: 'assets/star_icon.png',
                          amount: '(16)',
                          price: 'Rp1.650.000',
                        ),
                        ProductList(
                          imageUrl: 'assets/product_six.png',
                          name: 'Airpods',
                          ratings: 'assets/star_icon.png',
                          amount: '(16)',
                          price: 'Rp4.500.000',
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
        ),
      ),
    );
  }
}
