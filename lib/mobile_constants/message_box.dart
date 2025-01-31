import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyMessageBox extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String message;
  final image;
  const MyMessageBox({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.message,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
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
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.asset(
                  image,
                  height: 131,
                ),
              ),
              const SizedBox(width: 24),
              Image.asset(
                "lib/images/skvlogo.png",
                height: 82,
              ),
            ],
          ),
          const SizedBox(height: 16),
          RichText(
            textAlign: TextAlign.start,
            text: TextSpan(
              children: [
                TextSpan(
                  text: text1,
                  style: GoogleFonts.outfit(
                    fontSize: 18,
                    color: const Color.fromARGB(
                        255, 42, 1, 154), // Highlighted color for "Mission:"
                    fontWeight:
                        FontWeight.w600, // Optional: to emphasize further
                  ),
                ),
                TextSpan(
                  text: text2,
                  style: GoogleFonts.outfit(
                    fontSize: 16,
                    color: Colors.black87,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 4),
          Text(
            text3,
            style: GoogleFonts.outfit(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            "SKV GROUP OF INSTITUTIONS",
            style: GoogleFonts.outfit(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              letterSpacing: 0.5,
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
            message,
            textAlign: TextAlign.start,
            style: GoogleFonts.outfit(
              fontSize: 16,
              color: Colors.black87,
              fontWeight: FontWeight.w500,
              height: 1.4,
            ),
          ),
        ],
      ),
    );
  }
}
