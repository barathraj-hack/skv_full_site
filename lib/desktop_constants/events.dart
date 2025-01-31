import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyEvents extends StatefulWidget {
  const MyEvents({super.key});

  @override
  State<MyEvents> createState() => _MyEventsState();
}

class _MyEventsState extends State<MyEvents> {
  // List of image paths
  List<String> imagePaths = [
    "lib/images/skv1.png",
    "lib/images/skv2.png",
    "lib/images/skv3.png",
  ];

  List<String> imagePathsNew = [
    "lib/images/skv1.png",
    "lib/images/skv2.png",
    "lib/images/skv3.png",
  ];

  // Current image index to track which image is shown
  int currentImageIndex = 0;

  // Current image index to track which image is shown
  int currentImageIndexNew = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // First Image with Arrows
        Flexible(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
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
                            currentImageIndex =
                                (currentImageIndex - 1 + imagePaths.length) %
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
                                (currentImageIndex + 1) % imagePaths.length;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 180,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nov Month 2024:",
                      style: GoogleFonts.outfit(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Library day, Children's day,Diwali Contribution etc….",
                      style: GoogleFonts.outfit(
                        fontSize: 20,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 40),
        // Second Image with Arrows
        Flexible(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
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
                        key: ValueKey<int>(currentImageIndexNew),
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          imagePathsNew[currentImageIndexNew],
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
                            currentImageIndexNew = (currentImageIndexNew -
                                    1 +
                                    imagePathsNew.length) %
                                imagePathsNew.length;
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
                            currentImageIndexNew = (currentImageIndexNew + 1) %
                                imagePathsNew.length;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                height: 180,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nov Month 2024:",
                      style: GoogleFonts.outfit(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Library day, Children's day,Diwali Contribution etc….",
                      style: GoogleFonts.outfit(
                        fontSize: 20,
                        color: Colors.grey.shade700,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
