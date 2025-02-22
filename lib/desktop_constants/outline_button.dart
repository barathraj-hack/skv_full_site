import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyOutlineButton extends StatefulWidget {
  final String text;
  final void Function()? onTap;

  const MyOutlineButton({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  _MyOutlineButtonState createState() => _MyOutlineButtonState();
}

class _MyOutlineButtonState extends State<MyOutlineButton> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
          decoration: BoxDecoration(
            color: isHovered ? Colors.black : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: isHovered
                  ? Colors.black
                  : const Color.fromARGB(255, 42, 1, 154),
              width: 1.5,
            ),
          ),
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            style: GoogleFonts.outfit(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: isHovered ? Colors.white : Colors.black,
            ),
            child: Text(widget.text, textAlign: TextAlign.center),
          ),
        ),
      ),
    );
  }
}
