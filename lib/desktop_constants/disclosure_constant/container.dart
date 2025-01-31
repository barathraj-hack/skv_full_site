import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyContainer extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const MyContainer({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color:
                Colors.grey.withOpacity(0.2), // Shadow color with transparency
            spreadRadius: 0.5, // Spread radius for the shadow
            blurRadius: 6, // Blur radius for the shadow
            offset: const Offset(0, 0), // Offset (x, y) for the shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Text(
            text,
            style: GoogleFonts.outfit(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => onTap,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 42, 1, 154),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.file_download_rounded,
                    color: Colors.white,
                    size: 20,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    "Download",
                    style: GoogleFonts.outfit(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
