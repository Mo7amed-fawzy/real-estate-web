import 'package:flutter/material.dart';
import 'package:real_estate_app/core/utils/constants.dart';
import 'package:real_estate_app/features/home/presentation/views/home_screen.dart';

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
