import 'package:flutter/material.dart';
       // ✅ Your home screen
import 'screens/entry_screen.dart';      // ✅ New entry screen

void main() {
  runApp(const TravelAssistantApp());
}

class TravelAssistantApp extends StatelessWidget {
  const TravelAssistantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Assistant India',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        fontFamily: 'Arial',
      ),
      home: const EntryScreen(), // ✅ Entry screen is now the landing page
      debugShowCheckedModeBanner: false,
    );
  }
}
