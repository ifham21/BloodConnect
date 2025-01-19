import 'package:bloodconnect/screens/EditProfilePage.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  // Dummy data (replace with real data from the database in the future)
  final Map<String, String> donorData = {
    "name": "Sanjay Jeevan",
    "role": "Donor",
    "bloodGroup": "A+",
    "email": "sanjayjeevan@gmail.com",
    "phone": "0761234567",
    "district": "Kandy",
    "province": "Central",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        title: Text(
          donorData["name"]!,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Role Section
            Center(
              child: Text(
                donorData["role"]!,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Reusable Detail Fields
            DetailField(
              icon: Icons.bloodtype,
              title: "Blood Group",
              value: donorData["bloodGroup"]!,
            ),
            DetailField(
              icon: Icons.email,
              title: "Email",
              value: donorData["email"]!,
            ),
            DetailField(
              icon: Icons.phone,
              title: "Phone",
              value: donorData["phone"]!,
            ),
            DetailField(
              icon: Icons.location_city,
              title: "District",
              value: donorData["district"]!,
            ),
            DetailField(
              icon: Icons.map,
              title: "Province",
              value: donorData["province"]!,
            ),
          ],
        ),
      ),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {
          // Action for editing (navigate to edit screen)
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EditProfilePage(),
            ),
          );
        },
        child: const Icon(Icons.edit),
      ),
    );
  }
}

// Reusable Widget for Profile Details
class DetailField extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;

  const DetailField({
    Key? key,
    required this.icon,
    required this.title,
    required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(
              icon,
              color: Colors.red,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    value,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
