import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyOutlineMobileButton extends StatelessWidget {
  const MyOutlineMobileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromARGB(255, 42, 1, 154),
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        "Fee Details",
        style: GoogleFonts.outfit(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: Colors.black,
          letterSpacing: 0.5,
        ),
      ),
    );
  }
}
