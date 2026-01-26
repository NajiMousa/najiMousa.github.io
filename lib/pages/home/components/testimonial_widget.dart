import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_portfolio/models/testimonial.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../../l10n/app_localizations.dart';

class TestimonialWidget extends StatefulWidget {
  const TestimonialWidget({Key? key}) : super(key: key);
  @override
  State<TestimonialWidget> createState() => _TestimonialWidgetState();
}

class _TestimonialWidgetState extends State<TestimonialWidget> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();
   List<Testimonial> testimonials =[];
  int _currentIndex = 0;
  double carouselContainerHeight = 0;

  @override
  Widget build(BuildContext context) {
    testimonials = [
      Testimonial(
        text:
        // "Naji-at is a true professional at what he does and never ceases to amaze me with his beautiful and thoughtful work. I genuinely look forward to working with him again on future projects.",
        AppLocalizations.of(context)!.testimonialAhmedJamal,
        // occupation: "Flutter Developer",
        occupation: AppLocalizations.of(context)!.testimonialAhmedJamalCompany,
        // personName: "AHMED JAMAL",
        personName: AppLocalizations.of(context)!.testimonialAhmedJamalRole,
        profilePhoto: "assets/ahmedJamal.jpg",
      ),
      Testimonial(
        text:
        // "Working with Naji-at was an absolute pleasure. His attention to detail and creative approach made the entire process smooth and inspiring. Highly recommended!",
        AppLocalizations.of(context)!.testimonialDinaBenSaeed,
        // occupation: "Lead Activator - Nawaculture Org",
        occupation: AppLocalizations.of(context)!.testimonialDinaBenSaeedCompany,
        // personName: "DINA BEN-SAEED",
        personName: AppLocalizations.of(context)!.testimonialDinaBenSaeedRole,
        profilePhoto: "assets/female01.png",
      ),
      Testimonial(
        text:
        // "Naji-at consistently delivers beyond expectations. His work speaks for itself — elegant, purposeful, and always on time. Can’t wait to collaborate again.",
        AppLocalizations.of(context)!.testimonialLaylaAlMansour,
        // occupation: "Startup Founder",
        occupation: AppLocalizations.of(context)!.testimonialLaylaAlMansourCompany,
        // personName: "Layla Al-Mansour",
        personName: AppLocalizations.of(context)!.testimonialLaylaAlMansourRole,
        profilePhoto: "assets/female02.jpg",
      ),
      Testimonial(
        text:
        // "I’ve worked with many professionals, but Naji-at stands out with his dedication, communication, and design sense. He truly understands what the project needs.",
        AppLocalizations.of(context)!.testimonialTahaAtiyah,
        // occupation: "Lead Activator IT Specialist",
        occupation: AppLocalizations.of(context)!.testimonialTahaAtiyahCompany,
        // personName: "Taha Atiyah - Nawaculture Org",
        personName: AppLocalizations.of(context)!.testimonialTahaAtiyahRole,
        profilePhoto: "assets/tahaAtyiah.jpg",
      ),
      Testimonial(
        text:
        // "From the first draft to the final delivery, Naji-at was impressive. His designs are not only beautiful but functional. Would definitely work with him again!",
        AppLocalizations.of(context)!.testimonialAyaMohammed,
        // occupation: "Student",
        occupation: AppLocalizations.of(context)!.testimonialAyaMohammedCompany,
        personName: AppLocalizations.of(context)!.testimonialAyaMohammedRole,
        // personName: "AYA MOHAMMED",
        profilePhoto: "assets/female03.jpg",
      ),
    ];
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth, context),
        tablet: _buildUi(kTabletMaxWidth, context),
        mobile: _buildUi(getMobileMaxWidth(context), context),
      ),
    );
  }

  Widget _buildUi(double width, BuildContext context) {
    !ScreenHelper.isHorizantal(context) &&
            (ScreenHelper.isMobile(context) || ScreenHelper.isTablet(context))
        ? carouselContainerHeight = MediaQuery.of(context).size.width * (.95)
        : carouselContainerHeight = MediaQuery.of(context).size.height *
            (ScreenHelper.isMobile(context) ? 1 : .70);

    // double carouselContainerHeight = MediaQuery.of(context).size.height *
    //     (ScreenHelper.isMobile(context) ? 1 : .70);
    return Center(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            constraints: BoxConstraints(
              maxWidth: width,
              minWidth: width,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // "💬 TESTIMONIALS",
                  AppLocalizations.of(context)!.testimonials,
                  style: GoogleFonts.ibmPlexSansArabic(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 30.0,
                    height: 1.3,
                  ),
                ),
                SizedBox(height: 18.0),
                Container(
                  constraints: BoxConstraints(maxWidth: 550.0),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                          // "Words from amazing people I’ve had the chance to work with 🌟. ",
                          AppLocalizations.of(context)!.testimonialsDescriptionA,
                          style: GoogleFonts.ibmPlexSansArabic(
                              color: Colors.white, height: 1.8),
                        ),
                        TextSpan(
                          // text: "Their feedback 💌",
                          text: AppLocalizations.of(context)!.testimonialsDescriptionB,
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w700,
                            height: 1.8,
                          ),
                        ),
                        TextSpan(
                          text:
                          // " keeps me inspired to grow, create, and deliver better experiences 🚀.",
                          AppLocalizations.of(context)!.testimonialsDescriptionC,
                          style: GoogleFonts.ibmPlexSansArabic(
                              color: Colors.white, height: 1.8),
                        ),
                      ],
                    ),
                  ),
                ),

                // Text(
                //   "TESTIMONIALS",
                //   style: GoogleFonts.ibmPlexSansArabic(
                //     color: Colors.white,
                //     fontWeight: FontWeight.w900,
                //     fontSize: 30.0,
                //     height: 1.3,
                //   ),
                // ),
                // SizedBox(
                //   height: 5.0,
                // ),
                // Container(
                //   constraints: BoxConstraints(maxWidth: 500.0),
                //   child: RichText(
                //     text: TextSpan(
                //       children: [
                //         TextSpan(
                //           text:
                //               "This is the portfolio section. There is a lot of work here",
                //           style: GoogleFonts.ibmPlexSansArabic(
                //               color: Colors.white, height: 1.8),
                //         ),
                //         TextSpan(
                //             text: " click here to contact us",
                //             style: TextStyle(
                //               color: kPrimaryColor,
                //               fontWeight: FontWeight.w700,
                //               height: 1.8,
                //             )),
                //         TextSpan(
                //           text: ". Please subscribe to me youtube channel :-)",
                //           style: GoogleFonts.ibmPlexSansArabic(
                //               color: Colors.white, height: 1.8),
                //         ),
                //       ],
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 45.0,
                ),
                Container(
                  // height: carouselContainerHeight + 12,
                  // width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: CarouselSlider(
                          carouselController: _carouselController,
                          options: CarouselOptions(
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 12),
                            viewportFraction: 1,
                            scrollPhysics: AlwaysScrollableScrollPhysics(),
                            height: ScreenHelper.isMobile(context)
                                ? carouselContainerHeight /
                                    (MediaQuery.of(context).size.height < 800
                                        ? 1.2
                                        : 1.65)
                                : ScreenHelper.isTablet(context)
                                    ? carouselContainerHeight / 2.3
                                    : carouselContainerHeight / 2.5,
                            onPageChanged: (index, reason) {
                              // setState(() {
                              //   _currentIndex = index;
                              // });
                            },
                          ),
                          // items: [],
                          items: List.generate(
                            testimonials.length,
                            (index) => Builder(
                              builder: (BuildContext context) {
                                return Center(
                                  child: LayoutBuilder(
                                    builder: (context, constraints) {
                                      return Flex(
                                        direction:
                                            ScreenHelper.isMobile(context)
                                                ? Axis.vertical
                                                : Axis.horizontal,
                                        // Lets map
                                        children: [
                                          testimonialWidgets(
                                              testimonials[index]),
                                          testimonialWidgets(testimonials[
                                              (index + 1) %
                                                  testimonials.length]),
                                        ],
                                      );
                                    },
                                  ),
                                );
                              },
                            ),
                          ).toList(),
                        ),
                      ),

                      // Wrap(
                      //   alignment: WrapAlignment.center,
                      //   crossAxisAlignment: WrapCrossAlignment.center,
                      //   spacing: 8.0,
                      //   children: List.generate(testimonials.length, (index) {
                      //     const int visibleCount = 2;
                      //     int halfWindow = visibleCount ~/ 2;
                      //
                      //     int start = (_currentIndex - halfWindow)
                      //         .clamp(0, testimonials.length - visibleCount);
                      //     int end = (start + visibleCount)
                      //         .clamp(0, testimonials.length);
                      //
                      //     bool isInWindow = index >= start && index < end;
                      //     bool isActive = index == _currentIndex;
                      //
                      //     double width = isActive ? 32 : (isInWindow ? 12 : 6);
                      //     double height = isInWindow ? 12 : 6;
                      //     Color color = isActive
                      //         ? kPrimaryColor
                      //         : (isInWindow
                      //         ? Colors.grey
                      //         : Colors.grey.withOpacity(0.3));
                      //
                      //     return GestureDetector(
                      //       onTap: () =>
                      //           _carouselController.animateToPage(index),
                      //       child: AnimatedContainer(
                      //         duration: Duration(milliseconds: 300),
                      //         width: width,
                      //         height: height,
                      //         decoration: BoxDecoration(
                      //           color: color,
                      //           borderRadius: BorderRadius.circular(15),
                      //         ),
                      //       ),
                      //     );
                      //   }),
                      // ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }



  Widget testimonialWidgets(Testimonial testimonial) {
    return Expanded(
      flex: ScreenHelper.isMobile(context) ? 0 : 1,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        margin: EdgeInsets.only(bottom: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Image.asset(
                "assets/quote.png",
                width: 50.0,
                color: kPrimaryColor,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Text(
              testimonial.text!,
              style: GoogleFonts.ibmPlexSansArabic(
                color: kCaptionColor,
                height: 1.8,
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage(
                    testimonial.profilePhoto!,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      testimonial.personName!,
                      style: GoogleFonts.ibmPlexSansArabic(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                      ),
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Text(
                      testimonial.occupation!,
                      style: GoogleFonts.ibmPlexSansArabic(
                        color: kCaptionColor,
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
