import 'package:flutter/material.dart';

class MyImageCardSlider extends StatefulWidget {
  final List<String> imagePaths;
  const MyImageCardSlider({
    super.key,
    required this.imagePaths,
  });

  @override
  State<MyImageCardSlider> createState() => _MyImageCardSliderState();
}

class _MyImageCardSliderState extends State<MyImageCardSlider> {
  int currentIndex = 0;

  void _goToPrevious() {
    setState(() {
      currentIndex = (currentIndex - 1 + widget.imagePaths.length) %
          widget.imagePaths.length;
    });
  }

  void _goToNext() {
    setState(() {
      currentIndex = (currentIndex + 1) % widget.imagePaths.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                image: DecorationImage(
                  image: AssetImage(widget.imagePaths[currentIndex]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              left: 1,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_left,
                  size: 40,
                  color: Colors.white.withOpacity(0.7),
                ),
                onPressed: _goToPrevious,
              ),
            ),
            Positioned(
              right: 1,
              child: IconButton(
                icon: Icon(
                  Icons.arrow_right,
                  size: 40,
                  color: Colors.white.withOpacity(0.7),
                ),
                onPressed: _goToNext,
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.imagePaths.length,
            (index) => Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currentIndex == index
                    ? const Color.fromARGB(255, 42, 1, 154)
                    : Colors.grey.withOpacity(0.4),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: MyImageCardSlider(
            imagePaths: [
              "lib/images/skv1.png",
              "lib/images/skv2.png",
              "lib/images/skv3.png",
              "lib/images/skv3.png",
            ],
          ),
        ),
      ),
    ),
  );
}
