// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller; //controller is used to control what is being typed on screen
  final String hintText;
  final bool obscureText;

  const MyTextField(
      {super.key,
      required   this.controller,
      required this.hintText,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText, //to hide/show sensitive details like passwords
          decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey.shade500,
          ),
        ),
        fillColor: Colors.deepPurple.shade300,
        filled: true,
        hintText: hintText //to hint the user what and where to type stuff
      )),
    );
  }
}
