import 'package:flutter/material.dart';
import 'screens/registration_screen.dart';

void main() => runApp(BloodDonationApp());

class BloodDonationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegistrationScreen(),
    );
  }
}
