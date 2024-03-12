import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final IconData? prefix;
  final IconData? suffixIcon;
  final String hintText;
  final TextEditingController controller;
  final bool? readOnly;
  const CustomTextField(
      {super.key,
      required this.prefix,
      this.suffixIcon,
      required this.controller,
      required this.hintText,
      this.readOnly});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 350,
        decoration: BoxDecoration(
            color: const Color.fromARGB(197, 155, 162, 239).withOpacity(.2),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.only(
            right: 20,
          ),
          child: TextField(
            readOnly: readOnly ?? false,
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(horizontal: 12),
              prefixIconConstraints: const BoxConstraints(minHeight: 20),
              suffixIconConstraints: const BoxConstraints(maxHeight: 20),
              prefixIcon: prefix != null
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Container(
                        height: 25,
                        width: 25,
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Icon(
                          prefix,
                          color: Colors.grey,
                          size: 19,
                        ),
                      ),
                    )
                  : null,
              suffixIcon: suffixIcon != null ? Icon(suffixIcon) : null,
              hintText: hintText,
            ),
          ),
        ),
      ),
    );
  }
}
