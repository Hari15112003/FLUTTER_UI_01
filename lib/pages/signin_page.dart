import 'package:flutter/material.dart';
import 'package:ui_1/custom/button.dart';
import 'package:ui_1/custom/divider.dart';
import 'package:ui_1/custom/text_field.dart';
import 'package:ui_1/pages/signup_page.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Image.network(
            colorBlendMode: BlendMode.difference,
            color: Colors.transparent,
            "https://qrologic.com/images/Mini-ATM-Service.png",
          ),
          const SizedBox(
            height: 10,
          ),
          const Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Let's Sign in",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  textBaseline: TextBaseline.alphabetic,
                ),
              ),
            ),
          ),
          CustomTextField(
              readOnly: true,
              prefix: Icons.facebook,
              controller: TextEditingController(),
              hintText: "Continue with Facebook"),
          CustomTextField(
              readOnly: true,
              prefix: Icons.g_mobiledata,
              controller: TextEditingController(),
              hintText: "Continue with Google"),
          CustomTextField(
              readOnly: true,
              prefix: Icons.email,
              controller: TextEditingController(),
              hintText: "Continue with Instagram"),
          const SizedBox(
            height: 10,
          ),
          const CustomDivider(text: "Or"),
          const SizedBox(
            height: 20,
          ),
          CustomButton(function: () {}, text: "Sign in with password"),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignUpPage(),
                ),
              );
            },
            child: RichText(
              text: TextSpan(
                style: const TextStyle(color: Colors.black),
                text: "Don't have an account?",
                children: [
                  TextSpan(
                    onEnter: (e) {},
                    text: " Sign up",
                    style: const TextStyle(
                      color: Color.fromARGB(255, 48, 39, 176),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
