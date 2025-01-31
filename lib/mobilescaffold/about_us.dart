import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skv_website/desktop_constants/admin_message.dart';
import 'package:skv_website/desktop_constants/bottom_widget.dart';
import 'package:skv_website/mobile_constants/about_us/academic_rules.dart';
import 'package:skv_website/mobile_constants/bottom_widget.dart';
import 'package:skv_website/mobile_constants/message_box.dart';
import 'package:skv_website/responsive/responsive_layout.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
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
                    "Our Vision & Mision",
                    style: GoogleFonts.outfit(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 16),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Mission:",
                          style: GoogleFonts.outfit(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 42, 1,
                                154), // Highlighted color for "Mission:"
                            fontWeight: FontWeight
                                .w600, // Optional: to emphasize further
                          ),
                        ),
                        TextSpan(
                          text:
                              " At SKV International School, we focus on the holistic development of each child, nurturing their physical, mental, social, emotional, and spiritual well-being while inspiring a lifelong passion for learning.",
                          style: GoogleFonts.outfit(
                            fontSize: 16,
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Vision:",
                          style: GoogleFonts.outfit(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 42, 1,
                                154), // Highlighted color for "Mission:"
                            fontWeight: FontWeight
                                .w600, // Optional: to emphasize further
                          ),
                        ),
                        TextSpan(
                          text:
                              " We strive to create a supportive learning environment where children feel valued, empowered, and inspired to reach their full potential while becoming global citizens with integrity, compassion, and resilience.",
                          style: GoogleFonts.outfit(
                            fontSize: 16,
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Commitment:",
                          style: GoogleFonts.outfit(
                            fontSize: 16,
                            color: const Color.fromARGB(255, 42, 1,
                                154), // Highlighted color for "Mission:"
                            fontWeight: FontWeight
                                .w600, // Optional: to emphasize further
                          ),
                        ),
                        TextSpan(
                          text:
                              " We provide state-of-the-art infrastructure, innovative teaching methodologies, and a dedicated faculty team to help students achieve academic and personal excellence.",
                          style: GoogleFonts.outfit(
                            fontSize: 16,
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  Text(
                    "Correspondent's Message",
                    style: GoogleFonts.outfit(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const MyMessageBox(
                    image: "lib/images/ttggkk.png",
                    text1: "THIRUNAVUKKARASU.K",
                    text2: "  M.B.A.,",
                    text3: "FOUNDER | CORRESPONDENT ",
                    message:
                        "Welcome to SKV International School! We are thrilled to have you join us and look forward to providing a nurturing environment where your child can excel and grow.",
                  ),
                  const SizedBox(height: 32),
                  Text(
                    "Principal's Message",
                    style: GoogleFonts.outfit(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 16),
                  const MyMessageBox(
                    image: "lib/images/ttggkk.png",
                    text1: "VADIVEL.N",
                    text2: "  M.A., M.Phil, B.Ed",
                    text3: "PRINCIPAL ",
                    message:
                        "Welcome to SKV International School! As your principal, I look forward to collaborating with you and our staff to foster a nurturing and inspiring environment.",
                  ),
                  const SizedBox(height: 32),
                  Text(
                    "Academic Rules & Regulations",
                    style: GoogleFonts.outfit(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      letterSpacing: 0.5,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const MyAcademicRules(
                    text:
                        "1.  The school reserves the right to strike a student's name from the roll or prevent them from appearing in examinations for non-payment of fees and other dues before the commencement of examinations.",
                  ),
                  const SizedBox(height: 16),
                  const MyAcademicRules(
                    text:
                        "2.  Offering gifts (cash or kind) to teaching staff by parents or students is prohibited. The management will take serious action if such cases are discovered.",
                  ),
                  const SizedBox(height: 16),
                  const MyAcademicRules(
                    text:
                        "3.  Parents/Guardians can visit their wards only after obtaining written permission from the principal. Only parents are allowed to take their children out from the school/hostel.",
                  ),
                  const SizedBox(height: 16),
                  const MyAcademicRules(
                    text:
                        "4.  During vacations, if parents desire that their child be taken home by an authorized person, that person must carry an authorization letter with the parent's signature, which must match the signature on the school records.",
                  ),
                  const SizedBox(height: 16),
                  const MyAcademicRules(
                    text:
                        "5.  The school reserves the right to expel a student for misconduct or disciplinary issues. Depending on the severity of the offense, the student may be handed over to the parents and issued a Transfer Certificate (TC) with the remark “Expelled for misconduct”.",
                  ),
                  const SizedBox(height: 16),
                  const MyAcademicRules(
                    text:
                        "6.  All students must wear the prescribed school uniform during journeys to and from the school.",
                  ),
                  const SizedBox(height: 16),
                  const MyAcademicRules(
                    text:
                        "7.  Complete medical records of the child must be furnished at the time of admission. The medical report must contain all relevant medical information since birth.",
                  ),
                  const SizedBox(height: 16),
                  const MyAcademicRules(
                    text:
                        "8.  Color dress is permitted on certain occasions deemed fit by the management. However, students may wear their best outfit on their birthday, maintaining proper dress code.",
                  ),
                  const SizedBox(height: 16),
                  const MyAcademicRules(
                    text:
                        "9.  A student may be expelled from the school for gross indiscipline. In such cases, parents must come to pick up their child from the school.",
                  ),
                  const SizedBox(height: 16),
                  const MyAcademicRules(
                    text:
                        "10.  Students are not permitted to make calls to parents/guardians. Frequent telephone calls from parents are discouraged as they interfere with the academic performance of the students. Parents may call their wards a maximum of twice a month.",
                  ),
                  const SizedBox(height: 16),
                  const MyAcademicRules(
                    text:
                        "11.  Students are strictly not allowed to carry or use mobile phones.",
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
        title: const Text("About Us"),
      ),
      body: const Center(
        child: Text(
          "Learn more about SKV International School - Tablet Layout",
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
                    "Our Vision & Mission",
                    style: GoogleFonts.outfit(
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 42, 1, 154),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    "At SKV International School, our mission is to foster the all-round development of each child, instilling a lifelong love of learning. "
                    "We focus on strengthening their Physical, Mental, Social, Emotional, and Spiritual well-being, ensuring they grow into well-rounded individuals.",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Colors.black87,
                      height: 1.5, // Line height for readability
                    ),
                  ),
                  const SizedBox(height: 24), // Space between paragraphs
                  Text(
                    "Our vision is to create a learning environment where every child feels valued, empowered, and inspired to achieve their fullest potential. "
                    "We aim to nurture global citizens who uphold integrity, compassion, and resilience while making meaningful contributions to society.",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Colors.black87,
                      height: 1.5, // Line height for readability
                    ),
                  ),
                  const SizedBox(height: 24), // Space between paragraphs
                  Text(
                    "We are committed to providing state-of-the-art infrastructure, innovative teaching methodologies, and a dedicated faculty team to guide our students towards academic and personal excellence.",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Colors.black87,
                      height: 1.5, // Line height for readability
                    ),
                  ),
                  const SizedBox(height: 60),
                  Text(
                    "Correspondent's Message",
                    style: GoogleFonts.outfit(
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 42, 1, 154),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const AdminMessage(
                    title: "THIRUNAVUKKARASU .TGK",
                    subtitle: "M.B.A.,",
                    message: "FOUNDER | CORRESPONDENT",
                    imagePath: "lib/images/tgk1.jpg",
                  ),
                  const SizedBox(height: 24),
                  Text(
                    "Welcome to SKV International School! We are excited to have you join our community. Our mission is to provide a nurturing environment where your children can excel academically and grow personally. We value your partnership and look forward to working together to ensure the best education for your child.",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Colors.black,
                      height: 1.5, // Line height for readability
                    ),
                  ),
                  const SizedBox(height: 60),
                  Text(
                    "Principal's Message",
                    style: GoogleFonts.outfit(
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 42, 1, 154),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const AdminMessage(
                    title: "VADIVEL .N",
                    subtitle: "M.A., M.Phil, B.Ed",
                    message: "PRINCIPAL",
                    imagePath: "lib/images/tgk1.jpg",
                  ),
                  const SizedBox(height: 24),
                  Text(
                    "Welcome to SKV International School! As your principal, I am excited to work with you and our dedicated staff to ensure your child’s success. Together, we can create a nurturing and inspiring environment where every student thrives.",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Colors.black,
                      height: 1.5, // Line height for readability
                    ),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    "Academic Rules & Regulations",
                    style: GoogleFonts.outfit(
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 42, 1, 154),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Text(
                    "1.  The school reserves the right to strike a student's name from the roll or prevent them from appearing in examinations for non-payment of fees and other dues before the commencement of examinations.",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Colors.black87,
                      height: 1.5, // Line height for readability
                    ),
                  ),
                  const SizedBox(height: 40), // Space between paragraphs
                  Text(
                    "2.  Offering gifts (cash or kind) to teaching staff by parents or students is prohibited. The management will take serious action if such cases are discovered.",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Colors.black87,
                      height: 1.5, // Line height for readability
                    ),
                  ),
                  const SizedBox(height: 40), // Space between paragraphs
                  Text(
                    "3.  Parents/Guardians can visit their wards only after obtaining written permission from the principal. Only parents are allowed to take their children out from the school/hostel.",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Colors.black87,
                      height: 1.5, // Line height for readability
                    ),
                  ),
                  const SizedBox(height: 40), // Space between paragraphs
                  Text(
                    "4.  During vacations, if parents desire that their child be taken home by an authorized person, that person must carry an authorization letter with the parent's signature, which must match the signature on the school records.",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Colors.black87,
                      height: 1.5, // Line height for readability
                    ),
                  ),
                  const SizedBox(height: 40), // Space between paragraphs
                  Text(
                    "5.  The school reserves the right to expel a student for misconduct or disciplinary issues. Depending on the severity of the offense, the student may be handed over to the parents and issued a Transfer Certificate (TC) with the remark “Expelled for misconduct”.",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Colors.black87,
                      height: 1.5, // Line height for readability
                    ),
                  ),
                  const SizedBox(height: 40), // Space between paragraphs
                  Text(
                    "6.  All students must wear the prescribed school uniform during journeys to and from the school.",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Colors.black87,
                      height: 1.5, // Line height for readability
                    ),
                  ),
                  const SizedBox(height: 40), // Space between paragraphs
                  Text(
                    "7.  Complete medical records of the child must be furnished at the time of admission. The medical report must contain all relevant medical information since birth.",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Colors.black87,
                      height: 1.5, // Line height for readability
                    ),
                  ),
                  const SizedBox(height: 40), // Space between paragraphs
                  Text(
                    "8.  Color dress is permitted on certain occasions deemed fit by the management. However, students may wear their best outfit on their birthday, maintaining proper dress code.",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Colors.black87,
                      height: 1.5, // Line height for readability
                    ),
                  ),
                  const SizedBox(height: 40), // Space between paragraphs
                  Text(
                    "9.  A student may be expelled from the school for gross indiscipline. In such cases, parents must come to pick up their child from the school.",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Colors.black87,
                      height: 1.5, // Line height for readability
                    ),
                  ),
                  const SizedBox(height: 40), // Space between paragraphs
                  Text(
                    "10.  Students are not permitted to make calls to parents/guardians. Frequent telephone calls from parents are discouraged as they interfere with the academic performance of the students. Parents may call their wards a maximum of twice a month.",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Colors.black87,
                      height: 1.5, // Line height for readability
                    ),
                  ),
                  const SizedBox(height: 40), // Space between paragraphs
                  Text(
                    "11.  Students are strictly not allowed to carry or use mobile phones.",
                    style: GoogleFonts.outfit(
                      fontWeight: FontWeight.w400,
                      fontSize: 24,
                      color: Colors.black87,
                      height: 1.5, // Line height for readability
                    ),
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
