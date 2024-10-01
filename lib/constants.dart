import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// الألوان الغامقة
const kPrimaryColor = Color(0xFF3799FB);
const kSecondaryColor = Color(0xFF2B374F);
const kDarkColor = Color(0xFF000714); // لون داكن
const kBodyTextColor = Color(0xFF979DAC); // لون النص في الوضع الداكن
const kBgColor = Color(0xFF001233); // خلفية داكنة

// الالوان الفاتحة
const kLightPrimaryColor = Color(0xFF3799FB); // نفس اللون الأساسي
const kLightBgColor = Color(0xFFF0F4FF); // خلفية فاتحة لطيفة
const kLightBodyTextColor = Color(0xFF333333); // لون النص في الوضع الفاتح
const kLightCanvasColor = Color(0xFFFFFFFF); // لون العناصر

const kDefaultPadding = 20.0;

bool isDarkMode = true;

// ThemeData الغامق
ThemeData darkTheme = ThemeData.dark().copyWith(
  // لون الأزرار الأساسية أو روابط التنقل
  primaryColor: kPrimaryColor,
  // الخلفية الافتراضية للشاشة
  scaffoldBackgroundColor: kBgColor,
  // لون الخلفية للعناصر التي تُرسم على "الكانفاس" مثل القوائم المنبثقة (popups) أو الـ Drawer
  canvasColor: kBgColor,
  textTheme: GoogleFonts.poppinsTextTheme(
    // يتم تمرير الـ textTheme الافتراضي للتطبيق Theme.of(context).textTheme,
    ThemeData.dark().textTheme,
    // لون افتراضي للنصوص للابيض(bodyColor)
  ).apply(bodyColor: Colors.white).copyWith(
        bodyLarge: const TextStyle(color: kBodyTextColor),
        bodyMedium: const TextStyle(color: kBodyTextColor),
      ),
);

// ThemeData الفاتح
ThemeData lightTheme = ThemeData.light().copyWith(
  primaryColor: kLightPrimaryColor,
  scaffoldBackgroundColor: kLightBgColor,
  canvasColor: kLightCanvasColor,
  textTheme: GoogleFonts.poppinsTextTheme(
    ThemeData.light().textTheme,
  ).apply(bodyColor: Colors.black).copyWith(
        bodyLarge: const TextStyle(color: kLightBodyTextColor),
        bodyMedium: const TextStyle(color: kLightBodyTextColor),
      ),
);
