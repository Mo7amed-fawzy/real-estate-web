import 'package:flutter/material.dart';
import 'package:real_estate_app/core/utils/constants.dart';

Padding buildContactInfo({required String title, required String text}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: kDefaultPadding / 2),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(color: Colors.white)),
        Text(text),
      ],
    ),
  );
}
