import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAdvestisementCard extends StatelessWidget {
  final String content;
  const MyAdvestisementCard({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        color: const Color.fromARGB(255, 42, 1, 154),
      ),
      child: Text(
        content,
        textAlign: TextAlign.start,
        style: GoogleFonts.outfit(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
