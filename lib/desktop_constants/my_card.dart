import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutSchoolCard extends StatelessWidget {
  final String title;
  final String content;
  final IconData icon;

  const AboutSchoolCard({
    super.key,
    required this.title,
    required this.content,
    this.icon = Icons.star, // Default icon
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color:
                Colors.grey.withOpacity(0.2), // Shadow color with transparency
            spreadRadius: 2, // Spread radius for the shadow
            blurRadius: 6, // Blur radius for the shadow
            offset: const Offset(0, 3), // Offset (x, y) for the shadow
          ),
        ],
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: const Color.fromARGB(255, 42, 1, 154),
            ),
            padding: const EdgeInsets.all(8),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            title,
            style: GoogleFonts.outfit(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            content,
            textAlign: TextAlign.start,
            style: GoogleFonts.outfit(
              fontSize: 16,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
              height: 1.5, // Adjust line height for better readability
            ),
          ),
        ],
      ),
    );
  }
}
