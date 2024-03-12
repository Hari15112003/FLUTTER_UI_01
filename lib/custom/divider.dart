import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final String text;
  const CustomDivider({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Divider(
              height: 20,
              thickness: 2,
            ),
          ),
        ),
        Text(
          text,
          style: const TextStyle(
              color: Colors.grey, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const Expanded(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Divider(
              height: 20,
              thickness: 2,
            ),
          ),
        )
      ],
    );
  }
}
