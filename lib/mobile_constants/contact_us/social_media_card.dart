import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MySocialMediaCard extends StatelessWidget {
  final image;
  final String text;
  final void Function()? onTap;
  const MySocialMediaCard({
    super.key,
    required this.image,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
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
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black,
                letterSpacing: 0.5,
              ),
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 42, 1, 154),
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Icon(
                Icons.link_rounded,
                size: 16,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
