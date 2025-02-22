import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyFilledButton extends StatefulWidget {
  final String text;
  final void Function()? onTap;

  const MyFilledButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  _MyFilledButtonState createState() => _MyFilledButtonState();
}

class _MyFilledButtonState extends State<MyFilledButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          curve: Curves.bounceIn,
          duration: const Duration(milliseconds: 200),
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
          decoration: BoxDecoration(
            color: isHovered
                ? Colors.black
                : const Color.fromARGB(255, 42, 1, 154),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            widget.text,
            style: GoogleFonts.outfit(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
