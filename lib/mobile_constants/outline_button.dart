import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyOutlineMobileButton extends StatelessWidget {
  final void Function()? onTap;
  const MyOutlineMobileButton({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 42, 1, 154),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          "Admission Policy",
          style: GoogleFonts.outfit(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black,
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }
}
