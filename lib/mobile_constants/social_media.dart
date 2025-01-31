import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySocialMediaButton extends StatelessWidget {
  final image;
  final String text;
  final void Function()? onTap;
  const MySocialMediaButton({
    super.key,
    required this.image,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 167,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(100),
          boxShadow: [
            BoxShadow(
              color: Colors.grey
                  .withOpacity(0.1), // Shadow color with transparency
              spreadRadius: 1, // Spread radius for the shadow
              blurRadius: 6, // Blur radius for the shadow
              offset: const Offset(0, 0), // Offset (x, y) for the shadow
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(
              image,
              height: 32,
            ),
            const SizedBox(width: 14),
            Text(
              text,
              style: GoogleFonts.outfit(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                letterSpacing: 0.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
