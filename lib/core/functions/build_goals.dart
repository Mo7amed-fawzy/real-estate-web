import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:real_estate_app/core/utils/app_assets.dart';
import 'package:real_estate_app/core/utils/constants.dart';

Padding buildGoals({required String text}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
    child: Row(
      children: [
        SvgPicture.asset(Assets.astsIcncheck),
        const SizedBox(width: kDefaultPadding / 2),
        SelectableText(text),
      ],
    ),
  );
}
