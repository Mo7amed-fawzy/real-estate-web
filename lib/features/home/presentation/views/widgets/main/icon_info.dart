import 'package:flutter/material.dart';
import 'package:real_estate_app/core/responsive.dart';
import 'package:real_estate_app/core/utils/constants.dart';
import 'package:real_estate_app/features/home/presentation/views/widgets/main/icon_info_item.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      child: Responsive.isMobileLarge(context)
          ? const Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: IconInfoItem(
                        text: '67+',
                        icon: Icons.supervisor_account,
                        label: 'Clients',
                      ),
                    ),
                    Expanded(
                      child: IconInfoItem(
                        text: '139+',
                        icon: Icons.location_on,
                        label: 'Projects',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: kDefaultPadding * 3,
                ),
                Row(
                  children: [
                    Expanded(
                      child: IconInfoItem(
                        text: '30+',
                        icon: Icons.public,
                        label: 'Countries',
                      ),
                    ),
                    Expanded(
                      child: IconInfoItem(
                        text: '13k+',
                        icon: Icons.star,
                        label: 'Stars',
                      ),
                    ),
                  ],
                )
              ],
            )
          : const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconInfoItem(
                  text: '67+',
                  icon: Icons.supervisor_account,
                  label: 'Clients',
                ),
                IconInfoItem(
                  text: '139+',
                  icon: Icons.location_on,
                  label: 'Projects',
                ),
                IconInfoItem(
                  text: '30+',
                  icon: Icons.public,
                  label: 'Countries',
                ),
                IconInfoItem(
                  text: '13k+',
                  icon: Icons.star,
                  label: 'Stars',
                ),
              ],
            ),
    );
  }
}
