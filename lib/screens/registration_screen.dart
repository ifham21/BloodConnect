import 'package:bloodconnect/screens/home_screen.dart';
import 'package:bloodconnect/screens/login_screen.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_text_field.dart';

class RegistrationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              // App Logo
              Image.asset(
                'assets/blood_logo.png', // Replace with your logo asset
                height: 100,
                width: 100,
              ),
              const SizedBox(height: 10),
              // Full Name
              CustomTextField(label: "Enter Full Name"),
              // Email
              CustomTextField(label: "Enter Email"),
              // Phone Number
              CustomTextField(label: "Enter Phone Number"),
              // Password
              CustomTextField(label: "Enter Password", obscureText: true),
              // Confirm Password
              CustomTextField(label: "Confirm Password", obscureText: true),
              // Blood Group
              CustomTextField(label: "Enter blood group"),
              // Province
              CustomTextField(label: "Enter your province"),
              // District
              CustomTextField(label: "Enter your district"),
              const SizedBox(height: 10),
              // Role Selection
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("You are?"),
                  const SizedBox(width: 10),
                  Row(
                    children: [
                      Radio(
                          value: "Patient",
                          groupValue: "role",
                          onChanged: (_) {}),
                      const Text("Patient"),
                    ],
                  ),
                  const SizedBox(width: 10),
                  Row(
                    children: [
                      Radio(
                          value: "Donor",
                          groupValue: "role",
                          onChanged: (_) {}),
                      const Text("Donor"),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 5),
              // Register Button
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 13),
                ),
                child: const Text(
                  "REGISTER",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              const SizedBox(height: 10),
              // Already Have Account
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  );
                },
                child: const Text(
                  "Already have an account? Click here.",
                  style: TextStyle(
                    color: Colors.black54,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
