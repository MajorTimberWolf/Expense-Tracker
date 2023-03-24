// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:expense_app/utilities/username.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),

              //logo
              Icon(
                Icons.wallet,
                size: 100,
              ),

              //welcome back

              const SizedBox(height: 50),

              Text(
                'Welcome back we\'ve missed you !',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),

              const SizedBox(height: 25),

              //textfield for username
              MyTextField(),

              
              const SizedBox(height: 15),


              //textfield for password
              MyTextField(),
              //forgot password for dummies

              //sign in button

              //sign up

              //continue with google
            ],
          ),
        ),
      ),
    );
  }
}
