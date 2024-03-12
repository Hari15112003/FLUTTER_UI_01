import 'package:flutter/material.dart';
import 'package:ui_1/custom/button.dart';
import 'package:ui_1/custom/divider.dart';
import 'package:ui_1/custom/text_field.dart';
import 'package:ui_1/pages/forget_password.dart';
import 'package:ui_1/pages/signin_page.dart';

import 'setup_account.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Image.network('https://test27.hackerbro.in/assets/images/login.png'),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Create an Account",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              textBaseline: TextBaseline.alphabetic,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
              prefix: Icons.email,
              controller: TextEditingController(),
              hintText: "abcdefg@gmail.com"),
          CustomTextField(
            prefix: Icons.password,
            controller: TextEditingController(),
            hintText: "123456",
            suffixIcon: Icons.visibility_off,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            function: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SetUpAccount(),
                ),
              );
            },
            text: "Sign up",
          ),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ForgetPassword(),
                ),
              );
            },
            child: const Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 40),
                  child: Text(
                    "Forget the password ?",
                    style: TextStyle(
                      color: Color.fromARGB(255, 39, 57, 176),
                    ),
                  ),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomDivider(text: "Or"),
          const SizedBox(
            height: 15,
          ),
          Image.network(
            'https://i.stack.imgur.com/iP99z.png',
            width: 500,
            height: 80,
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignInPage(),
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
                    text: " Sign in",
                    style: const TextStyle(
                      color: Color.fromARGB(255, 39, 57, 176),
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
