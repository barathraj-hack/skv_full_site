import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MySocialMedia extends StatefulWidget {
  const MySocialMedia({super.key});

  @override
  State<MySocialMedia> createState() => _MySocialMediaState();
}

class _MySocialMediaState extends State<MySocialMedia> {
  // Function to open URLs
  Future<void> _openUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      debugPrint('Could not launch $url');
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color:
                Colors.grey.withOpacity(0.2), // Shadow color with transparency
            spreadRadius: 0.5, // Spread radius for the shadow
            blurRadius: 6, // Blur radius for the shadow
            offset: const Offset(0, 0), // Offset (x, y) for the shadow
          ),
        ],
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () =>
                _openUrl("https://www.instagram.com/skv_international_school/"),
            child: Row(
              children: [
                const FaIcon(
                  FontAwesomeIcons.instagram,
                  size: 28,
                  color: Colors.pink,
                ),
                const SizedBox(width: 16),
                Text(
                  "Instagram",
                  style: GoogleFonts.outfit(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => _openUrl("https://facebook.com/yourpage"),
            child: Row(
              children: [
                const FaIcon(
                  FontAwesomeIcons.facebook,
                  size: 28,
                  color: Colors.blue,
                ),
                const SizedBox(width: 16),
                Text(
                  "Facebook",
                  style: GoogleFonts.outfit(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => _openUrl("https://www.youtube.com/@SKVInternational"),
            child: Row(
              children: [
                const FaIcon(
                  FontAwesomeIcons.youtube,
                  size: 28,
                  color: Colors.red,
                ),
                const SizedBox(width: 16),
                Text(
                  "YouTube",
                  style: GoogleFonts.outfit(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () => _openUrl("https://wa.me/9443403775"),
            child: Row(
              children: [
                const FaIcon(
                  FontAwesomeIcons.whatsapp,
                  size: 28,
                  color: Colors.green,
                ),
                const SizedBox(width: 16),
                Text(
                  "WhatsApp",
                  style: GoogleFonts.outfit(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
