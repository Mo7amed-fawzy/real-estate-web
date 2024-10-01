import 'package:flutter/material.dart';
import 'package:real_estate_app/utils/constants.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildContactInfo(title: 'Address', text: 'Civil Registry Street'),
        buildContactInfo(title: 'Country', text: 'Egypt'),
        buildContactInfo(title: 'Email', text: 'm07amed1st@gmail.com'),
        buildContactInfo(title: 'Mobile', text: '01157902453'),
        buildContactInfo(title: 'Website', text: 'MoFawzy@website.come'),
      ],
    );
  }

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
}
