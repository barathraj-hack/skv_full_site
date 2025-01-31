import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyNewsOne extends StatefulWidget {
  const MyNewsOne({super.key});

  @override
  State<MyNewsOne> createState() => _MyNewsOneState();
}

class _MyNewsOneState extends State<MyNewsOne> {
  // List of image paths
  List<String> imagePaths = [
    "lib/images/skv1.png",
    "lib/images/skv2.png",
    "lib/images/skv3.png",
  ];

  List<String> imagePathsNew = [
    "lib/images/skv3.png",
    "lib/images/skv1.png",
    "lib/images/skv2.png",
  ];

  List<String> imagePathsThree = [
    "lib/images/skv1.png",
    "lib/images/skv2.png",
    "lib/images/skv3.png",
  ];

  List<String> imagePathsFour = [
    "lib/images/skv1.png",
    "lib/images/skv2.png",
    "lib/images/skv3.png",
  ];

  // Current image index to track which image is shown
  int currentImageIndex = 0;

  // Current image index to track which image is shown
  int currentImageIndexNew = 0;

  // Current image index to track which image is shown
  int currentImageIndexThree = 0;

  // Current image index to track which image is shown
  int currentImageIndexFour = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // imagepath 1
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 207,
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
                    top: 80,
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
                    top: 80,
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
              height: 140,
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
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Library day, Children's day,Diwali Contribution etc….",
                    style: GoogleFonts.outfit(
                      fontSize: 14,
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),

        // imagepath 2
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 207,
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
                    top: 80,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 32,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          currentImageIndex = (currentImageIndexNew -
                                  1 +
                                  imagePathsNew.length) %
                              imagePathsNew.length;
                        });
                      },
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 80,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 32,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          currentImageIndexNew =
                              (currentImageIndexNew + 1) % imagePathsNew.length;
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
              height: 140,
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
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Library day, Children's day,Diwali Contribution etc….",
                    style: GoogleFonts.outfit(
                      fontSize: 14,
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),

        // imagepath 3
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 207,
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
                      key: ValueKey<int>(currentImageIndexThree),
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        imagePathsNew[currentImageIndexThree],
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 400,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 80,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 32,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          currentImageIndexThree = (currentImageIndexThree -
                                  1 +
                                  imagePathsThree.length) %
                              imagePathsThree.length;
                        });
                      },
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 80,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 32,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          currentImageIndexThree =
                              (currentImageIndexThree + 1) %
                                  imagePathsThree.length;
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
              height: 140,
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
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Library day, Children's day,Diwali Contribution etc….",
                    style: GoogleFonts.outfit(
                      fontSize: 14,
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        // imagepath 4
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 207,
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
                      key: ValueKey<int>(currentImageIndexFour),
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        imagePathsNew[currentImageIndexFour],
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 400,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 80,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios,
                        size: 32,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          currentImageIndexFour = (currentImageIndexFour -
                                  1 +
                                  imagePathsFour.length) %
                              imagePathsFour.length;
                        });
                      },
                    ),
                  ),
                  Positioned(
                    right: 10,
                    top: 80,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        size: 32,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        setState(() {
                          currentImageIndexFour = (currentImageIndexFour + 1) %
                              imagePathsFour.length;
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
              height: 140,
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
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Library day, Children's day,Diwali Contribution etc….",
                    style: GoogleFonts.outfit(
                      fontSize: 14,
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
