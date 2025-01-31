import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrePrimary extends StatelessWidget {
  const PrePrimary({super.key});

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
            "Pre-Primary",
            style: GoogleFonts.outfit(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: const Color.fromARGB(255, 42, 1, 154),
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "We provide pre-primary Education & Training to the Children of tender age, adopting the time tested & globally montessori method of education to give foundation & fine tuned the basic skills.",
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
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Couses",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.black87,
                      height: 1.5, // Line height for readability
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Pre-Mont",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black87,
                      height: 1.5, // Line height for readability
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Mont-1",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black87,
                      height: 1.5, // Line height for readability
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Mont-2",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black87,
                      height: 1.5, // Line height for readability
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Age",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Colors.black87,
                      height: 1.5, // Line height for readability
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "2.5 Yrs",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black87,
                      height: 1.5, // Line height for readability
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "3.5 Yrs",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black87,
                      height: 1.5, // Line height for readability
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "4.5 Yrs",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black87,
                      height: 1.5, // Line height for readability
                    ),
                  ),
                ],
              ),
            ],
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
            "SKV teachers are motherly, sincere, and dedicated, interacting with children in English. \nOur school feels like home, with celebrations at various levels.",
            style: GoogleFonts.outfit(
              fontWeight: FontWeight.w500,
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
