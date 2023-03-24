// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:expense_app/utilities/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //controller declaration
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

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
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 15),

              //textfield for password
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 15),

              //forgot password for dummies

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              )

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
