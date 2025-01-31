import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyOutlineButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const MyOutlineButton({
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
          vertical: 12,
          horizontal: 40,
        ), // Simplified padding
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 42, 1, 154),
            strokeAlign: BorderSide.strokeAlignInside,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(10),
        ),

        child: Text(
          text,
          style: GoogleFonts.outfit(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          textAlign: TextAlign.center, // Centers the text
        ),
      ),
    );
  }
}
