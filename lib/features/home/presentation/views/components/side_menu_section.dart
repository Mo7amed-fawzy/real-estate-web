import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:real_estate_app/core/utils/app_assets.dart';
import 'package:real_estate_app/core/utils/constants.dart';
import 'package:real_estate_app/core/widgets/custom_icon_button.dart';
import 'package:real_estate_app/features/home/presentation/views/widgets/menu/contact_info.dart';
import 'package:real_estate_app/features/home/presentation/views/widgets/menu/goals.dart';
import 'package:real_estate_app/features/home/presentation/views/widgets/menu/logo.dart';

class SideMenuSection extends StatelessWidget {
  const SideMenuSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
          child: Column(children: [
        const Logo(),
        Expanded(
            child: SingleChildScrollView(
                padding: const EdgeInsets.all(kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ContactInfo(),
                    const Divider(),
                    const Goals(),
                    const Divider(),
                    const SizedBox(height: kDefaultPadding),
                    TextButton(
                      onPressed: () {},
                      child: FittedBox(
                        child: Row(
                          children: [
                            SvgPicture.asset(Assets.astsIdownload),
                            const SizedBox(
                              width: kDefaultPadding / 2,
                            ),
                            Text(
                              'Download Brochure',
                              style: TextStyle(
                                  color: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .color),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      child: const Row(
                        children: [
                          CustomIconButton(myicon: Assets.astsIlinkedin),
                          CustomIconButton(myicon: Assets.astsIgithub),
                          CustomIconButton(myicon: Assets.astsItwitter),
                          CustomIconButton(myicon: Assets.astsIdribble)
                        ],
                      ),
                    ),
                  ],
                )))
      ])),
    );
  }
}
