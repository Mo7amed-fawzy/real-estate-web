import 'package:flutter/material.dart';
import 'package:real_estate_app/constants.dart';
import 'package:real_estate_app/screens/home_screen.dart';

void main() {
  runApp(const REweb());
}

class REweb extends StatelessWidget {
  const REweb({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Real Estate',
      theme: isDarkMode ? darkTheme : lightTheme,
      home: const HomeScreen(),
    );
  }
}
