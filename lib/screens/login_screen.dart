import 'package:bloodconnect/screens/HomePage.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_text_field.dart';
import 'registration_screen.dart';

class LoginScreen extends StatelessWidget {
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
              const SizedBox(height: 60),
        // App Logo
        Container(
                decoration: BoxDecoration(
                color: Colors.red[100],
                borderRadius: BorderRadius.circular(20),
                ),
        padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                'assets/blood_logo.png', // Replace with your logo asset
                height: 120,
                width: 120,
                ),
              ),
              const SizedBox(height: 40),
        // Email
        CustomTextField(label: "Enter Email"),
        // Password
        CustomTextField(label: "Enter Password", obscureText: true),
              const SizedBox(height: 20),
        // Login Button
        ElevatedButton(
                onPressed: () {
            // Handle login action
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
        },
        style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                  ),
        padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                ),
        child: const Text(
                "LOGIN",
                style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              const SizedBox(height: 20),
        // Sign Up Navigation
        GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegistrationScreen(),
                    ),
                  );
                },
                child: const Text(
                        "Do not have an account? Sign up here.",
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
