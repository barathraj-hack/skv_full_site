import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAcademicRules extends StatelessWidget {
  final String text;
  const MyAcademicRules({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.outfit(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: Colors.black87,
        height: 1.4, // Line height for readability
      ),
    );
  }
}
