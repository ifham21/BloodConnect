import 'package:flutter/material.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  // Temporary variables to store selected options (replace with actual data later)
  String selectedRole = "Donor"; // Default role
  String selectedProvince = "Enter your Province";
  String selectedDistrict = "Enter your District";

  // Sample data for dropdown options
  final List<String> provinces = ["Central", "Western", "Eastern"];
  final List<String> districts = ["Kandy", "Colombo", "Jaffna"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        title: const Text(
          "Edit Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Role Selector
            Row(
              children: [
                const Icon(
                  Icons.bloodtype,
                  color: Colors.red,
                ),
                const SizedBox(width: 16),
                const Text(
                  "You are?",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: RadioListTile<String>(
                    title: const Text("Patient"),
                    value: "Patient",
                    groupValue: selectedRole,
                    onChanged: (value) {
                      setState(() {
                        selectedRole = value!;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<String>(
                    title: const Text("Donor"),
                    value: "Donor",
                    groupValue: selectedRole,
                    onChanged: (value) {
                      setState(() {
                        selectedRole = value!;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Province Dropdown
            ProfileDropdown(
              icon: Icons.location_on,
              label: "Province",
              value: selectedProvince,
              items: provinces,
              onChanged: (value) {
                setState(() {
                  selectedProvince = value!;
                });
              },
            ),

            // District Dropdown
            ProfileDropdown(
              icon: Icons.location_city,
              label: "District",
              value: selectedDistrict,
              items: districts,
              onChanged: (value) {
                setState(() {
                  selectedDistrict = value!;
                });
              },
            ),

            const Spacer(),

            // Save Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Action to save changes
                  print("Saved: $selectedRole, $selectedProvince, $selectedDistrict");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "SAVE",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Disclaimer
            const Center(
              child: Text(
                "*Only these fields can be changed.",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Reusable Dropdown Widget
class ProfileDropdown extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final List<String> items;
  final ValueChanged<String?> onChanged;

  const ProfileDropdown({
    Key? key,
    required this.icon,
    required this.label,
    required this.value,
    required this.items,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(icon, color: Colors.red),
            const SizedBox(width: 16),
            Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          value: value,
          items: items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onChanged: onChanged,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
