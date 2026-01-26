// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:web_portfolio/models/hero_carousel_item_model.dart';
// import 'package:web_portfolio/utils/constants.dart';
//
// import '../../../l10n/app_localizations.dart';
//
// List<CarouselItemModel> carouselItems =
// List.generate(
//   2,
//   (index) => CarouselItemModel(
//     text: Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(
//             // index == 0 ? "🎨 UXUI PRODUCT DESIGN": "🚀 FLUTTER APP DEVELOPER",
//             index == 0 ? AppLocalizations.of(context)!.ux: "🚀 FLUTTER APP DEVELOPER",
//             style: GoogleFonts.ibmPlexSansArabic(
//               color: kPrimaryColor,
//               fontWeight: FontWeight.w900,
//               fontSize: 15,
//             ),
//           ),
//           SizedBox(
//             height: 12.0,
//           ),
//           Text(
//             "NAJI At",
//             style: GoogleFonts.ibmPlexSansArabic(
//                 color: Colors.white,
//                 fontSize: 40.0,
//                 fontWeight: FontWeight.w900,
//                 height: 1.3,
//                 letterSpacing: 0
//             ),
//           ),
//           Text(
//             "ABU-MOUSA",
//             style: GoogleFonts.ibmPlexSansArabic(
//                 color: Colors.white,
//                 fontSize: 40,
//                 fontWeight: FontWeight.w900,
//                 height: 1.3,
//                 letterSpacing: 0
//             ),
//           ),
//           SizedBox(
//             height: 10.0,
//           ),
//           Text(
//             index == 0 ? "UX/UI Designer Specialist, based in Palestine  🇵🇸" : "Flutter Full-stack developer, based in Palestine 🇵🇸",
//             style: GoogleFonts.ibmPlexSansArabic(
//               color: kCaptionColor,
//               fontSize: 15.0,
//               height: 1.0,
//             ),
//           ),
//           SizedBox(
//             height: 10.0,
//           ),
//           Container(
//             child: Wrap(
//               children: [
//                 Text(
//                   index == 0 ? "Need a custom website or app Design?" : "Need a custom website or app?",
//                   style: GoogleFonts.ibmPlexSansArabic(
//                     color: kCaptionColor,
//                     fontSize: 15.0,
//                     height: 1.5,
//                   ),
//                 ),
//                 GestureDetector(
//                   onTap: () {},
//                   child: MouseRegion(
//                     cursor: SystemMouseCursors.click,
//                     child: Text(
//                       "Got a project? Let's talk.",
//                       style: GoogleFonts.ibmPlexSansArabic(
//                         height: 1.5,
//                         color: Colors.white,
//                         fontSize: 15.0,
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 25.0,
//           ),
//           MouseRegion(
//             cursor: SystemMouseCursors.click,
//             child: Container(
//               decoration: BoxDecoration(
//                 color: kPrimaryColor,
//                 borderRadius: BorderRadius.circular(8.0),
//               ),
//               height: 48.0,
//               padding: EdgeInsets.symmetric(
//                 horizontal: 28.0,
//               ),
//               child: TextButton(
//                 onPressed: () {},
//                 child: Text(
//                   "GET STARTED",
//                   style: GoogleFonts.ibmPlexSansArabic(
//                     color: Colors.white,
//                     fontSize: 13,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     ),
//     image: Container(
//       child: Image.asset(
//         index == 0 ? "assets/myPhoto01.png" : "assets/myPhoto_02.png",
//         fit: BoxFit.contain,
//       ),
//     ),
//   ),
// );
