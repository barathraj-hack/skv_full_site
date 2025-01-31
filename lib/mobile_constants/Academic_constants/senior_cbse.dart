import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeniorCbse extends StatelessWidget {
  const SeniorCbse({super.key});

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
            "Senior Secondary Stage (CBSE)",
            style: GoogleFonts.outfit(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 42, 1, 154),
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "Classes 11 & 12",
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w600,
              fontSize: 16,
              color: Colors.black87,
              height: 1.5, // Line height for readability
            ),
          ),
          Text(
            "(Essential Life Skills for a Bright Future)",
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Colors.black87,
              height: 1.5, // Line height for readability
            ),
          ),
          const SizedBox(height: 12),
          Text(
            "Fostering a seamless transition to adulthood by enhancing knowledge, attitudes, and skills in Class 11 and 12 students.",
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
            "Courses Offered in Senior Secondary:",
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: const Color.fromARGB(255, 42, 1, 154),
              height: 1.5, // Line height for readability
            ),
          ),
          const SizedBox(height: 12),
          Text(
            "Science",
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Colors.black,
              height: 1.5, // Line height for readability
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Physics, Chemistry, Mathematics & Biology.",
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Colors.black,
              height: 1.5, // Line height for readability
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Physics, Chemistry, Mathematics & Computer Science.",
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Colors.black,
              height: 1.5, // Line height for readability
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Physics, Chemistry, Biology & Computer Science.",
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Colors.black,
              height: 1.5, // Line height for readability
            ),
          ),
          const SizedBox(height: 12),
          Text(
            "Commerce",
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Colors.black,
              height: 1.5, // Line height for readability
            ),
          ),
          const SizedBox(height: 10),
          Text(
            "Accountancy, Business Studies, Economics & Computer Science",
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Colors.black,
              height: 1.5, // Line height for readability
            ),
          ),
        ],
      ),
    );
  }
}
