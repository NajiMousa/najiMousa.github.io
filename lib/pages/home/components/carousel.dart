import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/pages/home/components/carousel_items.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';

import '../../../l10n/app_localizations.dart';
import '../../../models/hero_carousel_item_model.dart';
import 'about_me.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  List<CarouselItemModel> carouselItems = [];

  Future<void> _handleTap() async {
    final Uri uri = Uri.parse('https://wa.me/972595192140');

    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $uri';
    }
  }

  int _currentIndex = 0;
  double carouselContainerHeight = 0;

  @override
  Widget build(BuildContext context) {
    carouselItems = List.generate(
      2,
      (index) => CarouselItemModel(
        text: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                // index == 0 ? "🎨 UXUI PRODUCT DESIGN": "🚀 FLUTTER APP DEVELOPER",
                index == 0
                    ? AppLocalizations.of(context)!.uxuiProductDesign
                    : AppLocalizations.of(context)!.flutterAppDeveloper,
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
                AppLocalizations.of(context)!.najiAt,
                style: GoogleFonts.ibmPlexSansArabic(
                    color: Colors.white,
                    fontSize: 40.0,
                    fontWeight: FontWeight.w900,
                    height: 1.3,
                    letterSpacing: 0),
              ),
              Text(
                AppLocalizations.of(context)!.abuMousa,
                style: GoogleFonts.ibmPlexSansArabic(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    height: 1.3,
                    letterSpacing: 0),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                index == 0
                    ? AppLocalizations.of(context)!.uxUiDesignerSpecialist
                    : AppLocalizations.of(context)!.flutterFullStackDeveloper,
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
                      // index == 0 ? "Need a custom website or app Design?" : "Need a custom website or app?",
                      index == 0
                          ? AppLocalizations.of(context)!
                              .needCustomWebsiteOrAppDesign
                          : AppLocalizations.of(context)!
                              .needCustomWebsiteOrApp,
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
                          // "Got a project? Let's talk.",
                          AppLocalizations.of(context)!.gotProjectLetsTalk,
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
              // الصف الرئيسي لأسفل النص في الكاروسيل
              // Row(
              //   children: [
              //     // الزر الأساسي الحالي
              //     Expanded(
              //       child: MouseRegion(
              //         cursor: SystemMouseCursors.click,
              //         child: Container(
              //           decoration: BoxDecoration(
              //             color: kPrimaryColor,
              //             borderRadius: BorderRadius.circular(8.0),
              //           ),
              //           height: 48.0,
              //           padding: EdgeInsets.symmetric(
              //             horizontal: 28.0,
              //           ),
              //           child: TextButton(
              //             onPressed: _handleTap,
              //             child: Text(
              //               // "GET STARTED",
              //               AppLocalizations.of(context)!.getStarted,
              //               style: GoogleFonts.ibmPlexSansArabic(
              //                 color: Colors.white,
              //                 fontSize: 15,
              //                 fontWeight: FontWeight.bold,
              //               ),
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //     SizedBox(width: 12.0),
              //     // الزر الثانوي الجديد
              //     Expanded(
              //       child: Container(
              //         decoration: BoxDecoration(
              //           color: kSecondaryColor, // لون ثانوي تحدده مسبقًا
              //           borderRadius: BorderRadius.circular(8.0),
              //         ),
              //         height: 48.0,
              //         child: TextButton(
              //           onPressed: () {
              //             Navigator.pushNamed(context, '/about'); // رابط صفحة قصتي
              //           },
              //           child: Text(
              //             'readAboutMe',
              //             style: GoogleFonts.ibmPlexSansArabic(
              //               color: Colors.white,
              //               fontSize: 15,
              //               fontWeight: FontWeight.bold,
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ],
              // )

      Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // الزر الأساسي
          Container(
            // padding: EdgeInsets.symmetric(horizontal: 50),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: 48.0,
            margin: EdgeInsets.only(bottom: 8.0),
            child: TextButton(
              onPressed: _handleTap,
              child: Text(
                AppLocalizations.of(context)!.getStarted,
                style: GoogleFonts.ibmPlexSansArabic(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // الزر الثانوي
          Container(
            // padding: EdgeInsets.symmetric(horizontal: 22),
            decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.circular(8.0),
            ),
            height: 48.0,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) =>
                            AboutMe()));
              },
              child: Text(
                AppLocalizations.of(context)!.discoverMyStory,
                style: GoogleFonts.ibmPlexSansArabic(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
            ],
          ),
        ),
        image: Container(
          child: Image.asset(
            index == 0 ? "assets/myPhoto01.png" : "assets/myPhoto_02.png",
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
    // final isHorizantal = MediaQuery.of(context).size.width > MediaQuery.of(context).size.height;
    !ScreenHelper.isHorizantal(context) &&
            (ScreenHelper.isMobile(context) || ScreenHelper.isTablet(context))
        ? carouselContainerHeight = MediaQuery.of(context).size.width *
            (ScreenHelper.isMobile(context) ? .5 : .70)
        : carouselContainerHeight = MediaQuery.of(context).size.height *
            (ScreenHelper.isMobile(context) ? .5 : .70);
    // double carouselContainerHeight = MediaQuery.of(context).size.height *
    //     (ScreenHelper.isMobile(context) ? .5 : .70);
    return Container(
      height: carouselContainerHeight + 32,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: CarouselSlider(
              carouselController: _carouselController,
              options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1,
                scrollPhysics: AlwaysScrollableScrollPhysics(),
                height: carouselContainerHeight,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: List.generate(
                carouselItems.length,
                (index) => Builder(
                  builder: (BuildContext context) {
                    return Container(
                      constraints: BoxConstraints(
                        minHeight: carouselContainerHeight,
                      ),
                      child: ScreenHelper(
                        // Responsive views
                        desktop: _buildDesktop(
                          context,
                          carouselItems[index].text!,
                          carouselItems[index].image!,
                        ),
                        tablet: _buildTablet(
                          context,
                          carouselItems[index].text!,
                          carouselItems[index].image!,
                        ),
                        mobile: _buildMobile(
                          context,
                          carouselItems[index].text!,
                          carouselItems[index].image!,
                        ),
                      ),
                    );
                  },
                ),
              ).toList(),
            ),
          ),
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 8.0,
            children: List.generate(carouselItems.length, (index) {
              const int visibleCount = 2;
              int halfWindow = visibleCount ~/ 2;

              int start = (_currentIndex - halfWindow)
                  .clamp(0, carouselItems.length - visibleCount);
              int end = (start + visibleCount).clamp(0, carouselItems.length);

              bool isInWindow = index >= start && index < end;
              bool isActive = index == _currentIndex;

              double width = isActive ? 32 : (isInWindow ? 12 : 6);
              double height = isInWindow ? 12 : 6;
              Color color = isActive
                  ? kPrimaryColor
                  : (isInWindow ? Colors.grey : Colors.grey.withOpacity(0.3));

              return GestureDetector(
                onTap: () => _carouselController.animateToPage(index),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 300),
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              );
            }),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}

// Big screens
Widget _buildDesktop(BuildContext context, Widget text, Widget image) {
  return Center(
    child: Container(
      constraints: BoxConstraints(
        maxWidth: kDesktopMaxWidth,
        minWidth: kDesktopMaxWidth,
      ),
      // maxWidth: kDesktopMaxWidth,
      // minWidth: kDesktopMaxWidth,
      // defaultScale: false,
      child: Row(
        children: [
          Expanded(
            child: text,
          ),
          Expanded(
            child: image,
          )
        ],
      ),
    ),
  );
}

// Mid screens
Widget _buildTablet(BuildContext context, Widget text, Widget image) {
  return Center(
    child: Container(
      constraints: BoxConstraints(
        maxWidth: kTabletMaxWidth,
        minWidth: kTabletMaxWidth,
      ),
      child: Row(
        children: [
          Expanded(
            child: text,
          ),
          Expanded(
            child: image,
          )
        ],
      ),
    ),
  );
}

// SMall Screens

Widget _buildMobile(BuildContext context, Widget text, Widget image) {
  return Container(
    constraints: BoxConstraints(
      maxWidth: getMobileMaxWidth(context),
    ),
    width: double.infinity,
    child: text,
  );
}
