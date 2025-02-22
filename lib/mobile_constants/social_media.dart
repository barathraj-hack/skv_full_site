import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MySocialMediaButton extends StatelessWidget {
  final String text;
  final color;
  final colorone;
  final icon;
  final void Function()? onTap;
  const MySocialMediaButton({
    super.key,
    required this.text,
    required this.onTap,
    required this.color,
    required this.colorone,
    required this.icon,
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
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: colorone[100],
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey
                        .withOpacity(0.2), // Shadow color with transparency
                    spreadRadius: 2, // Spread radius for the shadow
                    blurRadius: 6, // Blur radius for the shadow
                    offset: const Offset(0, 3), // Offset (x, y) for the shadow
                  ),
                ],
              ),
              child: FaIcon(
                icon,
                size: 20,
                color: color,
              ),
            ),
            const SizedBox(width: 14),
            Text(
              text,
              style: GoogleFonts.outfit(
                fontSize: 18,
                fontWeight: FontWeight.w500,
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
