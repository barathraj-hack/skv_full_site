 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var myDefaultBackground = Colors.grey[100];

var myAppBar = AppBar(
  backgroundColor: Colors.grey,
);

var myCard = Container(
  width: 380,
  padding: const EdgeInsets.all(25),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(16),
    color: Colors.grey[300],
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.black,
        ),
        padding: const EdgeInsets.all(8),
        child: const Icon(
          Icons.star,
          color: Colors.white,
        ),
      ),
      const SizedBox(height: 16),
      Text(
        "About School",
        style: GoogleFonts.outfit(
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 20),
      Text(
        "For 11 years, SKV Group, led by Sri Kalaimagal Trust "
        "has maintained a perfect 100% pass rate in "
        "10th-grade exams, earning praise consistently.",
        textAlign: TextAlign.start, // Aligns text to the left
        style: GoogleFonts.outfit(
          fontSize: 16,
          color: Colors.black87,
          fontWeight: FontWeight.w500,
          height: 1.5, // Adjusts line height for better readability
        ),
      ),
    ],
  ),
);

var myDrawer = const Drawer(
  backgroundColor: Colors.white,
  child: Column(
    children: [
      DrawerHeader(
        child: Icon(Icons.favorite),
      ),
      ListTile(
        leading: Icon(Icons.home),
        title: Text('D A S H B O A R D'),
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('S E T T I N G S'),
      ),
      ListTile(
        leading: Icon(Icons.shop),
        title: Text('C A R T'),
      ),
      ListTile(
        leading: Icon(Icons.logout),
        title: Text('L O G O U T'),
      ),
    ],
  ),
);
