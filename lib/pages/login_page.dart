// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:expense_app/utilities/main_logo.dart';
import 'package:expense_app/utilities/my_textfield.dart';
import 'package:expense_app/utilities/signin_button.dart';
import 'package:flutter/material.dart';

import '../utilities/tiles.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //controller declaration
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //user sign in declaration
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 15),
        
                //logo
                MainLogo(image_path: 'lib/images/wallet.png'),
        
                //welcome back
        
                const SizedBox(height: 15),
        
                Text(
                  'Welcome back!',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 44,
                      fontWeight: FontWeight.bold),
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
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
        
                const SizedBox(height: 25),
        
                //sign in button
        
                MyButton(
                  onTap: signUserIn,
                ),
        
                const SizedBox(height: 50),
        
                //continue with google
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'or',
                          style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                ),
        
        
        
                const SizedBox(height: 50),
                
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //google button
                    SquareTile(imagePath: 'lib/images/search.png'),
        
                    const SizedBox(width: 25),
        
                    //apple button 
                    SquareTile(imagePath: 'lib/images/apple.png'),
                  ],
                ),
        
        
                const SizedBox(height: 50),
                //sign up
        
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Don\'t have an account?',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                  ),),
                  const SizedBox(width: 4,),
                  Text('Sign up',
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),)
                ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
