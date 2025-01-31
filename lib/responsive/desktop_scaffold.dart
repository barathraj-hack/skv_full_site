import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skv_website/constants.dart';
import 'package:skv_website/mobilescaffold/about_us.dart';
import 'package:skv_website/mobilescaffold/academic_courses.dart';
import 'package:skv_website/mobilescaffold/contact_us.dart';
import 'package:skv_website/mobilescaffold/disclosure.dart';
import 'package:skv_website/mobilescaffold/home_page.dart';
import 'package:skv_website/mobilescaffold/news_events.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  // List of pages for navigation
  final List<Widget> pages = [
    const HomePage(),
    const AboutUs(),
    const AcademicCourses(),
    const NewsEvents(),
    const Disclosure(),
    const ContactUs(),
  ];

  // Current selected index for the navigation
  int selectedIndex = 0;

  // Current hovered index for the navigation
  int hoveredIndex = -1;

  // Define text style for the app bar texts
  final TextStyle appBarTextStyle = GoogleFonts.outfit(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(170.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Logo
              Image.asset(
                "lib/images/skv.png",
                height: 156,
              ),
              const SizedBox(width: 20),
              // Menu Items
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildNavItem("Home", 0),
                  _buildNavItem("About Us", 1),
                  _buildNavItem("Academic Courses", 2),
                  _buildNavItem("News & Events", 3),
                  _buildNavItem("Disclosure", 4),
                  _buildNavItem("Contact Us", 5),
                ],
              ),
            ],
          ),
        ),
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: pages[selectedIndex],
      ),
    );
  }

  // Helper method to build individual navigation items with hover effect
  Widget _buildNavItem(String title, int index) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          hoveredIndex = index;
        });
      },
      onExit: (event) {
        setState(() {
          hoveredIndex = -20; // Reset hover when the pointer leaves
        });
      },
      child: GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: AnimatedScale(
            scale: hoveredIndex == index || selectedIndex == index ? 1.2 : 1.0,
            duration: const Duration(milliseconds: 100),
            child: Text(
              title,
              style: appBarTextStyle.copyWith(
                color: selectedIndex == index
                    ? const Color.fromARGB(255, 42, 1, 154)
                    : (hoveredIndex == index
                        ? const Color.fromARGB(255, 42, 1, 154)
                        : Colors.black),
              ),
            ),
          ),
        ),
      ),
    );
  }
}