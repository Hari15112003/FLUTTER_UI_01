import 'package:flutter/material.dart';
import 'package:ui_1/custom/button.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              "https://img.freepik.com/premium-vector/online-loan-illustration-flat-design-illustration_108061-448.jpg?w=360",
              height: 300,
            ),
            const Text(
              "Forget Password",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Enter your email and Phone number to send Otp, It take's a few minutes",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            container(
                icon: Icons.phone_android,
                head: "Phone No ",
                foot: "+91 XXXXX XXXXX"),
            container(
                icon: Icons.email,
                head: "Email Address",
                foot: "abcdef@gmail.com"),
            const SizedBox(
              height: 100,
            ),
            CustomButton(
                function: () {
                  Navigator.pop(context);
                },
                text: "Continue"),
          ],
        ),
      ),
    ));
  }

  Widget container(
      {required IconData icon, required String head, required String foot}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Container(
        padding: const EdgeInsets.all(20),
        height: 80,
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 130, 128, 252).withOpacity(.2),
          borderRadius: BorderRadius.circular(11),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              size: 30,
              color: const Color.fromARGB(255, 62, 39, 176).withOpacity(1),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your $head",
                  style: const TextStyle(
                    color: Color.fromARGB(255, 171, 163, 163),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(foot),
              ],
            )
          ],
        ),
      ),
    );
  }
}
