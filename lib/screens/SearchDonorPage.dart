import 'package:flutter/material.dart';

class SearchDonorPage extends StatefulWidget {
  @override
  _SearchDonorPageState createState() => _SearchDonorPageState();
}

class _SearchDonorPageState extends State<SearchDonorPage> {
  // Temporary variables to store input values
  String selectedBloodGroup = "Enter Blood Group";
  String province = "";
  String district = "";

  // Sample blood group options
  final List<String> bloodGroups = [
    "A+",
    "A-",
    "B+",
    "B-",
    "AB+",
    "AB-",
    "O+",
    "O-"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        title: const Text(
          "Search Donor",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Blood Group Dropdown
            DropdownField(
              label: "Blood Group",
              value: selectedBloodGroup,
              items: bloodGroups,
              onChanged: (value) {
                setState(() {
                  selectedBloodGroup = value!;
                });
              },
            ),

            // Province TextField
            InputField(
              label: "Province",
              hintText: "Enter your Province",
              onChanged: (value) {
                province = value;
              },
            ),

            // District TextField
            InputField(
              label: "District",
              hintText: "Enter your District",
              onChanged: (value) {
                district = value;
              },
            ),

            const Spacer(),

            // Search Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Action to search donors
                  print(
                      "Searching for: Blood Group: $selectedBloodGroup, Province: $province, District: $district");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "SEARCH",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

// Reusable Dropdown Field
class DropdownField extends StatelessWidget {
  final String label;
  final String value;
  final List<String> items;
  final ValueChanged<String?> onChanged;

  const DropdownField({
    Key? key,
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
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        DropdownButtonFormField<String>(
          value: value == "Enter Blood Group" ? null : value,
          hint: Text(value),
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

// Reusable Input Field
class InputField extends StatelessWidget {
  final String label;
  final String hintText;
  final ValueChanged<String> onChanged;

  const InputField({
    Key? key,
    required this.label,
    required this.hintText,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        TextField(
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: hintText,
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
