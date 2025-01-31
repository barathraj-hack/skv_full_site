import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skv_website/desktop_constants/contact_constant/social_media.dart';
import 'package:skv_website/desktop_constants/filled_button.dart';
import 'package:skv_website/desktop_constants/my_card.dart';
import 'package:skv_website/desktop_constants/outline_button.dart';
import 'package:skv_website/mobile_constants/advestisement_card.dart';
import 'package:skv_website/mobile_constants/bottom_widget.dart';
import 'package:skv_website/mobile_constants/filled_button.dart';
import 'package:skv_website/mobile_constants/image_card_slider.dart';
import 'package:skv_website/mobile_constants/my_card.dart';
import 'package:skv_website/mobile_constants/outline_button.dart';
import 'package:skv_website/mobile_constants/social_media.dart';
import 'package:skv_website/responsive/responsive_layout.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List of image paths
  List<String> imagePaths = [
    "lib/images/skv1.png",
    "lib/images/skv2.png",
    "lib/images/skv3.png",
  ];

  // Current image index to track which image is shown
  int currentImageIndex = 0;

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
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "SKV INTERNATIONAL",
                              style: GoogleFonts.outfit(
                                fontSize: 32,
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
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600,
                                    color:
                                        const Color.fromARGB(255, 42, 1, 154),
                                    letterSpacing: 0.5,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Text(
                                  "(CBSE)",
                                  style: GoogleFonts.outfit(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 4),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 42, 1, 154),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                "800+",
                                style: GoogleFonts.outfit(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              "Students Running",
                              style: GoogleFonts.outfit(
                                fontSize: 26,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Successfully",
                          style: GoogleFonts.outfit(
                            fontSize: 26,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    const Row(
                      children: [
                        MyFilledMobileButton(),
                        SizedBox(width: 10),
                        MyOutlineMobileButton(),
                      ],
                    ),
                    const SizedBox(height: 32),
                    const MyMobileCard(
                      content:
                          "For 11 years, SKV Group, led by Sri Kalaimagal Trust has maintained a perfect 100% pass rate in 10th-grade exams, earning praise consistently",
                      icon: Icons.school,
                      title: "About School",
                    ),
                    const SizedBox(height: 16),
                    const MyMobileCard(
                      content:
                          "For 11 years, SKV Group, led by Sri Kalaimagal Trust has maintained a perfect 100% pass rate in 10th-grade exams, earning praise consistently",
                      icon: Icons.remove_red_eye,
                      title: "Our Vision",
                    ),
                    const SizedBox(height: 16),
                    const MyMobileCard(
                      content:
                          "For 11 years, SKV Group, led by Sri Kalaimagal Trust has maintained a perfect 100% pass rate in 10th-grade exams, earning praise consistently",
                      icon: Icons.school,
                      title: "Achievements",
                    ),
                    const SizedBox(height: 32),
                    const MyAdvestisementCard(
                      content:
                          "Admissions Open For the Academic Year : 2024-25",
                    ),
                    const SizedBox(height: 32),
                    CarouselSlider(
                      options: CarouselOptions(
                        clipBehavior: Clip.none,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        height: 207,
                        enlargeCenterPage: true,
                      ),
                      items: imagePaths.map((imagePath) {
                        return Builder(
                          builder: (BuildContext context) {
                            return ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child: Image.asset(
                                imagePath,
                                fit: BoxFit.cover,
                                width: MediaQuery.of(context).size.width,
                              ),
                            );
                          },
                        );
                      }).toList(),
                    ),
                    const SizedBox(height: 32),
                    Text(
                      "Follow Us On Social Media!",
                      style: GoogleFonts.outfit(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                MySocialMediaButton(
                                  image: "lib/images/instaicon.png",
                                  text: "Instagram",
                                  onTap: () => _openUrl(
                                    "https://www.instagram.com/skv_international_school/",
                                  ),
                                ),
                                const SizedBox(width: 20),
                                MySocialMediaButton(
                                  image: "lib/images/instaicon.png",
                                  text: "Facebook",
                                  onTap: () =>
                                      _openUrl("https://facebook.com/yourpage"),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                MySocialMediaButton(
                                  image: "lib/images/instaicon.png",
                                  text: "Youtube",
                                  onTap: () => _openUrl(
                                      "https://www.youtube.com/@SKVInternational"),
                                ),
                                const SizedBox(width: 20),
                                MySocialMediaButton(
                                  image: "lib/images/instaicon.png",
                                  text: "Whatsapp",
                                  onTap: () =>
                                      _openUrl("https://wa.me/9443403775"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 2,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color.fromARGB(255, 42, 1, 154),
                          ),
                          // Customize your line color here
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "Every Parent Matters!",
                          style: GoogleFonts.outfit(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text(
                      "For 11 years, SKV Group, led by Sri Kalaimagal Trust has maintained a perfect 100% pass rate in 10th-grade exams, earning praise consistently",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.outfit(
                        fontSize: 16,
                        color: Colors.black87,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 20),
                    MyImageCardSlider(imagePaths: imagePaths),
                  ],
                ),
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
        title: const Text("SKV International School"),
      ),
      body: const Center(
        child: Text(
          "Welcome to SKV International School - Tablet Layout",
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
                  const EdgeInsets.symmetric(horizontal: 170.0, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 24),
                                Text(
                                  "SKV International School",
                                  style: GoogleFonts.outfit(
                                    fontSize: 56,
                                    color:
                                        const Color.fromARGB(255, 42, 1, 154),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  "(CBSE)",
                                  style: GoogleFonts.outfit(
                                    fontSize: 32,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                RichText(
                                  text: TextSpan(
                                    style: GoogleFonts.outfit(
                                      fontSize: 44,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                    children: const [
                                      TextSpan(
                                        text: "800+",
                                        style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 42, 1, 154),
                                        ),
                                      ),
                                      TextSpan(
                                        text: " Students Running\nSuccessfully",
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    MyFilledButton(
                                      onTap: () {},
                                      text: "Online Admission",
                                    ),
                                    const SizedBox(width: 16),
                                    MyOutlineButton(
                                      onTap: () {},
                                      text: "Fee Details",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.topRight,
                              child: Image.asset(
                                "lib/images/schoolgirl.png",
                                height: 500,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Positioned(
                        top: 380,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            AboutSchoolCard(
                              title: "About School",
                              content:
                                  "For 11 years, SKV Group, led by Sri Kalaimagal Trust "
                                  "has maintained a perfect 100% pass rate in "
                                  "10th-grade exams, earning praise consistently.",
                              icon: Icons.school,
                            ),
                            AboutSchoolCard(
                              title: "Our Vision",
                              content:
                                  "For 11 years, SKV Group, led by Sri Kalaimagal Trust "
                                  "has maintained a perfect 100% pass rate in "
                                  "10th-grade exams, earning praise consistently.",
                              icon: Icons.visibility,
                            ),
                            AboutSchoolCard(
                              title: "Achievements",
                              content:
                                  "For 11 years, SKV Group, led by Sri Kalaimagal Trust "
                                  "has maintained a perfect 100% pass rate in "
                                  "10th-grade exams, earning praise consistently.",
                              icon: Icons.emoji_events,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 180),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 225),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "Admissions Open For the Academic Year 2024-25",
                        style: GoogleFonts.outfit(
                          fontSize: 32,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),
                  CarouselSlider(
                    options: CarouselOptions(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 3),
                      height: 550,
                      enlargeCenterPage: true,
                    ),
                    items: imagePaths.map((imagePath) {
                      return Builder(
                        builder: (BuildContext context) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: Image.asset(
                              imagePath,
                              fit: BoxFit.cover,
                              width: MediaQuery.of(context).size.width,
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 40),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Connect With Us on Social Media:",
                        style: GoogleFonts.outfit(
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 16),
                      const MySocialMedia(),
                      const SizedBox(height: 80),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 220,
                                height: 4,
                                color: Colors.red,
                              ),
                              const SizedBox(height: 12),
                              Text(
                                "Every Parents Matter",
                                style: GoogleFonts.outfit(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Text(
                                "For 11 years, SKV Group, led by Sri Kalaimagal Trust\n"
                                "has maintained a perfect 100% pass rate in \n"
                                "10th-grade exams, earning praise consistently.",
                                style: GoogleFonts.outfit(
                                  fontSize: 18,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Text(
                                "Learn More",
                                style: GoogleFonts.outfit(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                  decorationColor: Colors.blue,
                                  decorationThickness: 2,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 120),
                          Expanded(
                            child: Stack(
                              children: [
                                AnimatedSwitcher(
                                  duration: const Duration(milliseconds: 1000),
                                  transitionBuilder: (child, animation) {
                                    return FadeTransition(
                                      opacity: animation,
                                      child: child,
                                    );
                                  },
                                  child: ClipRRect(
                                    key: ValueKey<int>(currentImageIndex),
                                    borderRadius: BorderRadius.circular(16),
                                    child: Image.asset(
                                      imagePaths[currentImageIndex],
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                      height: 400,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 10,
                                  top: 180,
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.arrow_back_ios,
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        currentImageIndex = (currentImageIndex -
                                                1 +
                                                imagePaths.length) %
                                            imagePaths.length;
                                      });
                                    },
                                  ),
                                ),
                                Positioned(
                                  right: 10,
                                  top: 180,
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.arrow_forward_ios,
                                      size: 32,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        currentImageIndex =
                                            (currentImageIndex + 1) %
                                                imagePaths.length;
                                      });
                                    },
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
            ),
            const SizedBox(height: 10),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 170, vertical: 40),
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
                                      onTap: () => _openUrl(
                                          "https://facebook.com/yourpage"),
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
                                      onTap: () =>
                                          _openUrl("https://wa.me/9443403775"),
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
            ),
          ],
        ),
      ),
    );
  }
}
