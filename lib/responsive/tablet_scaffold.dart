import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:skv_website/constants.dart';
import 'package:skv_website/mobilescaffold/about_us.dart';
import 'package:skv_website/mobilescaffold/academic_courses.dart';
import 'package:skv_website/mobilescaffold/contact_us.dart';
import 'package:skv_website/mobilescaffold/disclosure.dart';
import 'package:skv_website/mobilescaffold/home_page.dart';
import 'package:skv_website/mobilescaffold/news_events.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefaultBackground,
      appBar: AppBar(
        toolbarHeight: 80,
        title: Image.asset(
          "lib/images/skvlogo.png",
          height: 60,
        ),
        backgroundColor: Colors.white,
        actions: [
          Builder(
            builder: (context) => IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openEndDrawer(); // Opens the end drawer
              },
            ),
          ),
        ],
      ),
      endDrawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          children: [
            const SizedBox(height: 40),
            Image.asset(
              "lib/images/skvlogo.png",
              height: 80,
            ),
            const SizedBox(height: 40),
            // Drawer items
            ListTile(
              selectedColor: const Color.fromARGB(255, 42, 1, 154),
              leading: const Icon(
                LucideIcons.home,
                size: 20,
              ),
              title: Text(
                'Home',
                style: GoogleFonts.outfit(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              selected: selectedIndex == 0,
              selectedTileColor: Colors.grey[200],
              onTap: () {
                setState(() {
                  selectedIndex = 0;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              selectedColor: const Color.fromARGB(255, 42, 1, 154),
              leading: const Icon(
                LucideIcons.user,
                size: 20,
              ),
              title: Text(
                'About Us',
                style: GoogleFonts.outfit(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              selected: selectedIndex == 1,
              selectedTileColor: Colors.grey[200],
              onTap: () {
                setState(() {
                  selectedIndex = 1;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              selectedColor: const Color.fromARGB(255, 42, 1, 154),
              leading: const Icon(
                LucideIcons.book,
                size: 20,
              ),
              title: Text(
                'Academic Courses',
                style: GoogleFonts.outfit(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              selected: selectedIndex == 2,
              selectedTileColor: Colors.grey[200],
              onTap: () {
                setState(() {
                  selectedIndex = 2;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              selectedColor: const Color.fromARGB(255, 42, 1, 154),
              leading: const Icon(
                LucideIcons.newspaper,
                size: 20,
              ),
              title: Text(
                'News & Events',
                style: GoogleFonts.outfit(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              selected: selectedIndex == 3,
              selectedTileColor: Colors.grey[200],
              onTap: () {
                setState(() {
                  selectedIndex = 3;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              selectedColor: const Color.fromARGB(255, 42, 1, 154),
              leading: const Icon(
                LucideIcons.info,
                size: 20,
              ),
              title: Text(
                'Disclosure',
                style: GoogleFonts.outfit(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              selected: selectedIndex == 4,
              selectedTileColor: Colors.grey[200],
              onTap: () {
                setState(() {
                  selectedIndex = 4;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              selectedColor: const Color.fromARGB(255, 42, 1, 154),
              leading: const Icon(
                LucideIcons.contact2,
                size: 20,
              ),
              title: Text(
                'Contact Us',
                style: GoogleFonts.outfit(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              selected: selectedIndex == 5,
              selectedTileColor: Colors.grey[200],
              onTap: () {
                setState(() {
                  selectedIndex = 5;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 300),
        child: pages[selectedIndex],
      ),
    );
  }
}
