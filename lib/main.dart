import 'package:flutter/material.dart';
import 'package:skv_website/responsive/desktop_scaffold.dart';
import 'package:skv_website/responsive/mobile_scaffold.dart';
import 'package:skv_website/responsive/responsive_layout.dart';
import 'package:skv_website/responsive/tablet_scaffold.dart';

void main() {
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
