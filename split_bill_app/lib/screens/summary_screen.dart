// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:split_bill_app/constants/colors.dart';

class SummaryPage extends StatelessWidget {
  const SummaryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor,
        title: const Text('Summary Transaction',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            )),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey),
            ),
            child: Center(
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Center(
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.question_mark_rounded,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 80,
              width: 80,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                    color: ColorConstants.profileColor),
                child: Image.asset('assets/images/profiles/starbucks.png'),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Starbucks Coffee',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Payment on Dec 2, 2020',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '\$15.00',
              style: TextStyle(
                color: Colors.grey[200],
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),

            // Show alert with the following message: Payment fee $2 has been applied
          ],
        ),
      ),
    );
  }
}
