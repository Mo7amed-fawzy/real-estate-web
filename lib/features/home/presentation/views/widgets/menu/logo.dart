import 'package:flutter/material.dart';
import 'package:real_estate_app/core/utils/app_assets.dart';
import 'package:real_estate_app/core/utils/constants.dart';

class Logo extends StatelessWidget {
  const Logo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: kSecondaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(
              flex: 2,
            ),
            const Image(
              image: AssetImage(Assets.astsImgLogo),
              width: 100,
            ),
            const Spacer(),
            Text(
              'Real State',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SelectableText(
              'Modern home with \n greate interior design',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w200,
                height: 1.5,
              ),
            ),
            const Spacer(
              flex: 2,
            ),
          ],
        ),
      ),
    );
  }
}
