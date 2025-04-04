import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MySocialMedia extends StatefulWidget {
  final String text;
  final IconData icon;
  final Color color;
  final MaterialColor colorone;
  final void Function()? onTap;

  const MySocialMedia({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
    required this.colorone,
    required this.onTap,
  });

  @override
  State<MySocialMedia> createState() => _MySocialMediaState();
}

class _MySocialMediaState extends State<MySocialMedia> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        child: GestureDetector(
          onTap: widget.onTap,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: _isHovered ? widget.color : Colors.white,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: _isHovered ? Colors.white : widget.colorone[100],
                    shape: BoxShape.circle,
                  ),
                  child: FaIcon(
                    widget.icon,
                    size: 24,
                    color: _isHovered ? widget.color : widget.color,
                  ),
                ),
                const SizedBox(width: 20),
                Text(
                  widget.text,
                  style: GoogleFonts.outfit(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: _isHovered ? Colors.white : Colors.black,
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _isHovered
                        ? Colors.white
                        : const Color.fromARGB(255, 42, 1, 154),
                  ),
                  child: FaIcon(
                    FontAwesomeIcons.link,
                    size: 14,
                    color: _isHovered ? Colors.black : Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
