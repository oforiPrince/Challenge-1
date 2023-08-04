// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NumericKeyboard extends StatelessWidget {
  final Function(String) onKeyPressed;

  const NumericKeyboard({required this.onKeyPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: GridView.count(
        crossAxisCount: 3,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          for (int i = 1; i <= 9; i++)
            ListTile(
              title: Text(
                '$i',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () => onKeyPressed('$i'),
            ),
          ListTile(
            title: Text(
              '',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListTile(
            title: Text(
              '0',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () => onKeyPressed('0'),
          ),
          ListTile(
            title: Icon(Icons.backspace),
            onTap: () => onKeyPressed('backspace'),
          ),
        ],
      ),
    );
  }
}
