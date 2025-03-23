import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyNewEvent extends StatefulWidget {
  const MyNewEvent({super.key});

  @override
  State<MyNewEvent> createState() => _MyNewEventState();
}

class _MyNewEventState extends State<MyNewEvent> {
  // List of image paths
  List<String> imageUrls = []; // From 'uploaded_images_three/'
  int currentImageIndexOne = 0;

  List<String> imageUrl = []; // From 'uploaded_images_four/'
  int currentImageIndex = 0;

  String newsOneTitle = "";
  String newsOneDesc = "";

  String newsTwoTitle = "";
  String newsTwoDesc = "";

  @override
  void initState() {
    super.initState();
    fetchFirebaseImagesThree(); // Load folder 3
    fetchFirebaseImagesFour(); // Load folder 4
    fetchNewsText();
    fetchNewsOneText();
  }

  Future<void> fetchFirebaseImagesThree() async {
    final storageRef = FirebaseStorage.instance
        .ref()
        .child('uploaded_images_nine/'); // Folder 3
    final ListResult result = await storageRef.listAll();
    final urls =
        await Future.wait(result.items.map((ref) => ref.getDownloadURL()));

    setState(() {
      imageUrls = urls; // Store in imageUrls (folder 3)
    });
  }

  Future<void> fetchFirebaseImagesFour() async {
    final storageRef = FirebaseStorage.instance
        .ref()
        .child('uploaded_images_ten/'); // Folder 4
    final ListResult result = await storageRef.listAll();
    final urls =
        await Future.wait(result.items.map((ref) => ref.getDownloadURL()));

    setState(() {
      imageUrl = urls; // Store in imageUrl (folder 4)
    });
  }

  Future<void> fetchNewsText() async {
    try {
      final snapshot = await FirebaseFirestore.instance
          .collection('uploaded_image_six')
          .orderBy('timestamp',
              descending: true) // make sure your docs have timestamp
          .limit(1) // get only the latest
          .get();

      if (snapshot.docs.isNotEmpty) {
        final data = snapshot.docs.first.data();

        setState(() {
          newsOneTitle = data['title'] ?? 'No title';
          newsOneDesc = data['description'] ?? 'No description';
        });

        print("✅ News loaded: $newsOneTitle");
      } else {
        print("⚠️ No documents found in 'uploaded_image_six'");
      }
    } catch (e) {
      print("❌ Error fetching news text: $e");
    }
  }

  Future<void> fetchNewsOneText() async {
    try {
      final snapshot = await FirebaseFirestore.instance
          .collection('uploaded_image_seven')
          .orderBy('timestamp',
              descending: true) // make sure your docs have timestamp
          .limit(1) // get only the latest
          .get();

      if (snapshot.docs.isNotEmpty) {
        final data = snapshot.docs.first.data();

        setState(() {
          newsTwoTitle = data['title'] ?? 'No title';
          newsTwoDesc = data['description'] ?? 'No description';
        });

        print("✅ News loaded: $newsTwoTitle");
      } else {
        print("⚠️ No documents found in 'uploaded_image_seven'");
      }
    } catch (e) {
      print("❌ Error fetching news text: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // First Image with Arrows
        Flexible(
          flex: 1,
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
                        key: ValueKey<int>(currentImageIndexOne),
                        borderRadius: BorderRadius.circular(16),
                        child: Image.network(
                          imageUrls[
                              currentImageIndexOne], // <- Firebase image URL
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
                              const Center(
                            child: Text("Failed to load image"),
                          ),
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
                            currentImageIndexOne =
                                (currentImageIndexOne - 1 + imageUrls.length) %
                                    imageUrls.length;
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
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      newsOneTitle.isNotEmpty
                          ? newsOneTitle
                          : 'Loading title...', // ✅ Handle loading state
                      style: GoogleFonts.outfit(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      newsOneDesc.isNotEmpty
                          ? newsOneDesc
                          : 'Loading description...', // ✅ Handle loading state
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
          flex: 1,
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
                        child: Image.network(
                          imageUrl[currentImageIndex], // <- Firebase image URL
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
                              const Center(
                            child: Text("Failed to load image"),
                          ),
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
                                (currentImageIndex - 1 + imageUrl.length) %
                                    imageUrl.length;
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
                  border: Border.all(
                    color: Colors.grey.shade300,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      newsTwoTitle.isNotEmpty
                          ? newsTwoTitle
                          : 'Loading title...', // ✅ Handle loading state
                      style: GoogleFonts.outfit(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      newsTwoDesc.isNotEmpty
                          ? newsTwoDesc
                          : 'Loading description...', // ✅ Handle loading state
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
