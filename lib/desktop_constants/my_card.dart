import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutSchoolCard extends StatefulWidget {
  final String title;
  final String content;
  final IconData icon;

  const AboutSchoolCard({
    super.key,
    required this.title,
    required this.content,
    this.icon = Icons.star, // Default icon
  });

  @override
  State<AboutSchoolCard> createState() => _AboutSchoolCardState();
}

class _AboutSchoolCardState extends State<AboutSchoolCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeInOut,
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 6,
                offset: const Offset(0, 3),
              ),
            ],
            borderRadius: BorderRadius.circular(20),
            color: _isHovered
                ? const Color.fromARGB(255, 42, 1, 154)
                : Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: _isHovered
                      ? Colors.white
                      : const Color.fromARGB(255, 42, 1, 154),
                ),
                padding: const EdgeInsets.all(8),
                child: Icon(
                  widget.icon,
                  color: _isHovered
                      ? const Color.fromARGB(255, 42, 1, 154)
                      : Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                widget.title,
                style: GoogleFonts.outfit(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: _isHovered ? Colors.white : Colors.black,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                widget.content,
                textAlign: TextAlign.start,
                style: GoogleFonts.outfit(
                  fontSize: 16,
                  color: _isHovered ? Colors.white60 : Colors.black87,
                  fontWeight: FontWeight.w500,
                  height: 1.5,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
