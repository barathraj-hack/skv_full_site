import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // Import Firebase options
import 'package:flutter/material.dart';
import 'package:skv_website/responsive/desktop_scaffold.dart';
import 'package:skv_website/responsive/mobile_scaffold.dart';
import 'package:skv_website/responsive/responsive_layout.dart';
import 'package:skv_website/responsive/tablet_scaffold.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // ✅ Ensures Flutter is initialized
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
        mobileScaffold: MobileScaffold(),
        tabletScaffold: TabletScaffold(),
        desktopScaffold: DesktopScaffold(),
      ),
    );
  }
}
