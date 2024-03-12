import 'package:flutter/material.dart';
import 'package:ui_1/custom/button.dart';
import 'package:ui_1/custom/text_field.dart';

class SetUpAccount extends StatelessWidget {
  const SetUpAccount({super.key});

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
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Set up your Account",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Complete your profile by providing your biography!",
              style: TextStyle(
                fontSize: 17,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                textBaseline: TextBaseline.alphabetic,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            text(text: "Name"),
            CustomTextField(
                prefix: null,
                controller: TextEditingController(),
                hintText: "Harisha Rajan"),
            text(text: "Email"),
            CustomTextField(
                prefix: null,
                controller: TextEditingController(),
                hintText: "harish.rr.9791@gmail.com"),
            text(text: "Phone"),
            CustomTextField(
                prefix: null,
                controller: TextEditingController(),
                hintText: "+91 XXXXX XXXXX"),
            text(text: "Password"),
            CustomTextField(
              prefix: null,
              controller: TextEditingController(),
              hintText: "123456..",
              suffixIcon: Icons.visibility_off,
            ),
            text(
              text: "Confirm Password",
            ),
            CustomTextField(
              prefix: null,
              controller: TextEditingController(),
              hintText: "123456..",
              suffixIcon: Icons.visibility_off,
            ),
            const SizedBox(
              height: 100,
            ),
            CustomButton(
                function: () {
                  Navigator.pop(context);
                },
                text: "Submit")
          ],
        ),
      ),
    ));
  }

  Widget text({required String text}) {
    return Text(
      text,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
