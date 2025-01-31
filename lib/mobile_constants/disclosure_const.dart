import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDisclosureCard extends StatelessWidget {
  final String text;
  final String pdfUrl; // Add a URL parameter for the PDF link

  const MyDisclosureCard({
    super.key,
    required this.text,
    required this.pdfUrl,
  });

  // Function to launch the PDF URL
  void _downloadPdf(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      // Handle error if the URL cannot be launched
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color:
                Colors.grey.withOpacity(0.1), // Shadow color with transparency
            spreadRadius: 1, // Spread radius for the shadow
            blurRadius: 6, // Blur radius for the shadow
            offset: const Offset(0, 0), // Offset (x, y) for the shadow
          ),
        ],
      ),
      child: Row(
        children: [
          Text(
            text,
            style: GoogleFonts.outfit(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.black,
              letterSpacing: 0.5,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () =>
                _downloadPdf(pdfUrl), // Call the function to download the PDF
            child: Container(
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 42, 1, 154),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(
                Icons.file_download_outlined,
                size: 20,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
