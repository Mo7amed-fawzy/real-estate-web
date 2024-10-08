import 'package:flutter/material.dart';
import 'package:real_estate_app/core/responsive.dart';
import 'package:real_estate_app/core/utils/app_assets.dart';
import 'package:real_estate_app/core/utils/constants.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMoblie(context) ? 1 : 1.7,
      child: Stack(
        fit: StackFit.expand, // وحطيت دي اضافي علشان يتوزعو علي كامل الشاشه
        children: [
          Image.asset(
            Assets.astsImgBackground,
            fit: BoxFit.cover, // نفس الموجوده فال css بس باسم مختلف
          ),
          Container(
            color: kDarkColor.withOpacity(0.10), // بدي لون شفاف فوق الصورة
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  'Build a great future \nfor all of us!',
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headlineLarge!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )
                      : Theme.of(context).textTheme.headlineSmall!.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                ),
                const SizedBox(height: kDefaultPadding),
                ElevatedButton(
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: kDefaultPadding * 2,
                            vertical: kDefaultPadding),
                        backgroundColor: kPrimaryColor),
                    onPressed: () {},
                    child: const Text(
                      'Contact US',
                      style: TextStyle(color: kDarkColor),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
