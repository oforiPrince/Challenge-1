// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Box extends StatelessWidget {
  final IconData icon;
  final String name;

  const Box({
    Key? key,
    required this.icon,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: SizedBox(
        width: 60,
        height: 60,
        child: Column(
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
