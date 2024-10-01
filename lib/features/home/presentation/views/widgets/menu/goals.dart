import 'package:flutter/material.dart';
import 'package:real_estate_app/core/functions/build_goals.dart';
import 'package:real_estate_app/core/utils/constants.dart';

class Goals extends StatelessWidget {
  const Goals({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
          child: Text(
            'Goals',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        buildGoals(text: 'Planning stage'),
        buildGoals(text: 'Development'),
        buildGoals(text: 'Excution phase'),
        buildGoals(text: 'New way to living'),
      ],
    );
  }
}
