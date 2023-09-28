import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';

import '../component/my_text_field.dart';
import 'auth_ui.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  var defaultPadding = 16.0;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: AuthUi(
          child: Expanded(
            child: Container(
              padding: EdgeInsets.all(defaultPadding * 2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    "assets/images/logo.png",
                    height: 100,
                    width: 98,
                  ),
                  const SizedBox(height: 18),
                  Text(
                    "Log In to Admin Panel",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w600)),
                  ),
                  const SizedBox(height: 13),
                  Text(
                    "Enter your phone number and password below",
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w400)),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "EMAIL",
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                color: Color(0xFF101010),
                                fontSize: 12,
                                fontWeight: FontWeight.w600)),
                      )
                    ],
                  ),
                  MyTextField(
                    controller: emailController,
                    icon: EvaIcons.email,
                    hintText: "Enter your email",
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "PASSWORD",
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                color: Color(0xFF101010),
                                fontSize: 12,
                                fontWeight: FontWeight.w600)),
                      )
                    ],
                  ),
                  MyTextField(
                      controller: passwordController,
                      icon: Bootstrap.key,
                      hintText: "Enter your password",
                      passwordIcon: true),
                  const SizedBox(
                    height: 24,
                  ),
                  Container(
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(0xFF101010),
                    ),
                    child: Center(
                      child: Text(
                        "Log In",
                        style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                color: Color(0xFFffffff),
                                fontSize: 14,
                                fontWeight: FontWeight.w600)),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 33,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
