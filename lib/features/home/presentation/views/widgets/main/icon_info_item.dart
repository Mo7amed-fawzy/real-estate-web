import 'package:flutter/material.dart';
import 'package:real_estate_app/core/utils/constants.dart';

class IconInfoItem extends StatelessWidget {
  const IconInfoItem({
    super.key,
    required this.icon,
    required this.text,
    required this.label,
  });
  final IconData icon;
  final String text;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 50),
        const SizedBox(height: kDefaultPadding / 2),
        Text(text,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  color: kPrimaryColor,
                  fontSize: 30,
                )),
        Text(
          label,
          style: Theme.of(context).textTheme.headlineSmall!,
        ),
      ],
    );
  }
}
