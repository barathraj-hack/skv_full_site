import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTabletSocialMedia extends StatefulWidget {
  final String text;
  final IconData icon;
  final Color color;
  final MaterialColor colorone;
  final void Function()? onTap;

  const MyTabletSocialMedia({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
    required this.colorone,
    required this.onTap,
  });

  @override
  State<MyTabletSocialMedia> createState() => _MySocialMediaState();
}

class _MySocialMediaState extends State<MyTabletSocialMedia> {
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
            padding: const EdgeInsets.all(12),
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
                    size: 18,
                    color: _isHovered ? widget.color : widget.color,
                  ),
                ),
                const SizedBox(width: 20),
                Text(
                  widget.text,
                  style: GoogleFonts.outfit(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: _isHovered ? Colors.white : Colors.black,
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
