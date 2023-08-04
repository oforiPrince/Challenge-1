// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:split_bill_app/screens/verification1.dart';

import '../components/button.dart';
import '../components/square_tile.dart';
import '../components/text_fields.dart';
import '../constants/colors.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.backgroundColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.backgroundColor,
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 100,
                child: Image.asset(
                  'assets/images/logo/logo.png',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const MyTextField(
                  hintText: 'Your Email',
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const MyTextField(
                  hintText: 'Your Password',
                  obscureText: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyButton(
                  text: 'Login',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OtpScreen1()),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'New to WPay? Sign Up',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: 50),
              Text(
                " Or Continue With ",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(
                    imagePath: "assets/images/auth_logos/google.png",
                  ),
                  SizedBox(width: 20),
                  SquareTile(
                    imagePath: "assets/images/auth_logos/google.png",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
