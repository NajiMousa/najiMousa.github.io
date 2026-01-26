// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class PricingSection extends StatefulWidget {
//   @override
//   _PricingSectionState createState() => _PricingSectionState();
// }
//
// class _PricingSectionState extends State<PricingSection> {
//   String _serviceType = "design";
//   int _pages = 1;
//   bool _responsive = false;
//   bool _uiux = false;
//   bool _cms = false;
//   bool _payments = false;
//
//   double _price = 0;
//   int _days = 0;
//
//   void _calculatePrice() {
//     double basePrice = 0;
//     int baseDays = 0;
//
//     if (_serviceType == "design") {
//       basePrice = 200;
//       baseDays = 5;
//       basePrice += (_pages - 1) * 50;
//     } else if (_serviceType == "dev") {
//       basePrice = 300;
//       baseDays = 7;
//       basePrice += (_pages - 1) * 100;
//     } else {
//       basePrice = 450;
//       baseDays = 10;
//       basePrice += (_pages - 1) * 150;
//     }
//
//     if (_uiux) {
//       basePrice += 150;
//       baseDays += 3;
//     }
//     if (_responsive) {
//       basePrice += 70;
//       baseDays += 1;
//     }
//     if (_cms && _serviceType != "design") {
//       basePrice += 250;
//       baseDays += 4;
//     }
//     if (_payments && _serviceType != "design") {
//       basePrice += 150;
//       baseDays += 2;
//     }
//
//     setState(() {
//       _price = basePrice;
//       _days = baseDays;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(24),
//       color: Colors.grey.shade900,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             "تسعير المشروع 💰",
//             style: GoogleFonts.ibmPlexSansArabic(
//               fontSize: 28,
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//             ),
//           ),
//           SizedBox(height: 20),
//
//           // اختيار نوع الخدمة
//           DropdownButton<String>(
//             value: _serviceType,
//             dropdownColor: Colors.grey.shade800,
//             style: TextStyle(color: Colors.white),
//             items: [
//               DropdownMenuItem(value: "design", child: Text("تصميم فقط")),
//               DropdownMenuItem(value: "dev", child: Text("برمجة فقط")),
//               DropdownMenuItem(value: "both", child: Text("تصميم + برمجة")),
//             ],
//             onChanged: (val) {
//               setState(() => _serviceType = val!);
//             },
//           ),
//           SizedBox(height: 20),
//
//           // عدد الصفحات
//           Row(
//             children: [
//               Text("عدد الصفحات:", style: TextStyle(color: Colors.white)),
//               SizedBox(width: 10),
//               Expanded(
//                 child: Slider(
//                   value: _pages.toDouble(),
//                   min: 1,
//                   max: 10,
//                   divisions: 9,
//                   label: "$_pages",
//                   onChanged: (val) {
//                     setState(() => _pages = val.toInt());
//                   },
//                 ),
//               ),
//               Text("$_pages", style: TextStyle(color: Colors.white)),
//             ],
//           ),
//
//           // إضافات
//           CheckboxListTile(
//             value: _responsive,
//             onChanged: (val) => setState(() => _responsive = val!),
//             title: Text("نسخة متجاوبة (Responsive)", style: TextStyle(color: Colors.white)),
//             activeColor: Colors.green,
//           ),
//           CheckboxListTile(
//             value: _uiux,
//             onChanged: (val) => setState(() => _uiux = val!),
//             title: Text("UI/UX احترافي", style: TextStyle(color: Colors.white)),
//             activeColor: Colors.green,
//           ),
//           if (_serviceType != "design") ...[
//             CheckboxListTile(
//               value: _cms,
//               onChanged: (val) => setState(() => _cms = val!),
//               title: Text("لوحة تحكم (CMS)", style: TextStyle(color: Colors.white)),
//               activeColor: Colors.green,
//             ),
//             CheckboxListTile(
//               value: _payments,
//               onChanged: (val) => setState(() => _payments = val!),
//               title: Text("بوابات دفع", style: TextStyle(color: Colors.white)),
//               activeColor: Colors.green,
//             ),
//           ],
//
//           SizedBox(height: 20),
//
//           ElevatedButton(
//             onPressed: _calculatePrice,
//             child: Text("احسب السعر"),
//           ),
//           SizedBox(height: 20),
//
//           Text(
//             _price == 0
//                 ? "اختر التفاصيل لحساب السعر"
//                 : "💵 السعر التقديري: \$$_price \n⏳ مدة التنفيذ: $_days يوم",
//             style: TextStyle(color: Colors.white, fontSize: 18),
//           )
//         ],
//       ),
//     );
//   }
// }

// import 'dart:ui';
//
// import 'package:flutter/material.dart';
//
// class PricingTeaserSection extends StatelessWidget {
//   final int onlineQuotes = 128;   // عدد المشاريع المسعّرة عبر الموقع
//   final int customQuotes = 75;    // عدد الطلبات الخاصة
//   final int totalRequests = 203;  // إجمالي الطلبات
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
//       color: Colors.grey.shade900,
//       width: double.infinity,
//       child: Column(
//         children: [
//           Text(
//             "احسب تكلفة مشروعك الآن بسهولة ⚡",
//             style: TextStyle(
//               fontSize: 26,
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//             ),
//             textAlign: TextAlign.center,
//           ),
//           SizedBox(height: 12),
//           Text(
//             "سواء كنت تحتاج تصميم أو برمجة أو كليهما، وفرنا لك أداة ذكية لحساب تكلفة مشروعك بدقة وسرعة. \nجرّبها الآن وانضم لمئات العملاء!",
//             style: TextStyle(color: Colors.white70, fontSize: 16, height: 1.5),
//             textAlign: TextAlign.center,
//           ),
//           SizedBox(height: 25),
//
//           // الكاونتر
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               _buildCounter("مشاريع مسعّرة", onlineQuotes),
//               _buildCounter("طلبات خاصة", customQuotes),
//               _buildCounter("إجمالي الطلبات", totalRequests),
//             ],
//           ),
//           SizedBox(height: 30),
//
//           // زر للانتقال
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.green,
//               padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(30),
//               ),
//             ),
//             onPressed: () {
//               Navigator.pushNamed(context, "/pricing");
//             },
//             child: Text(
//               "ابدأ التسعير الآن",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget _buildCounter(String label, int value) {
//     return Column(
//       children: [
//         Text(
//           "$value+",
//           style: TextStyle(
//             fontSize: 28,
//             fontWeight: FontWeight.bold,
//             color: Colors.greenAccent,
//           ),
//         ),
//         SizedBox(height: 6),
//         Text(
//           label,
//           style: TextStyle(color: Colors.white70, fontSize: 14),
//         ),
//       ],
//     );
//   }
// }

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class PricingTeaserSection extends StatelessWidget {
//   final int onlineQuotes = 128;   // عدد المشاريع المسعّرة عبر الموقع
//   final int customQuotes = 75;    // عدد الطلبات الخاصة
//   final int totalRequests = 203;  // إجمالي الطلبات
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
//       color: Colors.grey.shade900,
//       width: double.infinity,
//       child: Column(
//         children: [
//           Text(
//             "احسب تكلفة مشروعك الآن بسهولة ⚡",
//             style: TextStyle(
//               fontSize: 26,
//               fontWeight: FontWeight.bold,
//               color: Colors.white,
//             ),
//             textAlign: TextAlign.center,
//           ),
//           SizedBox(height: 12),
//           Text(
//             "سواء كنت تحتاج تصميم أو برمجة أو كليهما، وفرنا لك أداة ذكية تعطيك تقدير مبدئي للتكلفة.\n"
//                 "ولا تقلق — فأنا أراجع كل طلب تسعير شخصيًا. "
//                 "كلما كتبت تفاصيل أكثر عن مشروعك، كلما استطعت تحديد السعر الأفضل لك 💜",
//             style: TextStyle(color: Colors.white70, fontSize: 16, height: 1.5),
//             textAlign: TextAlign.center,
//           ),
//           SizedBox(height: 25),
//
//           // الكاونتر
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               _buildCounter("مشاريع مسعّرة", onlineQuotes),
//               _buildCounter("طلبات خاصة", customQuotes),
//               _buildCounter("إجمالي الطلبات", totalRequests),
//             ],
//           ),
//           SizedBox(height: 30),
//
//           // زر للانتقال
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.green,
//               padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(30),
//               ),
//             ),
//             onPressed: () {
//               Navigator.pushNamed(context, "/pricing");
//             },
//             child: Text(
//               "ابدأ التسعير الآن",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget _buildCounter(String label, int value) {
//     return Column(
//       children: [
//         Text(
//           "$value+",
//           style: TextStyle(
//             fontSize: 28,
//             fontWeight: FontWeight.bold,
//             color: Colors.greenAccent,
//           ),
//         ),
//         SizedBox(height: 6),
//         Text(
//           label,
//           style: TextStyle(color: Colors.white70, fontSize: 14),
//         ),
//       ],
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:web_portfolio/utils/constants.dart';
// import 'package:web_portfolio/utils/screen_helper.dart';
//
// class PricingTeaserWidget extends StatefulWidget {
//   @override
//   State<PricingTeaserWidget> createState() => _PricingTeaserWidgetState();
// }
//
// class _PricingTeaserWidgetState extends State<PricingTeaserWidget> {
//   final CarouselSliderController _carouselController =
//   CarouselSliderController();
//
//   double carouselContainerHeight = 0;
//
//   // Example counters (replace later with real backend data)
//   final List<Map<String, dynamic>> counters = [
//     {"label": "Projects Quoted", "value": 128},
//     {"label": "Custom Requests", "value": 75},
//     {"label": "Total Pricing Requests", "value": 203},
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ScreenHelper(
//         desktop: _buildUi(kDesktopMaxWidth, context),
//         tablet: _buildUi(kTabletMaxWidth, context),
//         mobile: _buildUi(getMobileMaxWidth(context), context),
//       ),
//     );
//   }
//
//   Widget _buildUi(double width, BuildContext context) {
//     carouselContainerHeight = MediaQuery.of(context).size.height *
//         (ScreenHelper.isMobile(context) ? 0.9 : .50);
//
//     return Center(
//       child: LayoutBuilder(
//         builder: (BuildContext context, BoxConstraints constraints) {
//           return Container(
//             constraints: BoxConstraints(
//               maxWidth: width,
//               minWidth: width,
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   "PRICING",
//                   style: GoogleFonts.ibmPlexSansArabic(
//                     color: Colors.white,
//                     fontWeight: FontWeight.w900,
//                     fontSize: 30.0,
//                     height: 1.3,
//                   ),
//                 ),
//                 SizedBox(height: 5.0),
//                 Container(
//                   constraints: BoxConstraints(maxWidth: 600.0),
//                   child: RichText(
//                     text: TextSpan(
//                       children: [
//                         TextSpan(
//                           text:
//                           "Easily estimate the cost of your project with our smart tool. ",
//                           style: GoogleFonts.ibmPlexSansArabic(
//                               color: Colors.white, height: 1.8),
//                         ),
//                         TextSpan(
//                           text:
//                           "Don’t worry — I personally review every pricing request. ",
//                           style: TextStyle(
//                             color: kPrimaryColor,
//                             fontWeight: FontWeight.w700,
//                             height: 1.8,
//                           ),
//                         ),
//                         TextSpan(
//                           text:
//                           "The more details you provide, the more accurate and fair the offer will be 💜",
//                           style: GoogleFonts.ibmPlexSansArabic(
//                               color: Colors.white, height: 1.8),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 45.0),
//
//                 // Carousel for counters
//                 Container(
//                   alignment: Alignment.center,
//                   child: CarouselSlider(
//                     carouselController: _carouselController,
//                     options: CarouselOptions(
//                       autoPlay: true,
//                       autoPlayInterval: Duration(seconds: 5),
//                       viewportFraction: 1,
//                       scrollPhysics: AlwaysScrollableScrollPhysics(),
//                       height: ScreenHelper.isMobile(context)
//                           ? carouselContainerHeight / 1.5
//                           : carouselContainerHeight / 2.5,
//                     ),
//                     items: counters.map((counter) {
//                       return Builder(
//                         builder: (BuildContext context) {
//                           return Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               Text(
//                                 "${counter['value']}+",
//                                 style: TextStyle(
//                                   fontSize: 40,
//                                   fontWeight: FontWeight.bold,
//                                   color: kPrimaryColor,
//                                 ),
//                               ),
//                               SizedBox(height: 8),
//                               Text(
//                                 counter['label'],
//                                 style: GoogleFonts.ibmPlexSansArabic(
//                                   color: Colors.white70,
//                                   fontSize: 18,
//                                 ),
//                               ),
//                             ],
//                           );
//                         },
//                       );
//                     }).toList(),
//                   ),
//                 ),
//
//                 SizedBox(height: 35.0),
//
//                 // CTA Button
//                 Align(
//                   alignment: Alignment.center,
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: kPrimaryColor,
//                       padding: EdgeInsets.symmetric(
//                           horizontal: 40, vertical: 16),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(30),
//                       ),
//                     ),
//                     onPressed: () {
//                       Navigator.pushNamed(context, "/pricing");
//                     },
//                     child: Text(
//                       "START PRICING NOW",
//                       style: TextStyle(
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                         color: Colors.white,
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/pages/home/components/project_estimator_page.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';

import '../../../l10n/app_localizations.dart';
import '../../../models/stat.dart';
import '../../disply_pages/app_project_details_page.dart';

class PricingTeaserWidget extends StatelessWidget {
  // Example counters (replace with real data later)
  // final List<Map<String, dynamic>> counters = [
  //   {"label": "Projects Quoted", "value": 128},
  //   {"label": "Custom Requests", "value": 75},
  //   {"label": "Total Pricing Requests", "value": 203},
  // ];

   List<Stat> counters = [];

  @override
  Widget build(BuildContext context) {
    counters = [
      Stat(count: "128", text: AppLocalizations.of(context)!.projectsQuoted),
      Stat(count: "75+", text: AppLocalizations.of(context)!.customRequests),
      Stat(count: "203", text: AppLocalizations.of(context)!.totalPricingRequests),
      // Stat(count: "5", text: "Years\nExperience"),
    ];
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      // color: kAccentColor.withOpacity(0.1),
      width: double.infinity,
      alignment: Alignment.center,
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth, context),
        tablet: _buildUi(kTabletMaxWidth, context),
        mobile: _buildUi(getMobileMaxWidth(context), context),
      ),
    );
  }

  Widget _buildUi(double width, BuildContext context) {
    return Container(
      child: Container(
        constraints: BoxConstraints(
          maxWidth: width,
          minWidth: width,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              // "PRICING",
              // "💸 TRANSPARENT & THOUGHTFUL PRICING",
              AppLocalizations.of(context)!.transparentThoughtfulPricing,
              style: GoogleFonts.ibmPlexSansArabic(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 30.0,
                height: 1.3,
              ),
            ),
            SizedBox(height: 18.0),
            Container(
              constraints: BoxConstraints(maxWidth: 510.0),
              child:
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      // text: "Quickly estimate the cost of your project ⚡. ",
                      text: AppLocalizations.of(context)!.transparentThoughtfulPricingDescriptionA,
                      style: GoogleFonts.ibmPlexSansArabic(
                          color: Colors.white, height: 1.8),
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.transparentThoughtfulPricingDescriptionB,
                      style: GoogleFonts.ibmPlexSansArabic(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w700,
                        height: 1.8,
                      ),
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.transparentThoughtfulPricingDescriptionC,
                      style: GoogleFonts.ibmPlexSansArabic(
                          color: Colors.white, height: 1.8),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 45.0),
            Center(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraint) {
                  return Wrap(
                    spacing: 20.0,
                    runSpacing: 20.0,
                    children: counters.map((stat) {
                      return Container(
                        padding: EdgeInsets.symmetric(vertical: 15.0),
                        // Just use the helper here really
                        width: ScreenHelper.isMobile(context)
                            ? constraint.maxWidth / 2.0 - 20
                            : (constraint.maxWidth / 4.0 - 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              stat.count!,
                              style: GoogleFonts.ibmPlexSansArabic(
                                fontWeight: FontWeight.w700,
                                fontSize: 32.0,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Expanded(
                              child: Text(
                                stat.text!,
                                style: GoogleFonts.ibmPlexSansArabic(
                                  fontSize: 16.0,
                                  color: kCaptionColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    }).toList(),
                  );
                },
              ),
            ),
            SizedBox(height: 35.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Container(
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    height: 48.0,
                    padding: EdgeInsets.symmetric(
                      horizontal: ScreenHelper.isMobile(context) ? 12 : 28.0,
                    ),
                    child: TextButton(
                      onPressed: () {

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => ProjectEstimatorPage(),
                          ),
                        );
                      },
                      child: Center(
                        child: Text(
                          // "START PRICING NOW",
                          AppLocalizations.of(context)!.startPricingNow,
                          style: GoogleFonts.ibmPlexSansArabic(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // SizedBox(height: 45,)
          ],
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
  //     color: Colors.grey.shade900,
  //     width: double.infinity,
  //     child: ScreenHelper(
  //       desktop: _buildUi(kDesktopMaxWidth, context),
  //       tablet: _buildUi(kTabletMaxWidth, context),
  //       mobile: _buildUi(getMobileMaxWidth(context), context),
  //     ),
  //   );
  // }
  //
  // Widget _buildUi(double width, BuildContext context) {
  //   return Center(
  //     child: LayoutBuilder(
  //       builder: (BuildContext context, BoxConstraints constraints) {
  //         return Container(
  //           constraints: BoxConstraints(
  //             maxWidth: width,
  //             minWidth: width,
  //           ),
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text(
  //                 "PRICING",
  //                 style: GoogleFonts.ibmPlexSansArabic(
  //                   color: Colors.white,
  //                   fontWeight: FontWeight.w900,
  //                   fontSize: 30.0,
  //                   height: 1.3,
  //                 ),
  //               ),
  //               SizedBox(height: 5.0),
  //               Container(
  //                 constraints: BoxConstraints(maxWidth: 720.0),
  //                 child: RichText(
  //                   text: TextSpan(
  //                     children: [
  //                       TextSpan(
  //                         text:
  //                         "Easily estimate the cost of your project with our smart tool. ",
  //                         style: GoogleFonts.ibmPlexSansArabic(
  //                             color: Colors.white, height: 1.8),
  //                       ),
  //                       TextSpan(
  //                         text:
  //                         "Don’t worry — I personally review every pricing request. ",
  //                         style: TextStyle(
  //                           color: kPrimaryColor,
  //                           fontWeight: FontWeight.w700,
  //                           height: 1.8,
  //                         ),
  //                       ),
  //                       TextSpan(
  //                         text:
  //                         "The more details you provide, the more accurate and fair the offer will be 💜",
  //                         style: GoogleFonts.ibmPlexSansArabic(
  //                             color: Colors.white, height: 1.8),
  //                       ),
  //                     ],
  //                   ),
  //                 ),
  //               ),
  //               SizedBox(height: 45.0),
  //
  //               // Counters ثابتة
  //               Container(
  //                 constraints: BoxConstraints(
  //                   maxWidth: width,
  //                   minWidth: width,
  //                 ),
  //                 child: LayoutBuilder(
  //                   builder: (BuildContext context, BoxConstraints constraint) {
  //                     return Wrap(
  //                       spacing: 20.0,
  //                       runSpacing: 20.0,
  //                       children: counters.map((stat) {
  //                         return Container(
  //                           padding: EdgeInsets.symmetric(vertical: 15.0),
  //                           // Just use the helper here really
  //                           width: ScreenHelper.isMobile(context)
  //                               ? constraint.maxWidth / 2.0 - 20
  //                               : (constraint.maxWidth / 4.0 - 20),
  //                           child: Row(
  //                             mainAxisAlignment: MainAxisAlignment.center,
  //                             children: [
  //                               Text(
  //                                 "${stat.count}+",
  //                                 style: GoogleFonts.oswald(
  //                                   fontWeight: FontWeight.w700,
  //                                   fontSize: 32.0,
  //                                   color: Colors.white,
  //                                 ),
  //                               ),
  //                               SizedBox(
  //                                 width: 10.0,
  //                               ),
  //                               Text(
  //                                 stat.text!,
  //                                 style: TextStyle(
  //                                   fontSize: 16.0,
  //                                   color: kCaptionColor,
  //                                 ),
  //                               )
  //                             ],
  //                           ),
  //                         );
  //                       }).toList(),
  //                     );
  //                   },
  //                 ),
  //               ),
  //               // LayoutBuilder(
  //               //   builder: (context, constraints) {
  //               //     return Flex(
  //               //       direction: ScreenHelper.isMobile(context)
  //               //           ? Axis.vertical
  //               //           : Axis.horizontal,
  //               //       mainAxisAlignment: MainAxisAlignment.spaceEvenly ,
  //               //       crossAxisAlignment: CrossAxisAlignment.center,
  //               //       children: counters.map((counter) {
  //               //         return Padding(
  //               //           padding: const EdgeInsets.all(12.0),
  //               //           child: Column(
  //               //             children: [
  //               //               Text(
  //               //                 "${counter['value']}+",
  //               //                 style: TextStyle(
  //               //                   fontSize: 40,
  //               //                   fontWeight: FontWeight.bold,
  //               //                   color: Colors.white,
  //               //                 ),
  //               //               ),
  //               //               SizedBox(height: 8),
  //               //               Text(
  //               //                 counter['label'],
  //               //                 style: GoogleFonts.ibmPlexSansArabic(
  //               //                   color: kCaptionColor,
  //               //                   fontSize: 18,
  //               //                 ),
  //               //               ),
  //               //             ],
  //               //           ),
  //               //         );
  //               //       }).toList(),
  //               //     );
  //               //   },
  //               // ),
  //
  //               SizedBox(height: 35.0),
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: [
  //                   MouseRegion(
  //                     cursor: SystemMouseCursors.click,
  //                     child: Container(
  //                       decoration: BoxDecoration(
  //                         color: kPrimaryColor,
  //                         borderRadius: BorderRadius.circular(8.0),
  //                       ),
  //                       height: 48.0,
  //                       padding: EdgeInsets.symmetric(
  //                         horizontal: ScreenHelper.isMobile(context) ? 12 : 28.0,
  //                       ),
  //                       child: TextButton(
  //                         onPressed: () {
  //
  //                           // Navigator.push(
  //                           //   context,
  //                           //   MaterialPageRoute(
  //                           //     builder: (_) => ProjectDetailsPage(project: applicationItems[index]),
  //                           //   ),
  //                           // );
  //                         },
  //                         child: Center(
  //                           child: Text(
  //                             "START PRICING NOW",
  //                             style: GoogleFonts.ibmPlexSansArabic(
  //                               color: Colors.white,
  //                               fontSize: 16.0,
  //                               fontWeight: FontWeight.bold,
  //                             ),
  //                           ),
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ],
  //               ),
  //               SizedBox(height: 45,)
  //             ],
  //           ),
  //         );
  //       },
  //     ),
  //   );
  // }
}
