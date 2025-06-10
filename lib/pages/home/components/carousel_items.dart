import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/models/carousel_item_model.dart';
import 'package:web_portfolio/utils/constants.dart';

List<CarouselItemModel> carouselItems = [
  CarouselItemModel(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "🎨 UXUI PRODUCT DESIGN",
            style: GoogleFonts.ibmPlexSansArabic(
                color: kPrimaryColor,
                fontWeight: FontWeight.w900,
                fontSize: 15,
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Text(
            "NAJI At",
            style: GoogleFonts.ibmPlexSansArabic(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.w900,
                height: 1.3,
                letterSpacing: 0
            ),
          ),
          Text(
            "ABU-MOUSA",
            style: GoogleFonts.ibmPlexSansArabic(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.w900,
                height: 1.3,
                letterSpacing: 0
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Bringing ideas to life with UX/UI, based in Palestine  🇵🇸",
            style: GoogleFonts.ibmPlexSansArabic(
              color: kCaptionColor,
              fontSize: 15.0,
              height: 1.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Wrap(
              children: [
                Text(
                  "Need a custom website or app?",
                  style: GoogleFonts.ibmPlexSansArabic(
                    color: kCaptionColor,
                    fontSize: 15.0,
                    height: 1.5,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      " Got a project? Let's talk.",
                      style: GoogleFonts.ibmPlexSansArabic(
                        height: 1.5,
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              height: 48.0,
              padding: EdgeInsets.symmetric(
                horizontal: 28.0,
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "GET STARTED",
                  style: GoogleFonts.ibmPlexSansArabic(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ),
    image: Container(
      child: Image.asset(
        "assets/person.png",
        fit: BoxFit.contain,
      ),
    ),
  ),
  CarouselItemModel(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "🚀 FLUTTER APP DEVELOPER",
            style: GoogleFonts.ibmPlexSansArabic(
              color: kPrimaryColor,
              fontWeight: FontWeight.w900,
              fontSize: 15,
                letterSpacing: 0
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Text(
            "NAJI At",
            style: GoogleFonts.ibmPlexSansArabic(
              color: Colors.white,
              fontSize: 40.0,
              fontWeight: FontWeight.w900,
              height: 1.3,
                letterSpacing: 0
            ),
          ),
          Text(
            "ABU-MOUSA",
            style: GoogleFonts.ibmPlexSansArabic(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.w900,
              height: 1.3,
                letterSpacing: 0
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            "Flutter Full-stack developer, based in Palestine 🇵🇸",
            style: GoogleFonts.ibmPlexSansArabic(
              color: kCaptionColor,
              fontSize: 15.0,
              height: 1.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            child: Wrap(
              children: [
                Text(
                  "Need a full custom application?",
                  style: GoogleFonts.ibmPlexSansArabic(
                    color: kCaptionColor,
                    fontSize: 15.0,
                    height: 1.5,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      " Got a project? Let's talk.",
                      style: GoogleFonts.ibmPlexSansArabic(
                        height: 1.5,
                        color: Colors.white,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Container(
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(8.0),
              ),
              height: 48.0,
              padding: EdgeInsets.symmetric(
                horizontal: 28.0,
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "GET STARTED",
                  style: GoogleFonts.ibmPlexSansArabic(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    ),
    image:Transform.rotate(
angle: -5 * 3.1415927 / 180, // تحويل الزاوية من درجة إلى راديان
child: Container(
  child: Image.asset(
    "assets/myPhoto01.png",
    fit: BoxFit.contain,
  ),
),
)

  )
];
// List.generate(
//   5,
//   (index) => CarouselItemModel(
//     text: Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(
//             "PRODUCT DESIGNER",
//             style: GoogleFonts.oswald(
//               color: kPrimaryColor,
//               fontWeight: FontWeight.w900,
//               fontSize: 16.0,
//             ),
//           ),
//           SizedBox(
//             height: 18.0,
//           ),
//           Text(
//             "MICHELE\nHARRINGTON",
//             style: GoogleFonts.oswald(
//               color: Colors.white,
//               fontSize: 40.0,
//               fontWeight: FontWeight.w900,
//               height: 1.3,
//             ),
//           ),
//           SizedBox(
//             height: 10.0,
//           ),
//           Text(
//             "Full-stack developer, based in Barcelona",
//             style: TextStyle(
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
//                   "Need a full custom website?",
//                   style: TextStyle(
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
//                       " Got a project? Let's talk.",
//                       style: TextStyle(
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
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 13.0,
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
//         "assets/person.png",
//         fit: BoxFit.contain,
//       ),
//     ),
//   ),
// );
