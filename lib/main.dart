import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() => runApp(BloodDonationApp());

class BloodDonationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
