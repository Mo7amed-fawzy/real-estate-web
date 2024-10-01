import 'package:flutter/material.dart';
import 'package:real_estate_app/features/home/presentation/views/components/side_menu_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            constraints:
                const BoxConstraints(maxWidth: 1440), // علشان ادي عرض ثابت
            child: Row(
              children: [
                const Expanded(
                    flex: 2, // دي شبه لما ادي ويدث بنسبة % فالفرونت
                    child: SideMenuSection()),
                Expanded(
                  flex: 7,
                  child: Container(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
