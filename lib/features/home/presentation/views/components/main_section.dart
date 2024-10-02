import 'package:flutter/material.dart';
import 'package:real_estate_app/features/home/presentation/views/home_screen.dart';
import 'package:real_estate_app/features/home/presentation/views/widgets/main/home_banner.dart';
import 'package:real_estate_app/features/home/presentation/views/widgets/main/icon_info.dart';
import 'package:real_estate_app/features/home/presentation/views/widgets/main/recommendations.dart';

import '../widgets/main/projects.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeScreen(
      mainSection: SingleChildScrollView(
        child: Column(
          children: [
            HomeBanner(),
            IconInfo(),
            Projects(),
            Recommendations(),
          ],
        ),
      ),
    );
  }
}
