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

List<HeaderItem> headerItems = [
  HeaderItem(
    title: "HOME",
    onTap: () {},
  ),
  HeaderItem(title: "MY INTRO", onTap: () {}),
  HeaderItem(title: "SERVICES", onTap: () {}),
  HeaderItem(title: "PORTFOLIO", onTap: () {}),
  HeaderItem(title: "TESTIMONIALS", onTap: () {}),
  HeaderItem(title: "BLOGS", onTap: () {}),
  HeaderItem(
    title: "HIRE ME",
    onTap: () {},
    isButton: true,
  ),
];

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

class HeaderRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    // الشرط الذي كان يستخدم `visibleWhen: Condition.largerThan(name: MOBILE)`
    bool isVisible = screenWidth > 450; // MOBILE = 450

    return isVisible
        ? Row(
      children: headerItems
          .map(
            (item) => item.isButton
            ? MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            decoration: BoxDecoration(
              color: kDangerColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            padding: EdgeInsets.symmetric(
                horizontal: 15.0, vertical: 5.0),
            child: TextButton(
              onPressed: item.onTap,
              child: Text(
                item.title!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        )
            : MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Container(
            margin: EdgeInsets.only(right: 24.0),
            child: GestureDetector(
              onTap: item.onTap,
              child: Text(
                item.title!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      )
          .toList(),
    )
        : const SizedBox(); // أو null أو Container()
  }
}

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: AlignmentDirectional.center,
      child: ScreenHelper(
        desktop: Padding(
          padding: EdgeInsets.symmetric(vertical: 0.h),
          child: buildHeader(kDesktopMaxWidth*1.8),
        ),
        // We will make this in a bit
        mobile: buildMobileHeader(getMobileMaxWidth(context)*1.6),
        tablet: buildHeader(kTabletMaxWidth*1.6),
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
  Widget buildHeader(double width) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      // constraints: BoxConstraints(
      //   maxWidth: width,
      //   minWidth: width,
      // ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeaderLogo(28.w),
          HeaderRow(),
        ],
      ),
    );
  }
}
