import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_test/view/json_screen/provider/data_provider.dart';
import 'package:widget_test/view/json_screen/screen/json_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => DataProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: JsonScreen(),
    );
  }
}
