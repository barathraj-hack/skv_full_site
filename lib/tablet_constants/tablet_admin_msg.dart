import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TabletAdminMessage extends StatelessWidget {
  final String title;
  final String subtitle;
  final String message;
  final String story;
  final imagePath;

  const TabletAdminMessage({
    super.key,
    required this.title,
    required this.subtitle,
    required this.message,
    required this.imagePath,
    required this.story,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // Left-side Image
              ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset(
                  imagePath,
                  height: 250,
                ),
              ),
              const SizedBox(width: 24),
              // Right-side Text Content
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: GoogleFonts.outfit(
                        fontSize: 28,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 42, 1, 154),
                      ),
                    ),
                    Text(
                      subtitle,
                      style: GoogleFonts.outfit(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      message,
                      style: GoogleFonts.outfit(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 50),
                    // Bottom Row with Logo
                    Text(
                      "SKV GROUP OF INSTITUTIONS",
                      style: GoogleFonts.outfit(
                        fontSize: 32,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(255, 42, 1, 154),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Container(
            color: Colors.grey[200],
            height: 2,
            width: 1000,
          ),
          const SizedBox(height: 24),
          Row(
            children: [
              SizedBox(
                width: 740,
                child: Text(
                  story,
                  style: GoogleFonts.outfit(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                    color: Colors.black,
                    height: 1.5, // Line height for readability
                  ),
                ),
              ),
              const Spacer(),
              Image.asset(
                "lib/images/skvlogo.png",
                height: 120,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
