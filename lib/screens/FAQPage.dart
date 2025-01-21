import 'package:flutter/material.dart';

class FAQPage extends StatelessWidget {
  final List<Map<String, String>> faqItems = [
    {
      "title": "Why Should You Donate Blood?",
      "content":
      "Donating blood helps save lives. It is essential for surgeries, emergencies, and treating chronic illnesses. Your donation can make a difference."
    },
    {
      "title": "Are YOU Eligible?",
      "content":
      "To donate blood, you must meet specific health requirements, including age, weight, and medical history. Consult with a healthcare professional to ensure you are eligible."
    },
    {
      "title": "BEFORE BLOOD DONATION",
      "content":
      "Make sure you are well-rested, hydrated, and have eaten a healthy meal before donating blood. Avoid alcohol and heavy exercise."
    },
    {
      "title": "AFTER BLOOD DONATION",
      "content":
      "Rest for a while, stay hydrated, and avoid strenuous activities. Eat iron-rich foods to replenish your energy levels."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        title: const Text(
          "FAQ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // FAQ Header
            const Text(
              "Planning For Blood Donation? Things To Keep In Mind",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            const Text(
              "Did you know one unit of donated blood can save up to three lives? This is because your blood is separated into its components (red blood cells, plasma, and platelets). Moreover, blood is needed on a regular basis for people suffering from blood disorders such as thalassemia and hemophilia, and also for the treatment of injuries after an accident, major surgeries, anemia, etc.\n\nWondering if you are eligible for donating blood? Here is what you need to know before you plan for blood donation.",
              style: TextStyle(fontSize: 14, height: 1.5),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: faqItems.length,
                itemBuilder: (context, index) {
                  final faqItem = faqItems[index];
                  return FAQTile(
                    title: faqItem["title"]!,
                    content: faqItem["content"]!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FAQTile extends StatelessWidget {
  final String title;
  final String content;

  const FAQTile({
    Key? key,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: ExpansionTile(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              content,
              style: const TextStyle(fontSize: 14, height: 1.5),
            ),
          ),
        ],
      ),
    );
  }
}
