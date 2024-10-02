import 'package:flutter/material.dart';
import 'package:real_estate_app/core/utils/constants.dart';
import 'package:real_estate_app/features/home/data/models/recommendation.dart';

class RecommendationCard extends StatelessWidget {
  const RecommendationCard({
    super.key,
    required this.recommendation,
  });
  final Recommendation recommendation;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      padding: const EdgeInsets.all(kDefaultPadding),
      color: kSecondaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(recommendation.image!),
              ),
              title: Text(
                recommendation.name!,
                style: Theme.of(context).textTheme.titleSmall,
              ),
              subtitle: Text(
                recommendation.source!,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            const SizedBox(
              height: kDefaultPadding / 2,
            ),
            Text(
              recommendation.text!,
              maxLines: 4,
              style: const TextStyle(height: 1.5),
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
