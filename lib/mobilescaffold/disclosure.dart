import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skv_website/desktop_constants/bottom_widget.dart';
import 'package:skv_website/desktop_constants/disclosure_constant/container.dart';
import 'package:skv_website/mobile_constants/bottom_widget.dart';
import 'package:skv_website/mobile_constants/disclosure_const.dart';
import 'package:skv_website/responsive/responsive_layout.dart';
import 'package:url_launcher/url_launcher.dart';

class Disclosure extends StatefulWidget {
  const Disclosure({super.key});

  @override
  State<Disclosure> createState() => _DisclosureState();
}

class _DisclosureState extends State<Disclosure> {
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
                    "Mandatory Disclosure",
                    style: GoogleFonts.outfit(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const MyDisclosureCard(
                    text: "State Recognititon Letter",
                    pdfUrl:
                        "https://skvinternationalschool.org/wp-content/uploads/2024/03/State-Order-_240309_135718-1.pdf",
                  ),
                  const SizedBox(height: 12),
                  const MyDisclosureCard(
                    text: "Fire NOC",
                    pdfUrl:
                        "https://skvinternationalschool.org/wp-content/uploads/2024/03/Fire-certificate.pdf",
                  ),
                  const SizedBox(height: 12),
                  const MyDisclosureCard(
                    text: "Land Certificate",
                    pdfUrl:
                        "https://skvinternationalschool.org/wp-content/uploads/2024/03/Land-certificate.pdf",
                  ),
                  const SizedBox(height: 12),
                  const MyDisclosureCard(
                    text: "Mandatory Public Dislcosure",
                    pdfUrl:
                        "https://skvinternationalschool.org/wp-content/uploads/2024/03/Mandatory-Disclosure-Details-_-SARAS-4.0-NEW-27.7.2023.pdf",
                  ),
                  const SizedBox(height: 12),
                  const MyDisclosureCard(
                    text: "Academic Calendar 2023-24",
                    pdfUrl:
                        "https://skvinternationalschool.org/wp-content/uploads/2023/07/2..Academic-Calendar-2023-24.pdf",
                  ),
                  const SizedBox(height: 12),
                  const MyDisclosureCard(
                    text: "SMC1",
                    pdfUrl:
                        "https://skvinternationalschool.org/wp-content/uploads/2023/07/3.SMC1_.pdf",
                  ),
                  const SizedBox(height: 12),
                  const MyDisclosureCard(
                    text: "School Fees Structure",
                    pdfUrl:
                        "https://skvinternationalschool.org/wp-content/uploads/2023/07/1..SCHOOL-FEE-STRUCTURE-..pdf",
                  ),
                  const SizedBox(height: 12),
                  const MyDisclosureCard(
                    text: "PTA Members",
                    pdfUrl:
                        "https://skvinternationalschool.org/wp-content/uploads/2023/07/4..PTA-MEMBERS.pdf",
                  ),
                  const SizedBox(height: 12),
                  const MyDisclosureCard(
                    text: "Last Three Year Result",
                    pdfUrl:
                        "https://skvinternationalschool.org/wp-content/uploads/2023/07/5.LAST-THREE-YEAR-RESULT.pdf",
                  ),
                  const SizedBox(height: 12),
                  const MyDisclosureCard(
                    text: "Sanitary Certificate",
                    pdfUrl:
                        "https://skvinternationalschool.org/wp-content/uploads/2023/07/8.SANITARY-CERTIFICATE-....pdf",
                  ),
                  const SizedBox(height: 12),
                  const MyDisclosureCard(
                    text: "Self Certificate",
                    pdfUrl:
                        "https://skvinternationalschool.org/wp-content/uploads/2023/08/SELF-CERTIFICATE-1.pdf",
                  ),
                  const SizedBox(height: 12),
                  const MyDisclosureCard(
                    text: "Building Safety Certificate",
                    pdfUrl:
                        "https://skvinternationalschool.org/wp-content/uploads/2023/07/5.BUILDING-SAFETY-CERTIFICATE...pdf",
                  ),
                  const SizedBox(height: 12),
                  const MyDisclosureCard(
                    text: "CBSE Affilisation",
                    pdfUrl:
                        "https://skvinternationalschool.org/wp-content/uploads/2023/07/1.CBSE-Affilisation.pdf",
                  ),
                  const SizedBox(height: 12),
                  const MyDisclosureCard(
                    text: "CBSE Affilisation",
                    pdfUrl:
                        "https://skvinternationalschool.org/wp-content/uploads/2023/07/1.CBSE-Affilisation.pdf",
                  ),
                  const SizedBox(height: 12),
                  const MyDisclosureCard(
                    text: "No Objection Letter",
                    pdfUrl:
                        "https://skvinternationalschool.org/wp-content/uploads/2023/07/3.NO-OBJECTION-LETTER.pdf",
                  ),
                  const SizedBox(height: 12),
                  const MyDisclosureCard(
                    text: "Trust Deed",
                    pdfUrl:
                        "https://skvinternationalschool.org/wp-content/uploads/2023/07/2.Trust-Deed.pdf",
                  ),
                ],
              ),
            ),
            const MyBottomWidget(),
          ],
        ),
      ),
    );
  }

  // Tablet layout
  Widget _buildTabletLayout() {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Disclosure"),
      ),
      body: const Center(
        child: Text(
          "View important disclosures - Tablet Layout",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
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
                  const EdgeInsets.symmetric(vertical: 40.0, horizontal: 170),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mandatory Discclosure",
                    style: GoogleFonts.outfit(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 42, 1, 154),
                    ),
                  ),
                  const SizedBox(height: 40),
                  MyContainer(
                    text: "State Recognition Letter",
                    onTap: () => _openUrl(
                      "https://skvinternationalschool.org/wp-content/uploads/2024/03/State-Order-_240309_135718-1.pdf",
                    ),
                  ),
                  const SizedBox(height: 16),
                  MyContainer(
                    text: "Fire NOC",
                    onTap: () {},
                  ),
                  const SizedBox(height: 16),
                  MyContainer(
                    text: "Land Certificate",
                    onTap: () {},
                  ),
                  const SizedBox(height: 16),
                  MyContainer(
                    text: "Mandatory Public Disclosure",
                    onTap: () {},
                  ),
                  const SizedBox(height: 16),
                  MyContainer(
                    text: "Academic Calendar (2023-24)",
                    onTap: () {},
                  ),
                  const SizedBox(height: 16),
                  MyContainer(
                    text: "SMC1",
                    onTap: () {},
                  ),
                  const SizedBox(height: 16),
                  MyContainer(
                    text: "School Fees Structure",
                    onTap: () {},
                  ),
                  const SizedBox(height: 16),
                  MyContainer(
                    text: "PTA Members",
                    onTap: () {},
                  ),
                  const SizedBox(height: 16),
                  MyContainer(
                    text: "Last Three Year Results",
                    onTap: () {},
                  ),
                  const SizedBox(height: 16),
                  MyContainer(
                    text: "Sanitary Certificate",
                    onTap: () {},
                  ),
                  const SizedBox(height: 16),
                  MyContainer(
                    text: "Self Certificate",
                    onTap: () {},
                  ),
                  const SizedBox(height: 16),
                  MyContainer(
                    text: "Building Safety Certificate",
                    onTap: () {},
                  ),
                  const SizedBox(height: 16),
                  MyContainer(
                    text: "CBSE Affliation",
                    onTap: () {},
                  ),
                  const SizedBox(height: 16),
                  MyContainer(
                    text: "No Objection Letter",
                    onTap: () {},
                  ),
                  const SizedBox(height: 16),
                  MyContainer(
                    text: "Trust Deed",
                    onTap: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const BottomWidget(),
          ],
        ),
      ),
    );
  }
}
