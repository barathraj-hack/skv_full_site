import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondaryCbse extends StatelessWidget {
  const SecondaryCbse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color:
                Colors.grey.withOpacity(0.1), // Shadow color with transparency
            spreadRadius: 1, // Spread radius for the shadow
            blurRadius: 6, // Blur radius for the shadow
            offset: const Offset(0, 0), // Offset (x, y) for the shadow
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Secondary Stage (CBSE)",
            style: GoogleFonts.outfit(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 42, 1, 154),
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "Classes 9 & 10",
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Colors.black87,
              height: 1.5, // Line height for readability
            ),
          ),
          Text(
            "(Inculcating Key Life Skills)",
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Colors.black87,
              height: 1.5, // Line height for readability
            ),
          ),
          const SizedBox(height: 12),
          Text(
            "Focus on smooth transformation of childhood to adulthood is achieved by enriching students knowledge attitude skills.",
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Colors.black87,
              height: 1.5, // Line height for readability
            ),
          ),
          const SizedBox(height: 16),
          Container(
            height: 1,
            width: 280, // Ensures the line starts from the container's edge
            margin: const EdgeInsets.only(left: 0), // Removes left padding
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.shade300,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "English, Language II (Hindi, Tamil, or French), Mathematics, Physical Science (Physics and Chemistry), Biological Science, Social Science, IT, Value Education and Life Skills, Art Education, Library, Work Experience, Field Trips, Projects, and Industrial Visits.",
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Colors.black87,
              height: 1.5, // Line height for readability
            ),
          ),
        ],
      ),
    );
  }
}
