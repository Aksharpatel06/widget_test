import 'package:flutter/material.dart';
import 'package:widget_test/view/morphismscreen/morphism_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GlassMorphismSreen(),
    );
  }
}

