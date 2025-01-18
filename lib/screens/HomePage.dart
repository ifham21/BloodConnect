import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Greeting Section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Hello, Israt",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Chattogram",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              // Donate Blood Card
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.red[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Donate blood\nSave life",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "How to use?",
                            style: TextStyle(
                              color: Colors.red,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/donate_blood.png', // Replace with your image
                      height: 80,
                      width: 80,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              // Options List
              Column(
                children: [
                  _buildOptionTile(
                    context,
                    icon: Icons.bloodtype,
                    title: "Find Blood",
                    count: "809",
                  ),
                  _buildOptionTile(
                    context,
                    icon: Icons.medical_services,
                    title: "Find Doctor",
                    count: "809",
                  ),
                  _buildOptionTile(
                    context,
                    icon: Icons.local_hospital,
                    title: "Find Medical",
                    count: "029",
                  ),
                  _buildOptionTile(
                    context,
                    icon: Icons.local_gas_station,
                    title: "Find Oxygen",
                    count: "015",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildOptionTile(BuildContext context,
      {required IconData icon, required String title, required String count}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 40,
            color: Colors.red,
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            count,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
