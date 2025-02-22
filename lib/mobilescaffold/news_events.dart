import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skv_website/desktop_constants/bottom_widget/desktop_bottom_widget.dart';
import 'package:skv_website/desktop_constants/events.dart';
import 'package:skv_website/desktop_constants/new_event.dart';
import 'package:skv_website/desktop_constants/news_events.dart';
import 'package:skv_website/desktop_constants/news_events_new.dart';
import 'package:skv_website/mobile_constants/bottom_widget.dart';
import 'package:skv_website/mobile_constants/newsevent_constant/news-1.dart';
import 'package:skv_website/responsive/responsive_layout.dart';
import 'package:skv_website/tablet_constants/Tablet_news_one.dart';
import 'package:skv_website/tablet_constants/tablet_bottom_widget.dart';
import 'package:skv_website/tablet_constants/tablet_event_one.dart';
import 'package:skv_website/tablet_constants/tablet_event_two.dart';
import 'package:skv_website/tablet_constants/tablet_news_two.dart';

class NewsEvents extends StatefulWidget {
  const NewsEvents({super.key});

  @override
  State<NewsEvents> createState() => _NewsEventsState();
}

class _NewsEventsState extends State<NewsEvents> {
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
                      "News & Events",
                      style: GoogleFonts.outfit(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const MyNewsOne(),
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
                    "News",
                    style: GoogleFonts.outfit(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 42, 1, 154),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const MyTabletNewsOne(),
                  const SizedBox(height: 40),
                  const MyTabletNewsTwo(),
                  const SizedBox(height: 40),
                  Text(
                    "Events",
                    style: GoogleFonts.outfit(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 42, 1, 154),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const MyTabletEventOne(),
                  const SizedBox(height: 40),
                  const MyTabletEventTwo(),
                ],
              ),
            ),
            const SizedBox(height: 40),
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
                    "News",
                    style: GoogleFonts.outfit(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 42, 1, 154),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const MyNewsEvents(),
                  const SizedBox(height: 40),
                  const MyNewsEventsNew(),
                  const SizedBox(height: 40),
                  Text(
                    "Events",
                    style: GoogleFonts.outfit(
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      color: const Color.fromARGB(255, 42, 1, 154),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const MyEvents(),
                  const SizedBox(height: 40),
                  const MyNewEvent(),
                ],
              ),
            ),
            const SizedBox(height: 40),
            const MyDesktopBottomWidget(),
          ],
        ),
      ),
    );
  }
}
