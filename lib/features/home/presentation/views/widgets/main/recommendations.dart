import 'package:flutter/material.dart';
import 'package:real_estate_app/core/utils/constants.dart';
import 'package:real_estate_app/features/home/data/models/recommendation.dart';
import 'package:real_estate_app/features/home/presentation/views/widgets/main/recommendation_card.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: kDefaultPadding / 2),
        Text(
          'client recommendations:',
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        const SizedBox(height: kDefaultPadding),
        SizedBox(
          height: 250, // حدد ارتفاع لتمكين التمرير الأفقي
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                demoRecommendations.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(right: kDefaultPadding),
                  child: RecommendationCard(
                    recommendation: demoRecommendations[index],
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
