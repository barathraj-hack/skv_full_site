import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skv_website/desktop_constants/bottom_widget/desktop_bottom_widget.dart';
import 'package:skv_website/desktop_constants/class_detail.dart';
import 'package:skv_website/desktop_constants/class_detail_new.dart';
import 'package:skv_website/mobile_constants/Academic_constants/middle_cbse.dart';
import 'package:skv_website/mobile_constants/Academic_constants/pre_primary.dart';
import 'package:skv_website/mobile_constants/Academic_constants/primary_cbse.dart';
import 'package:skv_website/mobile_constants/Academic_constants/secondary_cbse.dart';
import 'package:skv_website/mobile_constants/Academic_constants/senior_cbse.dart';
import 'package:skv_website/mobile_constants/bottom_widget.dart';
import 'package:skv_website/responsive/responsive_layout.dart';
import 'package:skv_website/tablet_constants/tablet_bottom_widget.dart';

class AcademicCourses extends StatefulWidget {
  const AcademicCourses({super.key});

  @override
  State<AcademicCourses> createState() => _AcademicCoursesState();
}

class _AcademicCoursesState extends State<AcademicCourses> {
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
                      "Academic Courses",
                      style: GoogleFonts.outfit(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const PrePrimary(),
                    const SizedBox(height: 16),
                    const PrimaryCbse(),
                    const SizedBox(height: 16),
                    const MiddleCbse(),
                    const SizedBox(height: 16),
                    const SecondaryCbse(),
                    const SizedBox(height: 16),
                    const SeniorCbse(),
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
                    "Academic Courses",
                    style: GoogleFonts.outfit(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: const Color.fromARGB(255, 42, 1, 154),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pre - Primary",
                          style: GoogleFonts.outfit(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(255, 42, 1, 154),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          "We provide pre-primary Education and Training to the Children of tender age, adopting the time tested and globally approved Montessori method of education to give foundation and fine tuned the basic skills.",
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.black,
                            height: 1.5, // Line height for readability
                          ),
                        ),
                        const SizedBox(height: 20),
                        const ClassDetail(),
                        const SizedBox(height: 24),
                        Text(
                          "SKV teachers have motherly approach to the children. We are proud to say our teachers are the Lars. Our teachers are sincere, dedicated, loving and interact with children in English. At school children feel as if the are at home celebration at Various level.",
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                            color: Colors.black,
                            height: 1.5, // Line height for readability
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  const ClassDetailNew(
                    text1: "CBSE - Primary",
                    text2: "Classes - 1-5",
                    text3: "Strong foundation for a life time.",
                    text4:
                        "The primary educations I imparted through Multiple Intelligence system of education, Which include play way method and activity Method.",
                    text5:
                        "English Language II, Hindi/Tamil/French, Mathematics, EVS, IT, Drawing, Music, Language III, \n(Hindi/Tamil/French), Value Education, Physical and Health Education, Field Trips, Projects, and \nIndustrial Visits.",
                  ),
                  const SizedBox(height: 40),
                  const ClassDetailNew(
                    text1: "CBSE - Middle Age",
                    text2: "Classes - 6-8",
                    text3: "Developing Unique Personality.",
                    text4:
                        "Creative Power, Imagination and Learning Potential are at its best during this stage.",
                    text5:
                        "English/ Language II (Hindi/ Tamil/ French/ Mathematics/ Physical Science (Physics and Chemistry)/ Biological science/ Social Science/ Language III (Hindi/ Tamil/ French)/ IT/ Value Education and life skills/ Art Education/ Library/ Work/ Experience/ Field Trips/ Projects/ Industrial Visit.",
                  ),
                  const SizedBox(height: 40),
                  const ClassDetailNew(
                    text1: "CBSE - Secondary Stage",
                    text2: "Classes - 9 & 10",
                    text3: "Inculcating key life skills.",
                    text4:
                        "Focus on smooth transformation of child hood to adult hood is achieved by enriching students knowledge attitude and skills.",
                    text5:
                        "English, Language II (Hindi, Tamil, or French), Mathematics, Physical Science (Physics and Chemistry), Biological Science, Social Science, IT, Value Education and Life Skills, Art Education, Library, Work Experience, Field Trips, Projects, and Industrial Visits.",
                  ),
                  const SizedBox(height: 40),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CBSE - Senior Secondary Stage",
                          style: GoogleFonts.outfit(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(255, 42, 1, 154),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          "Classes - 11 & 12",
                          style: GoogleFonts.outfit(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          "Courses Offered in Senior Secondary:",
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w600,
                            fontSize: 24,
                            color: Colors.black,
                            height: 1.5, // Line height for readability
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          "SCIENCE: ",
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            color: Colors.black87,
                            height: 1.5, // Line height for readability
                          ),
                        ),
                        const SizedBox(height: 14),
                        Text(
                          "Physics, Chemistry, Mathematics & Biology",
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: const Color.fromARGB(255, 42, 1, 154),
                            height: 1.5, // Line height for readability
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          "Physics, Chemistry, Mathematics & Computer Science",
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: const Color.fromARGB(255, 42, 1, 154),
                            height: 1.5, // Line height for readability
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          "Physics, Chemistry, Biology & Computer Science",
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: const Color.fromARGB(255, 42, 1, 154),
                            height: 1.5, // Line height for readability
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          "COMMERCE: ",
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            color: Colors.black87,
                            height: 1.5, // Line height for readability
                          ),
                        ),
                        const SizedBox(height: 14),
                        Text(
                          "Accountancy, Business Studies, Economics & Computer Science",
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: const Color.fromARGB(255, 42, 1, 154),
                            height: 1.5, // Line height for readability
                          ),
                        ),
                      ],
                    ),
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
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pre - Primary",
                          style: GoogleFonts.outfit(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 42, 1, 154),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          "We provide pre-primary Education and Training to the Children of tender age, adopting the time tested and globally approved Montessori method of education to give foundation and fine tuned the basic skills.",
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            color: Colors.black,
                            height: 1.5, // Line height for readability
                          ),
                        ),
                        const SizedBox(height: 20),
                        const ClassDetail(),
                        const SizedBox(height: 24),
                        Text(
                          "SKV teachers have motherly approach to the children. We are proud to say our teachers are the Lars. Our teachers are sincere, dedicated, loving and interact with children in English. At school children feel as if the are at home celebration at Various level.",
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w400,
                            fontSize: 24,
                            color: Colors.black,
                            height: 1.5, // Line height for readability
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),
                  const ClassDetailNew(
                    text1: "CBSE - Primary",
                    text2: "Classes - 1-5",
                    text3: "Strong foundation for a life time.",
                    text4:
                        "The primary educations I imparted through Multiple Intelligence system of education, Which include play way method and activity Method.",
                    text5:
                        "English Language II, Hindi/Tamil/French, Mathematics, EVS, IT, Drawing, Music, Language III, \n(Hindi/Tamil/French), Value Education, Physical and Health Education, Field Trips, Projects, and \nIndustrial Visits.",
                  ),
                  const SizedBox(height: 40),
                  const ClassDetailNew(
                    text1: "CBSE - Middle Age",
                    text2: "Classes - 6-8",
                    text3: "Developing Unique Personality.",
                    text4:
                        "Creative Power, Imagination and Learning Potential are at its best during this stage.",
                    text5:
                        "English/ Language II (Hindi/ Tamil/ French/ Mathematics/ Physical Science (Physics and Chemistry)/ Biological science/ Social Science/ Language III (Hindi/ Tamil/ French)/ IT/ Value Education and life skills/ Art Education/ Library/ Work/ Experience/ Field Trips/ Projects/ Industrial Visit.",
                  ),
                  const SizedBox(height: 40),
                  const ClassDetailNew(
                    text1: "CBSE - Secondary Stage",
                    text2: "Classes - 9 & 10",
                    text3: "Inculcating key life skills.",
                    text4:
                        "Focus on smooth transformation of child hood to adult hood is achieved by enriching students knowledge attitude and skills.",
                    text5:
                        "English, Language II (Hindi, Tamil, or French), Mathematics, Physical Science (Physics and Chemistry), Biological Science, Social Science, IT, Value Education and Life Skills, Art Education, Library, Work Experience, Field Trips, Projects, and Industrial Visits.",
                  ),
                  const SizedBox(height: 40),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 1,
                          blurRadius: 4,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CBSE - Senior Secondary Stage",
                          style: GoogleFonts.outfit(
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 42, 1, 154),
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          "Classes - 11 & 12",
                          style: GoogleFonts.outfit(
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          "Courses Offered in Senior Secondary:",
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w500,
                            fontSize: 26,
                            color: Colors.black,
                            height: 1.5, // Line height for readability
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          "SCIENCE: ",
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w400,
                            fontSize: 26,
                            color: Colors.black87,
                            height: 1.5, // Line height for readability
                          ),
                        ),
                        const SizedBox(height: 14),
                        Text(
                          "Physics, Chemistry, Mathematics & Biology",
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w500,
                            fontSize: 26,
                            color: const Color.fromARGB(255, 42, 1, 154),
                            height: 1.5, // Line height for readability
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          "Physics, Chemistry, Mathematics & Computer Science",
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w500,
                            fontSize: 26,
                            color: const Color.fromARGB(255, 42, 1, 154),
                            height: 1.5, // Line height for readability
                          ),
                        ),
                        const SizedBox(height: 12),
                        Text(
                          "Physics, Chemistry, Biology & Computer Science",
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w500,
                            fontSize: 26,
                            color: const Color.fromARGB(255, 42, 1, 154),
                            height: 1.5, // Line height for readability
                          ),
                        ),
                        const SizedBox(height: 24),
                        Text(
                          "COMMERCE: ",
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w400,
                            fontSize: 26,
                            color: Colors.black87,
                            height: 1.5, // Line height for readability
                          ),
                        ),
                        const SizedBox(height: 14),
                        Text(
                          "Accountancy, Business Studies, Economics & Computer Science",
                          style: GoogleFonts.outfit(
                            fontWeight: FontWeight.w500,
                            fontSize: 26,
                            color: const Color.fromARGB(255, 42, 1, 154),
                            height: 1.5, // Line height for readability
                          ),
                        ),
                      ],
                    ),
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
