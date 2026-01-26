import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_portfolio/models/header_item.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/globals.dart';
import 'package:web_portfolio/utils/screen_helper.dart';

import '../../../l10n/app_localizations.dart';

enum HeaderSection {
  home,
  services,
  skills,
  education,
  portfolio,
  testimonials,
  creativeLab,
  hireMe,
}

List<HeaderItem> headerItems = [];

// class HeaderLogo extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: MouseRegion(
//         cursor: SystemMouseCursors.click,
//         child: GestureDetector(
//           onTap: () {},
//           child: Image.asset(
//             'assets/logo.png',
//             // width: constraints.maxHeight, // اجعل عرض الشعار بنفس ارتفاع المكان المتاح
//             fit: BoxFit.contain,
//           ),
//           // RichText(
//           //   text: TextSpan(
//           //     children: [
//           //       TextSpan(
//           //         text: "M",
//           //         style: GoogleFonts.oswald(
//           //           color: Colors.white,
//           //           fontSize: 32.0,
//           //           fontWeight: FontWeight.bold,
//           //         ),
//           //       ),
//           //       TextSpan(
//           //         text: ".",
//           //         style: GoogleFonts.oswald(
//           //           color: kPrimaryColor,
//           //           fontSize: 36.0,
//           //           fontWeight: FontWeight.bold,
//           //         ),
//           //       )
//           //     ],
//           //   ),
//           // ),
//         ),
//       ),
//     );
//   }
// }

Widget HeaderLogo (double width){
  return Container(
    child: MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {},
        child: Container(
          // constraints: BoxConstraints(
          //   maxWidth: 28.w,
          //   minWidth: 28.w,
          // ),
          child: Image.asset(
            'assets/logo.png',
            // width: constraints.maxHeight,
            fit: BoxFit.contain,
            width: width,
          ),
        ),
        // RichText(
        //   text: TextSpan(
        //     children: [
        //       TextSpan(
        //         text: "M",
        //         style: GoogleFonts.oswald(
        //           color: Colors.white,
        //           fontSize: 32.0,
        //           fontWeight: FontWeight.bold,
        //         ),
        //       ),
        //       TextSpan(
        //         text: ".",
        //         style: GoogleFonts.oswald(
        //           color: kPrimaryColor,
        //           fontSize: 36.0,
        //           fontWeight: FontWeight.bold,
        //         ),
        //       )
        //     ],
        //   ),
        // ),
      ),
    ),
  );
}

// class HeaderRow extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     headerItems = [
//       HeaderItem(
//         title: AppLocalizations.of(context)!.home,
//         onTap: () => onItemSelected(HeaderSection.home),
//       ),
//       HeaderItem(
//         title: AppLocalizations.of(context)!.services,
//         onTap: () {},
//       ),
//       HeaderItem(
//         title: AppLocalizations.of(context)!.skills,
//         onTap: () {},
//       ),
//       HeaderItem(
//         title: AppLocalizations.of(context)!.education,
//         onTap: () {},
//       ),
//       HeaderItem(
//         title: AppLocalizations.of(context)!.portfolio,
//         onTap: () {},
//       ),
//       HeaderItem(
//         title: AppLocalizations.of(context)!.testimonials,
//         onTap: () {},
//       ),
//       // HeaderItem(
//       //   title: AppLocalizations.of(context)!.blogs,
//       //   onTap: () {},
//       // ),
//       HeaderItem(
//         title: AppLocalizations.of(context)!.creativeLab,
//         onTap: () {},
//       ),
//       HeaderItem(
//         title: AppLocalizations.of(context)!.hireMe,
//         onTap: () {},
//         isButton: true,
//       ),
//
//     ];
//     bool isVisible = screenWidth > 450; // MOBILE = 450
//
//     // return isVisible
//     //     ? Row(
//     //   children: headerItems
//     //       .map(
//     //         (item) => item.isButton
//     //         ? MouseRegion(
//     //       cursor: SystemMouseCursors.click,
//     //       child: Container(
//     //         decoration: BoxDecoration(
//     //           color: kDangerColor,
//     //           borderRadius: BorderRadius.circular(6.0),
//     //         ),
//     //         padding: EdgeInsets.symmetric(
//     //             horizontal: 6.0, vertical: 5.0),
//     //         child: TextButton(
//     //           onPressed: item.onTap,
//     //           child: Text(
//     //             item.title!,
//     //             // AppLocalizations.of(context)!.hireMe,
//     //             style: TextStyle(
//     //               color: Colors.white,
//     //               fontSize: 13.0,
//     //               fontWeight: FontWeight.bold,
//     //             ),
//     //           ),
//     //         ),
//     //       ),
//     //     )
//     //         : MouseRegion(
//     //       cursor: SystemMouseCursors.click,
//     //       child: Container(
//     //         margin: EdgeInsets.symmetric(horizontal: 10.0),
//     //         child: GestureDetector(
//     //           onTap: item.onTap,
//     //           child: Text(
//     //             item.title!,
//     //             style: TextStyle(
//     //               color: Colors.white,
//     //               fontSize: 13.0,
//     //               fontWeight: FontWeight.bold,
//     //             ),
//     //           ),
//     //         ),
//     //       ),
//     //     ),
//     //   )
//     //       .toList(),
//     // )
//     //     : const SizedBox(); // أو null أو Container()
//
//     return isVisible
//         ? Row(
//       children: headerItems.map((item) {
//         if (item.isButton) {
//           return MouseRegion(
//             cursor: SystemMouseCursors.click,
//             child: Container(
//               decoration: BoxDecoration(
//                 color: kDangerColor,
//                 borderRadius: BorderRadius.circular(6.0),
//               ),
//               padding:
//               EdgeInsets.symmetric(horizontal: 6.0, vertical: 5.0),
//               child: TextButton(
//                 onPressed: item.onTap,
//                 child: Text(
//                   item.title!,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 13.0,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           );
//         }
//
//         if (item.title == AppLocalizations.of(context)!.creativeLab) {
//           return Container(
//             margin: EdgeInsets.symmetric(horizontal: 10.0),
//             child: PopupMenuButton<String>(
//               color: kAccentColor,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               offset: const Offset(0, 30),
//               child: Row(
//                 children: [
//                   Text(
//                     item.title!,
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 13.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(width: 4),
//                   const Icon(
//                     Icons.arrow_drop_down,
//                     color: Colors.white,
//                     size: 18,
//                   ),
//                 ],
//               ),
//               onSelected: (value) {
//                 if (value == "designChallenges") {
//                   // TODO: Navigate to Design Challenges page
//                 } else if (value == "figmaChallenges") {
//                   // TODO: Navigate to Figma Challenges page
//                 }
//               },
//               itemBuilder: (context) => [
//                 PopupMenuItem(
//                   value: "designChallenges",
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric( horizontal: 6.0),
//                     child:Row(
//                       children: [
//                         Text(
//                           AppLocalizations.of(context)!.designerChallenge,
//                         style: GoogleFonts.ibmPlexSansArabic(
//                           color: kBackgroundColor,
//                           fontWeight: FontWeight.bold,
//                         ),),
//                         Spacer(),
//                         const Icon(
//                           Icons.arrow_right,
//                           color: kBackgroundColor,
//                           size: 18,
//                         )
//                       ],
//                       ),
//                     ),
//                   ),
//                 PopupMenuItem(
//                   value: "figmaChallenges",
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric( horizontal: 6.0),
//                     child: Row(
//                       children: [
//                         Text(
//                           AppLocalizations.of(context)!.figmaChallenge,
//                           style: GoogleFonts.ibmPlexSansArabic(
//                             color: kBackgroundColor,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Spacer(),
//                         const Icon(
//                           Icons.arrow_right,
//                           color: kBackgroundColor,
//                           size: 18,
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//                 PopupMenuItem(
//                   value: "flutterChallenges",
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric( horizontal: 6.0),
//                     child: Row(
//                       children: [
//                         Text(
//                         AppLocalizations.of(context)!.flutterChallenge,
//                           style: GoogleFonts.ibmPlexSansArabic(
//                             color: kBackgroundColor,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Spacer(),
//                         const Icon(
//                           Icons.arrow_right,
//                           color: kBackgroundColor,
//                           size: 18,
//                         )
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         }
//
//
//         // حالة Creative Lab (dropdown مخصص)
//         // if (item.title ==
//         //     AppLocalizations.of(context)!.creativeLab) {
//         //   return Container(
//         //     margin: EdgeInsets.symmetric(horizontal: 10.0),
//         //     child: PopupMenuButton<String>(
//         //       child: Text(
//         //         item.title!,
//         //         style: TextStyle(
//         //           color: Colors.white,
//         //           fontSize: 13.0,
//         //           fontWeight: FontWeight.bold,
//         //         ),
//         //       ),
//         //       onSelected: (value) {
//         //         if (value == "designChallenges") {
//         //           // TODO: Navigate to Design Challenges page
//         //         } else if (value == "figmaChallenges") {
//         //           // TODO: Navigate to Figma Challenges page
//         //         }
//         //       },
//         //       itemBuilder: (context) => [
//         //         PopupMenuItem(
//         //           value: "designChallenges",
//         //           child: Text("Designer Challenge"),
//         //         ),
//         //         PopupMenuItem(
//         //           value: "figmaChallenges",
//         //           child: Text("Figma Challenge"),
//         //         ),
//         //       ],
//         //     ),
//         //   );
//         // }
//
//         // باقي العناصر العادية
//         return MouseRegion(
//           cursor: SystemMouseCursors.click,
//           child: Container(
//             margin: EdgeInsets.symmetric(horizontal: 10.0),
//             child: GestureDetector(
//               onTap: item.onTap,
//               child: Text(
//                 item.title!,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 13.0,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ),
//           ),
//         );
//       }).toList(),
//     )
//         : const SizedBox();
//
//   }
// }

class Header extends StatefulWidget {

  final Function(HeaderSection section) onItemSelected;

  const Header({super.key, required this.onItemSelected});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      child: ScreenHelper(
        desktop: Padding(
          padding: EdgeInsets.symmetric(vertical: 0.h),
          child: buildHeader(kDesktopMaxWidth*1.8,context),
        ),
        // We will make this in a bit
        mobile: buildMobileHeader(getMobileMaxWidth(context)*1.6),
        tablet: buildHeader(kTabletMaxWidth*1.6,context),
      ),
    );
  }

  // mobile header
  Widget buildMobileHeader(double width) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.w,vertical: 24.h),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeaderLogo(42.w),
              // Restart server to make icons work
              // Lets make a scaffold key and create a drawer
              GestureDetector(
                onTap: () {
                  // Lets open drawer using global key
                  Globals.scaffoldKey.currentState?.openEndDrawer();
                },
                child: Icon(
                  Icons.menu,
                  // FlutterIcons.menu_fea,
                  color: Colors.white,
                  size: 28.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // Lets plan for mobile and smaller width screens
  Widget buildHeader(double width,BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isVisible = screenWidth > 450;
    HeaderItem headerItem;
    setState(() {
      headerItems = [
        HeaderItem(
          title: AppLocalizations.of(context)!.home,
          onTap: () {
            Globals.scaffoldKey.currentState?.closeEndDrawer();
            widget.onItemSelected(HeaderSection.home);

          },
        ),
        HeaderItem(
          title: AppLocalizations.of(context)!.services,
          onTap: () {
            Globals.scaffoldKey.currentState?.closeEndDrawer();
            widget.onItemSelected(HeaderSection.services);

          },
        ),
        HeaderItem(
          title: AppLocalizations.of(context)!.skills,
          onTap: () {
            Globals.scaffoldKey.currentState?.closeEndDrawer();
            widget.onItemSelected(HeaderSection.skills);

          },
        ),
        HeaderItem(
          title: AppLocalizations.of(context)!.education,
          onTap: () {
            Globals.scaffoldKey.currentState?.closeEndDrawer();
            widget.onItemSelected(HeaderSection.education);

          },
        ),
        HeaderItem(
          title: AppLocalizations.of(context)!.portfolio,
          onTap: () {
            Globals.scaffoldKey.currentState?.closeEndDrawer();
            widget.onItemSelected(HeaderSection.portfolio);

          },
        ),
        HeaderItem(
          title: AppLocalizations.of(context)!.testimonials,
          onTap: () {
            Globals.scaffoldKey.currentState?.closeEndDrawer();
            widget.onItemSelected(HeaderSection.testimonials);

          },
        ),
        // HeaderItem(
        //   title: AppLocalizations.of(context)!.blogs,
        //   onTap: () {},
        // ),
        HeaderItem(
          title: AppLocalizations.of(context)!.creativeLab,
          onTap: () {
            Globals.scaffoldKey.currentState?.closeEndDrawer();
            widget.onItemSelected(HeaderSection.creativeLab);

          },
        ),
        HeaderItem(
          title: AppLocalizations.of(context)!.hireMe,
          onTap: () {
            Globals.scaffoldKey.currentState?.closeEndDrawer();
            widget.onItemSelected(HeaderSection.hireMe);

          },
          isButton: true,
        ),

      ];
    });
    return Container(
      padding: EdgeInsets.symmetric(vertical: ScreenHelper.isTablet(context) ? 24 : 0 ,horizontal: ScreenHelper.isDesktop(context) ? 110 : 12),
      // constraints: BoxConstraints(
      //   maxWidth: width,
      //   minWidth: width,
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeaderLogo(90),
      isVisible
        ?
    //   Row(
    //   children: headerItems.map((item) {
    //     if (item.isButton) {
    //       return MouseRegion(
    //         cursor: SystemMouseCursors.click,
    //         child: Container(
    //           decoration: BoxDecoration(
    //             color: kDangerColor,
    //             borderRadius: BorderRadius.circular(6.0),
    //           ),
    //           padding:
    //           EdgeInsets.symmetric(horizontal: 6.0, vertical: 5.0),
    //           child: TextButton(
    //             onPressed: item.onTap,
    //             child: Text(
    //               item.title!,
    //               style: TextStyle(
    //                 color: Colors.white,
    //                 fontSize: 13.0,
    //                 fontWeight: FontWeight.bold,
    //               ),
    //             ),
    //           ),
    //         ),
    //       );
    //     }
    //
    //     if (item.title == AppLocalizations.of(context)!.creativeLab) {
    //       return Container(
    //         margin: EdgeInsets.symmetric(horizontal: 10.0),
    //         child: PopupMenuButton<String>(
    //           color: kAccentColor,
    //           shape: RoundedRectangleBorder(
    //             borderRadius: BorderRadius.circular(10),
    //           ),
    //           offset: const Offset(0, 30),
    //           child: Row(
    //             children: [
    //               Text(
    //                 item.title!,
    //                 style: TextStyle(
    //                   color: Colors.white,
    //                   fontSize: 13.0,
    //                   fontWeight: FontWeight.bold,
    //                 ),
    //               ),
    //               const SizedBox(width: 4),
    //               const Icon(
    //                 Icons.arrow_drop_down,
    //                 color: Colors.white,
    //                 size: 18,
    //               ),
    //             ],
    //           ),
    //           onSelected: (value) {
    //             if (value == "designChallenges") {
    //               // TODO: Navigate to Design Challenges page
    //             } else if (value == "figmaChallenges") {
    //               // TODO: Navigate to Figma Challenges page
    //             }
    //           },
    //           itemBuilder: (context) => [
    //             PopupMenuItem(
    //               value: "designChallenges",
    //               child: Padding(
    //                 padding: const EdgeInsets.symmetric( horizontal: 6.0),
    //                 child:Row(
    //                   children: [
    //                     Text(
    //                       AppLocalizations.of(context)!.designerChallenge,
    //                       style: GoogleFonts.ibmPlexSansArabic(
    //                         color: kBackgroundColor,
    //                         fontWeight: FontWeight.bold,
    //                       ),),
    //                     Spacer(),
    //                     const Icon(
    //                       Icons.arrow_right,
    //                       color: kBackgroundColor,
    //                       size: 18,
    //                     )
    //                   ],
    //                 ),
    //               ),
    //             ),
    //             PopupMenuItem(
    //               value: "figmaChallenges",
    //               child: Padding(
    //                 padding: const EdgeInsets.symmetric( horizontal: 6.0),
    //                 child: Row(
    //                   children: [
    //                     Text(
    //                       AppLocalizations.of(context)!.figmaChallenge,
    //                       style: GoogleFonts.ibmPlexSansArabic(
    //                         color: kBackgroundColor,
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                     ),
    //                     Spacer(),
    //                     const Icon(
    //                       Icons.arrow_right,
    //                       color: kBackgroundColor,
    //                       size: 18,
    //                     )
    //                   ],
    //                 ),
    //               ),
    //             ),
    //             PopupMenuItem(
    //               value: "flutterChallenges",
    //               child: Padding(
    //                 padding: const EdgeInsets.symmetric( horizontal: 6.0),
    //                 child: Row(
    //                   children: [
    //                     Text(
    //                       AppLocalizations.of(context)!.flutterChallenge,
    //                       style: GoogleFonts.ibmPlexSansArabic(
    //                         color: kBackgroundColor,
    //                         fontWeight: FontWeight.bold,
    //                       ),
    //                     ),
    //                     Spacer(),
    //                     const Icon(
    //                       Icons.arrow_right,
    //                       color: kBackgroundColor,
    //                       size: 18,
    //                     )
    //                   ],
    //                 ),
    //               ),
    //             ),
    //           ],
    //         ),
    //       );
    //     }
    //
    //
    //     // حالة Creative Lab (dropdown مخصص)
    //     // if (item.title ==
    //     //     AppLocalizations.of(context)!.creativeLab) {
    //     //   return Container(
    //     //     margin: EdgeInsets.symmetric(horizontal: 10.0),
    //     //     child: PopupMenuButton<String>(
    //     //       child: Text(
    //     //         item.title!,
    //     //         style: TextStyle(
    //     //           color: Colors.white,
    //     //           fontSize: 13.0,
    //     //           fontWeight: FontWeight.bold,
    //     //         ),
    //     //       ),
    //     //       onSelected: (value) {
    //     //         if (value == "designChallenges") {
    //     //           // TODO: Navigate to Design Challenges page
    //     //         } else if (value == "figmaChallenges") {
    //     //           // TODO: Navigate to Figma Challenges page
    //     //         }
    //     //       },
    //     //       itemBuilder: (context) => [
    //     //         PopupMenuItem(
    //     //           value: "designChallenges",
    //     //           child: Text("Designer Challenge"),
    //     //         ),
    //     //         PopupMenuItem(
    //     //           value: "figmaChallenges",
    //     //           child: Text("Figma Challenge"),
    //     //         ),
    //     //       ],
    //     //     ),
    //     //   );
    //     // }
    //
    //     // باقي العناصر العادية
    //     return MouseRegion(
    //       cursor: SystemMouseCursors.click,
    //       onEnter: (_) => setState(() => isHovered = true),
    //       onExit: (_) => setState(() => isHovered = false),
    //       child: Container(
    //         margin: const EdgeInsets.symmetric(horizontal: 10.0),
    //         child: GestureDetector(
    //           onTap: item.onTap,
    //           child: AnimatedDefaultTextStyle(
    //             duration: const Duration(milliseconds: 200),
    //             style: TextStyle(
    //               color: isHovered ? kPrimaryColor : Colors.white,
    //               fontSize: 13.0,
    //               fontWeight: FontWeight.bold,
    //             ),
    //             child: Text(item.title!),
    //           ),
    //         ),
    //       ),
    //     );
    //       MouseRegion(
    //       cursor: SystemMouseCursors.click,
    //       onEnter: (_) {
    //         setState(() {
    //           isHovered = true;
    //         });
    //       },
    //       onExit: (_) {
    //         setState(() {
    //           isHovered = false;
    //         });
    //       },
    //       child: Container(
    //         margin: const EdgeInsets.symmetric(horizontal: 10.0),
    //         child: GestureDetector(
    //           onTap: item.onTap,
    //           child: Text(
    //             item.title!,
    //             style: TextStyle(
    //               color: isHovered ? kPrimaryColor : Colors.white,
    //               fontSize: 13.0,
    //               fontWeight: FontWeight.bold,
    //             ),
    //           ),
    //         ),
    //       ),
    //     );
    //       MouseRegion(
    //       cursor: SystemMouseCursors.click,
    //       child: Container(
    //         margin: EdgeInsets.symmetric(horizontal: 10.0),
    //         child: GestureDetector(
    //           onTap: item.onTap,
    //           child: Text(
    //             item.title!,
    //             style: TextStyle(
    //               color: Colors.white,
    //               fontSize: 13.0,
    //               fontWeight: FontWeight.bold,
    //             ),
    //           ),
    //         ),
    //       ),
    //     );
    //   }).toList(),
    // )
      Row(
        children: headerItems.map((item) => HeaderItemWidget(item: item)).toList(),
      )

          : const SizedBox(),
        ],
      ),
    );
  }

}

class HeaderItemWidget extends StatefulWidget {
  final HeaderItem item;

  const HeaderItemWidget({super.key, required this.item});

  @override
  State<HeaderItemWidget> createState() => _HeaderItemWidgetState();
}

class _HeaderItemWidgetState extends State<HeaderItemWidget> {
  bool isHovered = false;


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // حالة الزر المميز (Button)
    if (widget.item.isButton) {
      return MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          decoration: BoxDecoration(
            color: kDangerColor,
            borderRadius: BorderRadius.circular(6.0),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 5.0),
          child: TextButton(
            onPressed: widget.item.onTap,
            child: Text(
              widget.item.title!,
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      );
    }

    if (widget.item.title == AppLocalizations.of(context)!.creativeLab) {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 5.0),
        child: PopupMenuButton<String>(
          color: kAccentColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          offset: const Offset(0, 30),
          child: Row(
            children: [
              Text(
                widget.item.title!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 4),
              const Icon(
                Icons.arrow_drop_down,
                color: Colors.white,
                size: 14,
              ),
            ],
          ),
          onSelected: (value) {
            if (value == "designChallenges") {
              // TODO: Navigate to Design Challenges page
            } else if (value == "figmaChallenges") {
              // TODO: Navigate to Figma Challenges page
            }
          },
          itemBuilder: (context) => [
            PopupMenuItem(
              value: "designChallenges",
              child: Padding(
                padding: const EdgeInsets.symmetric( horizontal: 6.0),
                child:Row(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.designerChallenge,
                      style: GoogleFonts.ibmPlexSansArabic(
                        color: kBackgroundColor,
                        fontWeight: FontWeight.bold,
                      ),),
                    Spacer(),
                    const Icon(
                      Icons.arrow_right,
                      color: kBackgroundColor,
                      size: 18,
                    )
                  ],
                ),
              ),
            ),
            PopupMenuItem(
              value: "figmaChallenges",
              child: Padding(
                padding: const EdgeInsets.symmetric( horizontal: 6.0),
                child: Row(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.figmaChallenge,
                      style: GoogleFonts.ibmPlexSansArabic(
                        color: kBackgroundColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    const Icon(
                      Icons.arrow_right,
                      color: kBackgroundColor,
                      size: 18,
                    )
                  ],
                ),
              ),
            ),
            PopupMenuItem(
              value: "flutterChallenges",
              child: Padding(
                padding: const EdgeInsets.symmetric( horizontal: 6.0),
                child: Row(
                  children: [
                    Text(
                      AppLocalizations.of(context)!.flutterChallenge,
                      style: GoogleFonts.ibmPlexSansArabic(
                        color: kBackgroundColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    const Icon(
                      Icons.arrow_right,
                      color: kBackgroundColor,
                      size: 18,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    // حالة العناصر العادية (غير زر)
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => isHovered = true),
      onExit: (_) => setState(() => isHovered = false),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        child: GestureDetector(
          onTap: widget.item.onTap,
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 200),
            style: TextStyle(
              color: isHovered ? kPrimaryColor : Colors.white,
              fontSize: screenWidth > 1000 ? 15:12.0,
              fontWeight: FontWeight.bold,
            ),
            child: Text(widget.item.title!),
          ),
        ),
      ),
    );
  }
}

