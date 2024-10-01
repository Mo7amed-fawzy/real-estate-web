import 'package:flutter/material.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: SafeArea(
          child: Column(
        children: [AspectRatio(aspectRatio: 1.23)],
      )),
    );
  }
}
