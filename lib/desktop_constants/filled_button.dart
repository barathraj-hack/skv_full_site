import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFilledButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const MyFilledButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
            vertical: 12, horizontal: 25), // Simplified padding
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 42, 1, 154),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text,
          style: GoogleFonts.outfit(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          textAlign: TextAlign.center, // Centers the text
        ),
      ),
    );
  }
}
