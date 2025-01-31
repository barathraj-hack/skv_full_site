import 'package:flutter/material.dart';
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
        title: const Text("Tablet Scaffold"),
        backgroundColor: Colors.blue,
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
            const DrawerHeader(
              child: Icon(Icons.favorite),
            ),
            // Drawer items
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text("Home"),
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
              leading: const Icon(Icons.settings),
              title: const Text("About Us"),
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
              leading: const Icon(Icons.shop),
              title: const Text("Academic Courses"),
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
              leading: const Icon(Icons.event),
              title: const Text("News & Events"),
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
              leading: const Icon(Icons.visibility),
              title: const Text("Disclosure"),
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
              leading: const Icon(Icons.contact_page),
              title: const Text("Contact Us"),
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
