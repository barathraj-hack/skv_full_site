import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class BottomWidget extends StatefulWidget {
  const BottomWidget({super.key});

  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

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

class _BottomWidgetState extends State<BottomWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 170, vertical: 40),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.grey[300],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: Row(
              children: [
                Row(
                  children: [
                    Image.asset(
                      "lib/images/skvlogo.png",
                      height: 60,
                    ),
                    const SizedBox(width: 12),
                    Text(
                      "SKV International School",
                      style: GoogleFonts.outfit(
                        fontSize: 24,
                        color: const Color.fromARGB(255, 42, 1, 154),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Social Media:",
                      style: GoogleFonts.outfit(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () => _openUrl(
                                  "https://www.youtube.com/@SKVInternational"),
                              child: const Row(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.youtube,
                                    size: 24,
                                    color: Colors.red,
                                  ),
                                  SizedBox(width: 16),
                                  Text(
                                    "YouTube",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 12),
                            GestureDetector(
                              onTap: () =>
                                  _openUrl("https://facebook.com/yourpage"),
                              child: const Row(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.facebook,
                                    size: 24,
                                    color: Colors.blue,
                                  ),
                                  SizedBox(width: 16),
                                  Text(
                                    "Facebook",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 12),
                            GestureDetector(
                              onTap: () => _openUrl(
                                  "https://www.instagram.com/skv_international_school/"),
                              child: const Row(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.instagram,
                                    size: 24,
                                    color: Colors.pink,
                                  ),
                                  SizedBox(width: 16),
                                  Text(
                                    "Instagram",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 12),
                            GestureDetector(
                              onTap: () => _openUrl("https://wa.me/9443403775"),
                              child: const Row(
                                children: [
                                  FaIcon(
                                    FontAwesomeIcons.whatsapp,
                                    size: 24,
                                    color: Colors.green,
                                  ),
                                  SizedBox(width: 16),
                                  Text(
                                    "WhatsApp",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const VerticalDivider(
                  thickness: 2,
                  color: Colors.black,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Contact Us:",
                      style: GoogleFonts.outfit(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Phone Number:   ",
                              style: GoogleFonts.outfit(
                                fontSize: 16,
                                color: Colors.black87,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "+91 94434-03775, 97903-77449",
                              style: GoogleFonts.outfit(
                                fontSize: 18,
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Email Id:   ",
                              style: GoogleFonts.outfit(
                                fontSize: 16,
                                color: Colors.black87,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "sriganeshskv@gmail.com",
                              style: GoogleFonts.outfit(
                                fontSize: 18,
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Address:",
                      style: GoogleFonts.outfit(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "SKV International school, \nVettavalam Road, Keeranur Village \nThiruvannamalai - 606755 \nTamil Nadu, India.",
                              style: GoogleFonts.outfit(
                                fontSize: 18,
                                color: Colors.grey.shade800,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
