import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skv_website/desktop_constants/bottom_widget/desktop_bottom_widget.dart';
import 'package:skv_website/desktop_constants/contact_constant/social_media.dart';
import 'package:skv_website/mobile_constants/bottom_widget.dart';
import 'package:skv_website/mobile_constants/contact_us/social_media_card.dart';
import 'package:skv_website/responsive/responsive_layout.dart';
import 'package:skv_website/tablet_constants/tablet_bottom_widget.dart';
import 'package:skv_website/tablet_constants/tablet_social_media.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
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
    return ResponsiveLayout(
      mobileScaffold: _buildMobileLayout(),
      tabletScaffold: _buildTabletLayout(),
      desktopScaffold: _buildDesktopLayout(),
    );
  }

  // Mobile layout
  Widget _buildMobileLayout() {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(scrollbars: false),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Contact Us",
                      style: GoogleFonts.outfit(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "SKV INTERNATIONAL",
                          style: GoogleFonts.outfit(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(255, 42, 1, 154),
                            letterSpacing: 0.5,
                          ),
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "SCHOOL",
                              style: GoogleFonts.outfit(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromARGB(255, 42, 1, 154),
                                letterSpacing: 0.5,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              "Sr Sec (CBSE)",
                              style: GoogleFonts.outfit(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "Vettavalam Road, Keeranur, Thiruvannamalai - 606755 TamilNadu, India.",
                          style: GoogleFonts.outfit(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            letterSpacing: 0.5,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Text(
                              "Mobile:",
                              style: GoogleFonts.outfit(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromARGB(255, 42, 1, 154),
                                letterSpacing: 0.5,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              "+91 94434-03775 , 97903-77449",
                              style: GoogleFonts.outfit(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              "Landline:",
                              style: GoogleFonts.outfit(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromARGB(255, 42, 1, 154),
                                letterSpacing: 0.5,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              "04175-298175",
                              style: GoogleFonts.outfit(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Text(
                              "Email:",
                              style: GoogleFonts.outfit(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color.fromARGB(255, 42, 1, 154),
                                letterSpacing: 0.5,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              "sriganeshskv@gmail.com",
                              style: GoogleFonts.outfit(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 32),
                        Text(
                          "Follow us on social media!",
                          style: GoogleFonts.outfit(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            letterSpacing: 0.5,
                          ),
                        ),
                        const SizedBox(height: 20),
                        MySocialMediaCard(
                          icon: FontAwesomeIcons.instagram,
                          color: Colors.pink,
                          colorone: Colors.pink,
                          text: "Instagram",
                          onTap: () => _openUrl(
                            "https://www.instagram.com/skv_international_school/",
                          ),
                        ),
                        const SizedBox(height: 12),
                        MySocialMediaCard(
                          icon: FontAwesomeIcons.facebook,
                          color: Colors.blue,
                          colorone: Colors.blue,
                          text: "Facebook",
                          onTap: () => _openUrl(
                            "https://www.facebook.com/skvinternationalschool",
                          ),
                        ),
                        const SizedBox(height: 12),
                        MySocialMediaCard(
                          icon: FontAwesomeIcons.youtube,
                          color: Colors.red,
                          colorone: Colors.red,
                          text: "Youtube",
                          onTap: () => _openUrl(
                            "https://www.youtube.com/@SKVInternational",
                          ),
                        ),
                        const SizedBox(height: 12),
                        MySocialMediaCard(
                          icon: FontAwesomeIcons.whatsapp,
                          color: Colors.green,
                          colorone: Colors.green,
                          text: "Whatsapp",
                          onTap: () => _openUrl(
                            "https://wa.me/9443403775",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const MyBottomWidget(),
            ],
          ),
        ),
      ),
    );
  }

  // Tablet layout
  Widget _buildTabletLayout() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20.0, horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Contact Us:",
                    style: GoogleFonts.outfit(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 42, 1, 154),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        "SKV",
                        style: GoogleFonts.outfit(
                          fontSize: 34,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 42, 1, 154),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "INTERNATIONAL SCHOOL Sr.Sec (CBSE)",
                        style: GoogleFonts.outfit(
                          fontSize: 34,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "Vettavalam Road, Keeranur, Thiruvannamalai, - 606755 \nTamilNadu, India.",
                    style: GoogleFonts.outfit(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Text(
                        "Mobile:",
                        style: GoogleFonts.outfit(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 42, 1, 154),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        "94434-03775, 97903-77449",
                        style: GoogleFonts.outfit(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Text(
                        "Landline:",
                        style: GoogleFonts.outfit(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 42, 1, 154),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        "04175-298175",
                        style: GoogleFonts.outfit(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Text(
                        "Email:",
                        style: GoogleFonts.outfit(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 42, 1, 154),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        "sriganeshskv@gmail.com",
                        style: GoogleFonts.outfit(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Text(
                    "Follow Us On Social Media!",
                    style: GoogleFonts.outfit(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 42, 1, 154),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      MyTabletSocialMedia(
                        onTap: () => _openUrl(
                          "https://www.instagram.com/skv_international_school/",
                        ),
                        text: "Instagram",
                        icon: FontAwesomeIcons.instagram,
                        color: Colors.pink,
                        colorone: Colors.pink,
                      ),
                      const SizedBox(width: 20),
                      MyTabletSocialMedia(
                        onTap: () => _openUrl(
                          "https://www.facebook.com/skvinternationalschool",
                        ),
                        text: "Facebook",
                        icon: FontAwesomeIcons.facebook,
                        color: Colors.blue,
                        colorone: Colors.blue,
                      ),
                      const SizedBox(width: 20),
                      MyTabletSocialMedia(
                        onTap: () => _openUrl(
                          "https://www.youtube.com/@SKVInternational",
                        ),
                        text: "Youtube",
                        icon: FontAwesomeIcons.youtube,
                        color: Colors.red,
                        colorone: Colors.red,
                      ),
                      const SizedBox(width: 20),
                      MyTabletSocialMedia(
                        onTap: () => _openUrl(
                          "https://wa.me/9443403775",
                        ),
                        text: "Whatsapp",
                        icon: FontAwesomeIcons.whatsapp,
                        color: Colors.green,
                        colorone: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const MyTabletBottomWidget(),
          ],
        ),
      ),
    );
  }

  // Desktop layout
  Widget _buildDesktopLayout() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 40.0, horizontal: 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Contact Us:",
                    style: GoogleFonts.outfit(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 42, 1, 154),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Row(
                    children: [
                      Text(
                        "SKV",
                        style: GoogleFonts.outfit(
                          fontSize: 34,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 42, 1, 154),
                        ),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        "INTERNATIONAL SCHOOL Sr.Sec (CBSE)",
                        style: GoogleFonts.outfit(
                          fontSize: 34,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "Vettavalam Road, Keeranur, Thiruvannamalai, - 606755 \nTamilNadu, India.",
                    style: GoogleFonts.outfit(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Text(
                        "Mobile:",
                        style: GoogleFonts.outfit(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 42, 1, 154),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        "94434-03775, 97903-77449",
                        style: GoogleFonts.outfit(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Text(
                        "Landline:",
                        style: GoogleFonts.outfit(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 42, 1, 154),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        "04175-298175",
                        style: GoogleFonts.outfit(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Text(
                        "Email:",
                        style: GoogleFonts.outfit(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 42, 1, 154),
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        "sriganeshskv@gmail.com",
                        style: GoogleFonts.outfit(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 40),
                  Text(
                    "Follow Us On Social Media!",
                    style: GoogleFonts.outfit(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 42, 1, 154),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Row(
                    children: [
                      MySocialMedia(
                        onTap: () => _openUrl(
                          "https://www.instagram.com/skv_international_school/",
                        ),
                        text: "Instagram",
                        icon: FontAwesomeIcons.instagram,
                        color: Colors.pink,
                        colorone: Colors.pink,
                      ),
                      const SizedBox(width: 20),
                      MySocialMedia(
                        onTap: () => _openUrl(
                          "https://www.facebook.com/skvinternationalschool",
                        ),
                        text: "Facebook",
                        icon: FontAwesomeIcons.facebook,
                        color: Colors.blue,
                        colorone: Colors.blue,
                      ),
                      const SizedBox(width: 20),
                      MySocialMedia(
                        onTap: () => _openUrl(
                          "https://www.youtube.com/@SKVInternational",
                        ),
                        text: "Youtube",
                        icon: FontAwesomeIcons.youtube,
                        color: Colors.red,
                        colorone: Colors.red,
                      ),
                      const SizedBox(width: 20),
                      MySocialMedia(
                        onTap: () => _openUrl(
                          "https://wa.me/9443403775",
                        ),
                        text: "Whatsapp",
                        icon: FontAwesomeIcons.whatsapp,
                        color: Colors.green,
                        colorone: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const MyDesktopBottomWidget(),
          ],
        ),
      ),
    );
  }
}
