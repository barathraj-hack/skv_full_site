import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryCbse extends StatelessWidget {
  const PrimaryCbse({super.key});

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
            "Primary (CBSE)",
            style: GoogleFonts.outfit(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 42, 1, 154),
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "Classes 1 to 5",
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Colors.black87,
              height: 1.5, // Line height for readability
            ),
          ),
          Text(
            "(Strong Foundation For a Life Time)",
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Colors.black87,
              height: 1.5, // Line height for readability
            ),
          ),
          const SizedBox(height: 12),
          Text(
            "The primary educations I imparted through Multiple Intelligence system of education, Which include play way method and activity Method.",
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
            "English Language II, Hindi/Tamil/French, Mathematics, EVS, IT, Drawing, Music, Language III, (Hindi/Tamil/French), Value Education, Physical and Health Education, Field Trips, Projects, and Industrial Visits",
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
