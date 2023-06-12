import 'package:ecommerce_app2/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool hidePassword = true;
  bool hideConfirmPassword = true;
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }

  bool isPasswordMatch() {
    String password = passwordController.text;
    String confirmPassword = confirmPasswordController.text;

    return password == confirmPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Align(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.8,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/icon_logo.png',
                width: 80,
              ),
              SizedBox(height: 10),
              Text(
                "Let's Register",
                style: GoogleFonts.montserrat(
                  color: AppColors.FontColorWhite,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 310,
                height: 40,
                child: TextFormField(
                  cursorColor: Colors.white,
                  style:
                      GoogleFonts.montserrat(color: AppColors.FontColorWhite),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    fillColor: AppColors.FontColorBlue,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Nama",
                    hintStyle: GoogleFonts.montserrat(
                      color: AppColors.FontColorWhite,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 310,
                height: 40,
                child: TextFormField(
                  cursorColor: Colors.white,
                  style:
                      GoogleFonts.montserrat(color: AppColors.FontColorWhite),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    fillColor: AppColors.FontColorBlue,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Email",
                    hintStyle: GoogleFonts.montserrat(
                      color: AppColors.FontColorWhite,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 310,
                height: 40,
                child: TextFormField(
                  controller: passwordController,
                  cursorColor: Colors.white,
                  obscureText: hidePassword,
                  style:
                      GoogleFonts.montserrat(color: AppColors.FontColorWhite),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    fillColor: AppColors.FontColorBlue,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Password",
                    hintStyle: GoogleFonts.montserrat(
                      color: AppColors.FontColorWhite,
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                      child: Icon(
                        hidePassword ? Icons.visibility : Icons.visibility_off,
                        color: AppColors.FontColorWhite,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 310,
                height: 40,
                child: TextFormField(
                  controller: confirmPasswordController,
                  cursorColor: Colors.white,
                  obscureText: hideConfirmPassword,
                  style:
                      GoogleFonts.montserrat(color: AppColors.FontColorWhite),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    fillColor: AppColors.FontColorBlue,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                    hintText: "Re-Type Password",
                    hintStyle: GoogleFonts.montserrat(
                      color: AppColors.FontColorWhite,
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          hideConfirmPassword = !hideConfirmPassword;
                        });
                      },
                      child: Icon(
                        hideConfirmPassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                        color: AppColors.FontColorWhite,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Visibility(
                visible: !isPasswordMatch(),
                child: Text(
                  "Passwords do not match",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 295,
                height: 45,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.FontColorPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Register",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an Account?",
                    style: GoogleFonts.montserrat(
                      color: AppColors.FontColorWhite,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        ),
                      );
                    },
                    child: Text(
                      "Login",
                      style: GoogleFonts.montserrat(
                        color: AppColors.FontColorPurple,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
