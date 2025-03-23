import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyNewsTwoMobile extends StatefulWidget {
  const MyNewsTwoMobile({super.key});

  @override
  State<MyNewsTwoMobile> createState() => _MyNewsTwoMobileState();
}

class _MyNewsTwoMobileState extends State<MyNewsTwoMobile> {
  // List of image paths
  List<String> imageUrls = []; // From 'uploaded_images_three/'
  int currentImageIndexOne = 0;

  List<String> imageUrl = []; // From 'uploaded_images_four/'
  int currentImageIndex = 0;

  String newsThreeTitle = "";
  String newsThreeDesc = "";

  String newsFourTitle = "";
  String newsFourDesc = "";

  @override
  void initState() {
    super.initState();
    fetchFirebaseImagesFive(); // Load folder 3
    fetchFirebaseImagesSix(); // Load folder 4
    fetchNewsTwoText();
    fetchNewsThreeText();
  }

  Future<void> fetchFirebaseImagesFive() async {
    final storageRef = FirebaseStorage.instance
        .ref()
        .child('uploaded_images_five/'); // Folder 5
    final ListResult result = await storageRef.listAll();
    final urls =
        await Future.wait(result.items.map((ref) => ref.getDownloadURL()));

    setState(() {
      imageUrls = urls; // Store in imageUrls (folder 3)
    });
  }

  Future<void> fetchFirebaseImagesSix() async {
    final storageRef = FirebaseStorage.instance
        .ref()
        .child('uploaded_images_six/'); // Folder 6
    final ListResult result = await storageRef.listAll();
    final urls =
        await Future.wait(result.items.map((ref) => ref.getDownloadURL()));

    setState(() {
      imageUrl = urls; // Store in imageUrl (folder 4)
    });
  }

  Future<void> fetchNewsTwoText() async {
    try {
      final snapshot = await FirebaseFirestore.instance
          .collection('uploaded_texts_two')
          .orderBy('timestamp',
              descending: true) // make sure your docs have timestamp
          .limit(1) // get only the latest
          .get();

      if (snapshot.docs.isNotEmpty) {
        final data = snapshot.docs.first.data();

        setState(() {
          newsThreeTitle = data['title'] ?? 'No title';
          newsThreeDesc = data['description'] ?? 'No description';
        });

        print("✅ News loaded: $newsThreeTitle");
      } else {
        print("⚠️ No documents found in 'uploaded_texts_two'");
      }
    } catch (e) {
      print("❌ Error fetching news text: $e");
    }
  }

  Future<void> fetchNewsThreeText() async {
    try {
      final snapshot = await FirebaseFirestore.instance
          .collection('uploaded_texts_three')
          .orderBy('timestamp',
              descending: true) // make sure your docs have timestamp
          .limit(1) // get only the latest
          .get();

      if (snapshot.docs.isNotEmpty) {
        final data = snapshot.docs.first.data();

        setState(() {
          newsFourTitle = data['title'] ?? 'No title';
          newsFourDesc = data['description'] ?? 'No description';
        });

        print("✅ News loaded: $newsFourTitle");
      } else {
        print("⚠️ No documents found in 'uploaded_texts_three'");
      }
    } catch (e) {
      print("❌ Error fetching news text: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // First Image Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 250,
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
                        key: ValueKey<int>(currentImageIndexOne),
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          imageUrls[currentImageIndexOne],
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 700,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return SizedBox(
                              height: 700,
                              child: Center(
                                child: CircularProgressIndicator(
                                  value: loadingProgress.expectedTotalBytes !=
                                          null
                                      ? loadingProgress.cumulativeBytesLoaded /
                                          loadingProgress.expectedTotalBytes!
                                      : null,
                                ),
                              ),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) =>
                              const Center(child: Text("Failed to load image")),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 100,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios,
                            size: 32, color: Colors.white),
                        onPressed: () {
                          setState(() {
                            currentImageIndexOne =
                                (currentImageIndexOne - 1 + imageUrls.length) %
                                    imageUrls.length;
                          });
                        },
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 100,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_forward_ios,
                            size: 32, color: Colors.white),
                        onPressed: () {
                          setState(() {
                            currentImageIndexOne =
                                (currentImageIndexOne + 1) % imageUrls.length;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      newsThreeTitle.isNotEmpty
                          ? newsThreeTitle
                          : 'Loading title...',
                      style: GoogleFonts.outfit(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      newsThreeDesc.isNotEmpty
                          ? newsThreeDesc
                          : 'Loading description...',
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

          const SizedBox(height: 40),

          // Second Image Section
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 250,
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
                        child: Image.network(
                          imageUrl[currentImageIndex],
                          fit: BoxFit.cover,
                          width: double.infinity,
                          height: 700,
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return SizedBox(
                              height: 700,
                              child: Center(
                                child: CircularProgressIndicator(
                                  value: loadingProgress.expectedTotalBytes !=
                                          null
                                      ? loadingProgress.cumulativeBytesLoaded /
                                          loadingProgress.expectedTotalBytes!
                                      : null,
                                ),
                              ),
                            );
                          },
                          errorBuilder: (context, error, stackTrace) =>
                              const Center(child: Text("Failed to load image")),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 100,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios,
                            size: 32, color: Colors.white),
                        onPressed: () {
                          setState(() {
                            currentImageIndex =
                                (currentImageIndex - 1 + imageUrl.length) %
                                    imageUrl.length;
                          });
                        },
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 100,
                      child: IconButton(
                        icon: const Icon(Icons.arrow_forward_ios,
                            size: 32, color: Colors.white),
                        onPressed: () {
                          setState(() {
                            currentImageIndex =
                                (currentImageIndex + 1) % imageUrl.length;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      newsFourTitle.isNotEmpty
                          ? newsFourTitle
                          : 'Loading title...',
                      style: GoogleFonts.outfit(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      newsFourDesc.isNotEmpty
                          ? newsFourDesc
                          : 'Loading description...',
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
        ],
      ),
    );
  }
}
