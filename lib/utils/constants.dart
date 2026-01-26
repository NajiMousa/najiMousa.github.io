// import 'package:flutter/material.dart';
//
// const Color kPrimaryColor = Color.fromRGBO(21, 181, 114, 1);
// // const Color kBackgroundColor = Color.fromRGBO(33, 33, 33, 1);
// const Color kBackgroundColor = Color(0xFF21201E);
// const Color kDangerColor = Color.fromRGBO(249, 77, 30, 1);
// const Color kCaptionColor = Color.fromRGBO(166, 177, 187, 1);
//
// // Lets replace all static sizes
// const double kDesktopMaxWidth = 1000.0;
// const double kTabletMaxWidth = 760.0;
// double getMobileMaxWidth(BuildContext context) =>
//     MediaQuery.of(context).size.width * .8;

import 'package:flutter/material.dart';

// 🎨 Brand Colors (from logo)
const Color kBackgroundColor = Color(0xFF212121); // الخلفية الداكنة
const Color kPrimaryColor = Color(0xFFF93253);   // CTA Buttons, highlights
const Color kSecondaryColor = Color(0xFF00CDCB); // عناوين مميزة, highlights
const Color kAccentColor = Color(0xFF95DDD1);    // ديكورات, tags, subtle backgrounds

// 🖋 Text & UI Colors
const Color kCaptionColor = Color(0xFFA6B1BB);   // نصوص ثانوية (descriptions)
const Color kTextColor = Colors.white;           // النص الأساسي
const Color kTextLightColor = Colors.white12;    // نص خفيف أو رمادي

// 🔥 Special Cases
const Color kDangerColor = Color(0xFFF93253);    // نفس الـ primary عشان يكون ثابت
// تقدر تضيف ألوان gradients أو hover states هنا كمان

// 📱 Layout Sizes
const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;

double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;

class Constants {
  /// all theme colors for project
  static final Color navy = Color(0xff0a192f);
  static final Color lightNavy = Color(0xff172a45);
  static final Color lightestNavy = Color(0xff303C55);
  static final Color slate = Color(0xff8892b0);
  static final Color lightSlate = Color(0xffa8b2d1);
  static final Color lightestSlate = Color(0xffccd6f6);
  static final Color green = Color(0xff64ffda);
  static final Color white = Color(0xffe6f1ff);

  static final String githubUrl = 'https://github.com/NajiMousa';
  static final String linkedinUrl = 'https://www.linkedin.com/in/naji-a-mousa/';
  static final String twitterUrl = 'https://twitter.com/hiashutoshsingh/';
  static final String instagramUrl = 'https://www.instagram.com/najimousa_uxui/';
  static final String facebookUrl = 'https://www.facebook.com/share/1HHG1XRyw3/';
  static final String freelancerUrl = 'https://www.freelancer.com/u/NajiAMo';
  static final String mostaqlUrl = 'https://mostaql.com/u/Naji_Atwa';
  static final String upWorkUrl = 'https://www.upwork.com/freelancers/@najim.';
  static final String behanceUrl = 'https://www.behance.net/najimousa_uxui';
  static final String email = 'ana.naji.1996@gmail.com';
}

