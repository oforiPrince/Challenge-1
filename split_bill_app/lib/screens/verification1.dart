// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:split_bill_app/components/button.dart';
import 'package:split_bill_app/screens/verification.dart';

import '../components/keyboard.dart';
import '../constants/colors.dart';

class Country {
  final String name;
  final String code;
  final String flag;

  Country({
    required this.name,
    required this.code,
    required this.flag,
  });
}

class OtpScreen1 extends StatefulWidget {
  const OtpScreen1({Key? key}) : super(key: key);

  @override
  State<OtpScreen1> createState() => _OtpScreen1State();
}

class _OtpScreen1State extends State<OtpScreen1> {
  final TextEditingController _phoneNumberController = TextEditingController();
  String _selectedCountryCode = '+91';

  final List<Country> _countries = [
    // Country(name: 'United States', code: '+1', flag: '🇺🇸'),
    Country(name: 'India', code: '+91', flag: '🇺🇸'),
    Country(name: 'United Kingdom', code: '+44', flag: '🇬🇧'),
    Country(name: 'Australia', code: '+61', flag: '🇦🇺'),
    Country(name: 'Canada', code: '+1', flag: '🇨🇦'),
  ];

  void _onKeyPressed(String number) {
    _phoneNumberController.text = _phoneNumberController.text + number;
  }

  @override
  void dispose() {
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.primaryColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor,
        title: Text(
          'Continue with Phone',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
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
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 50,
              ),
              child: Center(
                child: Text(
                  'Please Enter your phone number to receive a pin code to login.',
                  style: TextStyle(
                    color: Colors.grey[200],
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  // Country code dropdown
                  Expanded(
                    flex: 2,
                    child: DropdownButtonFormField<String>(
                      value: _selectedCountryCode,
                      onChanged: (value) {
                        setState(() {
                          _selectedCountryCode = value!;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Code',
                        hintStyle: TextStyle(
                          color: Colors.grey[300],
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300]!),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      items: _countries
                          .map(
                            (country) => DropdownMenuItem<String>(
                              value: country.code,
                              child: Row(
                                children: [
                                  Text(
                                    country.flag,
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  const SizedBox(width: 8.0),
                                  Text(
                                    country.code,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  // Phone number text field
                  Expanded(
                    flex: 4,
                    child: TextFormField(
                      controller: _phoneNumberController,
                      maxLength: 10,
                      keyboardType: TextInputType.phone,
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                      ],
                      decoration: InputDecoration(
                        hintText: '1234567890',
                        hintStyle: TextStyle(
                          color: Colors.grey[300],
                        ),
                        counterText: '',
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300]!),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50.0),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: MyButton(
                text: 'Send Code',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OtpScreen()),
                  );
                },
              ),
            ),
            const SizedBox(height: 10.0),
            Expanded(
              flex: 1,
              child: NumericKeyboard(onKeyPressed: _onKeyPressed),
            ),
          ],
        ),
      ),
    );
  }
}
