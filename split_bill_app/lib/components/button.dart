// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MyButton extends StatefulWidget {
  final String? text;
  final VoidCallback? onPressed;

  const MyButton({
    Key? key,
    this.text,
    this.onPressed,
  }) : super(key: key);

  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: ColorConstants.buttonColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: widget.onPressed,
        child: Text(
          widget.text ?? '',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}