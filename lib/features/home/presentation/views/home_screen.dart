import 'package:flutter/material.dart';
import 'package:real_estate_app/core/responsive.dart';
import 'package:real_estate_app/core/utils/constants.dart';
import 'package:real_estate_app/features/home/presentation/views/components/side_menu_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.mainSection});
  final Widget mainSection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context) // شغلي علي الحاجه الفوق البادي
          ? null
          : AppBar(
              backgroundColor: kBgColor,
              leading: Builder(
                  builder: (context) => IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      icon: const Icon(Icons.menu)))),
      drawer: const SideMenuSection(),
      body: SafeArea(
        child: Center(
          child: Container(
            constraints:
                const BoxConstraints(maxWidth: 1440), // علشان ادي عرض ثابت
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (Responsive.isDesktop(context))
                  // بقولو لو كمبيوتر اظهرلي الاكسباند التحت دي ولو لا متظهرهاش
                  const Expanded(
                      flex: 2, // دي شبه لما ادي ويدث بنسبة % فالفرونت
                      child: SideMenuSection()),
                Expanded(
                  flex: 7,
                  child: mainSection,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
