import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ClassDetailNew extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  const ClassDetailNew({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text1,
            style: GoogleFonts.outfit(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 42, 1, 154),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            text2,
            style: GoogleFonts.outfit(
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            text3,
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Colors.black,
              height: 1.5, // Line height for readability
            ),
          ),
          const SizedBox(height: 12),
          Text(
            text4,
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w400,
              fontSize: 20,
              color: Colors.black,
              height: 1.5, // Line height for readability
            ),
          ),
          const SizedBox(height: 16),
          Text(
            text5,
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Colors.black,
              height: 1.5, // Line height for readability
            ),
          ),
        ],
      ),
    );
  }
}
