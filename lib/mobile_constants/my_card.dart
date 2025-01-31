import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyMobileCard extends StatelessWidget {
  final String title;
  final String content;
  final IconData icon;

  const MyMobileCard({
    super.key,
    required this.content,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color:
                Colors.grey.withOpacity(0.1), // Shadow color with transparency
            spreadRadius: 1, // Spread radius for the shadow
            blurRadius: 6, // Blur radius for the shadow
            offset: const Offset(0, 0), // Offset (x, y) for the shadow
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
          const SizedBox(height: 12),
          Text(
            title,
            style: GoogleFonts.outfit(
              fontSize: 18,
              fontWeight: FontWeight.w600,
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
              // Adjust line height for better readability
            ),
          ),
        ],
      ),
    );
  }
}
