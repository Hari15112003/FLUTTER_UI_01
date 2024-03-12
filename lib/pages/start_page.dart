import 'package:flutter/material.dart';
import 'package:ui_1/custom/button.dart';
import 'package:ui_1/pages/signin_page.dart';

class StartingPage extends StatelessWidget {
  const StartingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Image.network(
                  "https://spay.live/wp-content/uploads/2023/01/ezgif-1-f559761275-1.gif"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                customContainer(color: Colors.grey),
                const SizedBox(
                  width: 10,
                ),
                customContainer(color: Colors.grey),
                const SizedBox(
                  width: 10,
                ),
                customContainer(color: const Color.fromARGB(255, 39, 41, 176))
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Save money to save future",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  textBaseline: TextBaseline.alphabetic,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                " Kirby CMS Random content is a great way to simulate activity on your site. Especially the homepage is a perfect place to show randomly selected articles from your blog, a different header image each time",
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton(
              function: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SignInPage()));
              },
              text: "Get Started",
            )
          ],
        ),
      ),
    );
  }

  Widget customContainer({required Color color}) {
    return Container(
      height: 10,
      width: 10,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
    );
  }
}
