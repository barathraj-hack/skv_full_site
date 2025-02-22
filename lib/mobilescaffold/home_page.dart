import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skv_website/desktop_constants/bottom_widget/desktop_bottom_widget.dart';
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
import 'package:skv_website/tablet_constants/tablet_bottom_widget.dart';
import 'package:skv_website/tablet_constants/tablet_social_media.dart';
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
      body: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(scrollbars: false),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
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
                                      fontWeight: FontWeight.w500,
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
                                  "900+",
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
                      Row(
                        children: [
                          MyFilledMobileButton(
                            onTap: () => _openUrl(
                              "https://skvinstvm.nexterp.in/nlp/nlp/admission-login",
                            ),
                          ),
                          const SizedBox(width: 10),
                          MyOutlineMobileButton(
                            onTap: () => _openUrl(
                              "https://skvinternationalschool.org/wp-content/uploads/2022/05/4.ADMISSION-POLICY.pdf",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),
                      const MyMobileCard(
                        content:
                            "SKV Group of Institutions, managed by \nSri Kalaimagal Trust, offers world-class schools, and Montessori feeder schools , holistic education, academic excellence, and future-ready skills for every child.",
                        icon: Icons.school,
                        title: "About School",
                      ),
                      const SizedBox(height: 16),
                      const MyMobileCard(
                        content:
                            "To empower students with quality education, strong values, and essential skills, fostering a love for learning and innovation. We aim to create confident, responsible individuals who contribute and lead with excellence.",
                        icon: Icons.remove_red_eye,
                        title: "Our Vision",
                      ),
                      const SizedBox(height: 16),
                      const MyMobileCard(
                        content:
                            "SKV Group of Institutions has set world records and received awards for academic excellence, innovation, and extracurricular success, reflecting our commitment to nurturing future-ready students with a global impact.",
                        icon: Icons.emoji_events,
                        title: "Achievements",
                      ),
                      const SizedBox(height: 32),
                      const MyAdvestisementCard(
                          content:
                              "Admissions Open For the Academic Year 2025-26 \n(From Pre-Kg to XI th Std)"),
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  MySocialMediaButton(
                                    icon: FontAwesomeIcons.instagram,
                                    color: Colors.pink,
                                    colorone: Colors.pink,
                                    text: "Instagram",
                                    onTap: () => _openUrl(
                                      "https://www.instagram.com/skv_international_school/",
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  MySocialMediaButton(
                                    icon: FontAwesomeIcons.facebook,
                                    color: Colors.blue,
                                    colorone: Colors.blue,
                                    text: "Facebook",
                                    onTap: () => _openUrl(
                                        "https://www.facebook.com/skvinternationalschool"),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  MySocialMediaButton(
                                    icon: FontAwesomeIcons.youtube,
                                    color: Colors.red,
                                    colorone: Colors.red,
                                    text: "Youtube",
                                    onTap: () => _openUrl(
                                        "https://www.youtube.com/@SKVInternational"),
                                  ),
                                  const SizedBox(width: 20),
                                  MySocialMediaButton(
                                    icon: FontAwesomeIcons.whatsapp,
                                    color: Colors.green,
                                    colorone: Colors.green,
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
                        "At SKV Group of Institutions, we believe parents are key partners in a childs education. Your involvement, encouragement, and support are vital in fostering academic success and personal growth, helping us create a nurturing environment for every childs future.",
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
      ),
    );
  }

  // Tablet layout
  Widget _buildTabletLayout() {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: const ScrollBehavior().copyWith(scrollbars: false),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
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
                                "SKV INTERNATIONAL SCHOOL",
                                style: GoogleFonts.outfit(
                                  fontSize: 60,
                                  color: const Color.fromARGB(255, 42, 1, 154),
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -2,
                                  height: 1,
                                ),
                              ),
                              Text(
                                "Sr Sec (CBSE)",
                                style: GoogleFonts.outfit(
                                  fontSize: 40,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -2,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 6),
                                decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 42, 1, 154),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Text(
                                  "900+",
                                  style: GoogleFonts.outfit(
                                    fontSize: 42,
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
                                  fontSize: 42,
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
                              fontSize: 42,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          MyFilledButton(
                            onTap: () => _openUrl(
                              "https://skvinstvm.nexterp.in/nlp/nlp/admission-login",
                            ),
                            text: "Online Admission",
                          ),
                          const SizedBox(width: 16),
                          MyOutlineButton(
                            onTap: () => _openUrl(
                              "https://skvinternationalschool.org/wp-content/uploads/2022/05/4.ADMISSION-POLICY.pdf",
                            ),
                            text: "Admission Policy",
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          AboutSchoolCard(
                            title: "About School",
                            content:
                                "SKV Group of Institutions, managed by Sri Kalaimagal Trust, offers world-class schools, and Montessori feeder schools in Tiruvannamalai, ensuring holistic education, academic excellence, and future-ready skills for every child.",
                            icon: Icons.school,
                          ),
                          SizedBox(width: 20),
                          AboutSchoolCard(
                            title: "Our Vision",
                            content:
                                "To empower students with quality education, strong values, and essential skills, fostering a love for learning and innovation. We aim to create confident, responsible individuals who contribute and lead with excellence.",
                            icon: Icons.visibility,
                          ),
                          SizedBox(width: 20),
                          AboutSchoolCard(
                            title: "Achievements",
                            content:
                                "SKV Group of Institutions has set world records and received numerous awards for academic excellence, innovation, and extracurricular success, reflecting our commitment to nurturing future-ready students with a global impact.",
                            icon: Icons.emoji_events,
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              spreadRadius: 2,
                              blurRadius: 6,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          color: const Color.fromARGB(255, 42, 1, 154),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            textAlign: TextAlign.center,
                            "Admissions Open For the Academic Year 2025-26 \n(From Pre-Kg to XI th Std)",
                            style: GoogleFonts.cinzel(
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                              color: Colors.yellowAccent,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 32),
                      CarouselSlider(
                        options: CarouselOptions(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          autoPlay: true,
                          autoPlayInterval: const Duration(seconds: 3),
                          height: 400,
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
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          letterSpacing: 0.5,
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
                      const SizedBox(height: 32),
                      Row(
                        children: [
                          SizedBox(
                            width: 400,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 2,
                                  width: 160,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color:
                                        const Color.fromARGB(255, 42, 1, 154),
                                  ),
                                  // Customize your line color here
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  "Every Parent Matters!",
                                  style: GoogleFonts.outfit(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                                const SizedBox(height: 16),
                                Text(
                                  "At SKV Group of Institutions, we believe parents are key partners in a childs education. Your involvement, encouragement, and support are vital in fostering academic success and personal growth, helping us create a nurturing environment for every childs future.",
                                  textAlign: TextAlign.start,
                                  style: GoogleFonts.outfit(
                                    fontSize: 18,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 60),
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
                ),
              ),
              const MyTabletBottomWidget(),
            ],
          ),
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
                  const EdgeInsets.symmetric(horizontal: 120.0, vertical: 40),
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
                                Row(
                                  children: [
                                    Text(
                                      "SKV INTERNATIONAL SCHOOL",
                                      style: GoogleFonts.outfit(
                                        fontSize: 60,
                                        color: const Color.fromARGB(
                                            255, 42, 1, 154),
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: -2,
                                        height: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Sr Sec (CBSE)",
                                  style: GoogleFonts.outfit(
                                    fontSize: 40,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: -2,
                                  ),
                                ),
                                const SizedBox(height: 20),
                                RichText(
                                  text: TextSpan(
                                    style: GoogleFonts.outfit(
                                      fontSize: 50,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
                                    ),
                                    children: [
                                      WidgetSpan(
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 6, vertical: 1),
                                          decoration: BoxDecoration(
                                            color: const Color.fromARGB(255, 42,
                                                1, 154), // Background color
                                            borderRadius:
                                                BorderRadius.circular(15),
                                          ),
                                          child: Text(
                                            "900+",
                                            style: GoogleFonts.outfit(
                                              fontSize: 45,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white, // Text color
                                            ),
                                          ),
                                        ),
                                      ),
                                      const TextSpan(
                                        text: " Students Running\nSuccessfully",
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 20),
                                Row(
                                  children: [
                                    MyFilledButton(
                                      onTap: () => _openUrl(
                                        "https://skvinstvm.nexterp.in/nlp/nlp/admission-login",
                                      ),
                                      text: "Online Admission",
                                    ),
                                    const SizedBox(width: 16),
                                    MyOutlineButton(
                                      onTap: () => _openUrl(
                                        "https://skvinternationalschool.org/wp-content/uploads/2022/05/4.ADMISSION-POLICY.pdf",
                                      ),
                                      text: "Admission Policy",
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
                        top: 400,
                        left: 0,
                        right: 0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            AboutSchoolCard(
                              title: "About School",
                              content:
                                  "SKV Group of Institutions, managed by \nSri Kalaimagal Trust, offers world-class schools, and Montessori feeder schools in Tiruvannamalai, ensuring holistic education, academic excellence, and future-ready skills for every child.",
                              icon: Icons.school,
                            ),
                            SizedBox(width: 20),
                            AboutSchoolCard(
                              title: "Our Vision",
                              content:
                                  "To empower students with quality education, strong values, and essential skills, fostering a love for learning and innovation. We aim to create confident, responsible individuals who contribute and lead with excellence.",
                              icon: Icons.visibility,
                            ),
                            SizedBox(width: 20),
                            AboutSchoolCard(
                              title: "Achievements",
                              content:
                                  "SKV Group of Institutions has set world records and received numerous awards for academic excellence, innovation, and extracurricular success, reflecting our commitment to nurturing future-ready students with a global impact.",
                              icon: Icons.emoji_events,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 220),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 2,
                          blurRadius: 6,
                          offset: const Offset(0, 3),
                        ),
                      ],
                      color: const Color.fromARGB(255, 42, 1, 154),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                        "Admissions Open For the Academic Year 2025-26 (From Pre-Kg to XI th Std)",
                        style: GoogleFonts.cinzel(
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          color: Colors.yellowAccent,
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
                      height: 500,
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
                  const SizedBox(height: 60),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Follow us on social media!",
                        style: GoogleFonts.outfit(
                          fontSize: 32,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 24),
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
                      const SizedBox(height: 80),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 220,
                                height: 3,
                                color: const Color.fromARGB(255, 42, 1, 154),
                              ),
                              const SizedBox(height: 12),
                              Text(
                                "Every Parents Matter",
                                style: GoogleFonts.outfit(
                                  fontSize: 32,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "At SKV Group of Institutions, we believe parents are \nkey partners in a childs education. Your involvement, \nencouragement, and support are vital in fostering academic \nsuccess and personal growth, helping us create a \nnurturing environment for every childs future.",
                                style: GoogleFonts.outfit(
                                  fontSize: 18,
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w500,
                                  height: 1.5,
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
            const MyDesktopBottomWidget(),
          ],
        ),
      ),
    );
  }
}
