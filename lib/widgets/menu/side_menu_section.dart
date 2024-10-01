import 'package:flutter/material.dart';
import 'package:real_estate_app/utils/constants.dart';
import 'package:real_estate_app/widgets/menu/contact_info.dart';
import 'package:real_estate_app/widgets/menu/logo.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      child: SafeArea(
          child: Column(
        children: [
          Logo(),
          Expanded(
              child: SingleChildScrollView(
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              children: [
                ContactInfo(),
                Divider(),
              ],
            ),
          ))
        ],
      )),
    );
  }
}
