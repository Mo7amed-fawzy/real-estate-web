import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive(
      {super.key,
      this.tablet,
      this.mobilelarge,
      required this.desktop,
      required this.mobile});

  final Widget desktop;
  final Widget mobile;
  final Widget? mobilelarge;
  final Widget? tablet;

  static bool isDesktop(BuildContext context) {
    // لو كان اكبر من الرقم دا لازم يدين تروو
    return MediaQuery.of(context).size.width >= 1024;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width < 1024;
  }

  static bool isMobileLarge(BuildContext context) {
    return MediaQuery.of(context).size.width <= 700;
  }

  static bool isMoblie(BuildContext context) {
    return MediaQuery.of(context).size.width <= 500;
  }
  // الميثودز دي بتديني حجم الشاشات الخاصه بكل جهاز

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    final Size _size = MediaQuery.of(context).size;
    if (_size.width >= 1024) {
      return desktop;
    } else if (_size.width >= 700 && tablet != null) {
      return tablet!;
    } else if (_size.width >= 450 && mobilelarge != null) {
      return mobilelarge!;
    } else {
      return mobile;
    }
  }
}
