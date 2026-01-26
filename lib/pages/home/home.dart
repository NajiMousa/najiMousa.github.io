import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:particles_flutter/particles_engine.dart';
import 'package:particles_fly/particles_fly.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/pages/home/components/carousel.dart';
import 'package:web_portfolio/pages/home/components/cv_section.dart';
import 'package:web_portfolio/pages/home/components/education_section.dart';
import 'package:web_portfolio/pages/home/components/footer.dart';
import 'package:web_portfolio/pages/home/components/header.dart';
import 'package:web_portfolio/pages/home/components/ios_app_ad.dart';
import 'package:web_portfolio/pages/home/components/portfolio_stats.dart';
import 'package:web_portfolio/pages/home/components/skill_section.dart';
import 'package:web_portfolio/pages/home/components/sponsors.dart';
import 'package:web_portfolio/pages/home/components/testimonial_widget.dart';
import 'package:web_portfolio/pages/home/components/website_ad.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/globals.dart';

import '../../models/header_item.dart';
import '../../utils/screen_helper.dart';
import '../../widgets/social_handles/social_handles.dart';
import 'components/blog_section.dart';
import 'components/my_work.dart';
import 'components/pricing_section.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ScrollController _scrollController = ScrollController();

  // final HeaderItem item;
  final homeKey = GlobalKey();

  final servicesKey = GlobalKey();

  final skillsKey = GlobalKey();

  final educationKey = GlobalKey();

  final portfolioKey = GlobalKey();

  final testimonialsKey = GlobalKey();

  final creativeLabKey = GlobalKey();

  final hireMeKey = GlobalKey();
  bool _isHovered = false;
  Color _iconColor = Colors.white;
  double _iconSize = 28;
  double _animatedPaddingValueBottom = 0;
  double _animatedPaddingValueTop = 24;



  void scrollTo(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
      alignment: 0.5,
    );
  }

  // final ScrollController _scrollController = ScrollController();

  double _scrollOffset = 0.0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      setState(() {
        _scrollOffset = _scrollController.offset;
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      // bottomNavigationBar:
      // CommonFunction.isApp(context)
      //     ?
      // SafeArea(
      //   child: Padding(
      //     padding: EdgeInsets.all(
      //       // kIsWeb ? 8.0 : 0,
      //        8.0,
      //     ),
      //     child: SocialHandles(),
      //   ),
      // ),
      // : null,
      key: Globals.scaffoldKey,
      endDrawer: Drawer(
        backgroundColor: kBackgroundColor,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
              vertical: 24.h,
            ),
            child: ListView.separated(
              itemCount: headerItems.length,
              separatorBuilder: (context, index) => SizedBox(height: 24.h),
              itemBuilder: (context, index) {
                return HeaderItemWidget(item: headerItems[index]);
              },
            ),

            // ListView.separated(
            //   itemBuilder: (BuildContext context, int index) {
            //     return MouseRegion(
            //       cursor: SystemMouseCursors.click,
            //       onEnter: (_) => setState(() => _isHovered = true),
            //       onExit: (_) => setState(() => _isHovered = false),
            //       child: Container(
            //         margin: const EdgeInsets.symmetric(horizontal: 10.0),
            //         child: GestureDetector(
            //           onTap: widget.item.onTap,
            //           child: AnimatedDefaultTextStyle(
            //             duration: const Duration(milliseconds: 200),
            //             style: TextStyle(
            //               color: _isHovered ? kPrimaryColor : Colors.white,
            //               fontSize: screenWidth > 1000 ? 15:12.0,
            //               fontWeight: FontWeight.bold,
            //             ),
            //             child: Text(widget.item.title!),
            //           ),
            //         ),
            //       ),
            //     );
            //       // headerItems[index].isButton
            //       //   ? MouseRegion(
            //       //       cursor: SystemMouseCursors.click,
            //       //       child: Container(
            //       //         decoration: BoxDecoration(
            //       //           color: kDangerColor,
            //       //           borderRadius: BorderRadius.circular(8.sp),
            //       //         ),
            //       //         padding: EdgeInsets.symmetric(horizontal: 28.w),
            //       //         child: TextButton(
            //       //           onPressed: headerItems[index].onTap,
            //       //           child: Text(
            //       //             headerItems[index].title!,
            //       //             style: TextStyle(
            //       //               color: Colors.white,
            //       //               fontSize: 13.sp,
            //       //               fontWeight: FontWeight.bold,
            //       //             ),
            //       //           ),
            //       //         ),
            //       //       ),
            //       //     )
            //       //   : ListTile(
            //       //       title: Text(
            //       //         headerItems[index].title!,
            //       //         style: TextStyle(
            //       //           color: Colors.white,
            //       //         ),
            //       //       ),
            //       //     );
            //   },
            //   separatorBuilder: (BuildContext context, int index) {
            //     return SizedBox(
            //       height: 10.h,
            //     );
            //   },
            //   itemCount: headerItems.length,
            // ),
          ),
        ),
      ),

      body: Container(
        child: Stack(
          children: [
            // Particles(
            //   key: UniqueKey(),
            //   awayRadius: 1,
            //   // numberOfParticles: CommonFunction.isApp(context) ? 20 : 50,
            //   // speedOfParticles: 2,
            //   height: MediaQuery.of(context).size.height,
            //   width: MediaQuery.of(context).size.width,
            //   onTapAnimation: true,
            //   // particleColor: Constants.white,
            //   awayAnimationDuration: Duration(milliseconds: 600),
            //   // maxParticleSize: 2,
            //   // isRandSize: true,
            //   // isRandomColor: true,
            //   // randColorList: [Constants.green, Constants.white, Constants.lightestNavy],
            //   awayAnimationCurve: Curves.easeInOut,
            //   enableHover: false,
            //   connectDots: false, particles: [],
            //
            // ),
            ParticlesFly(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              connectDots: true,
              numberOfParticles: 50,
              lineColor: kAccentColor.withOpacity(0.1),
              particleColor: kPrimaryColor,
            ),

            Stack(
              children: [
                Scrollbar(
                  controller: _scrollController,
                  thumbVisibility: true,
                  interactive: true,
                  thickness: 10, // سمك الشريط
                  radius: Radius.circular(8),
                  child: SingleChildScrollView(
                    controller: _scrollController,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 100,
                        ),
                        // final homeKey = GlobalKey();
                        // final servicesKey = GlobalKey();
                        // final skillsKey = GlobalKey();
                        // final educationKey = GlobalKey();
                        // final portfolioKey = GlobalKey();
                        // final testimonialsKey = GlobalKey();
                        // final creativeLabKey = GlobalKey();
                        // final hireMeKey = GlobalKey();
                        Carousel(
                          key: homeKey,
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        CvSection(key: servicesKey),
                        // IosAppAd(),
                        // SizedBox(
                        //   height: 35.0,
                        // ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 28.0),
                          // child: PortfolioStats(key: servicesKey),
                          child: PortfolioStats(),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),

                        SkillSection(key: skillsKey),
                        SizedBox(
                          height: 75.0,
                        ),
                        EducationSection(key: educationKey),
                        SizedBox(
                          height: 50.0,
                        ),

                        ProjectsSection(key: portfolioKey),

                        // SizedBox(
                        //   height: 35.0,
                        // ),
                        Sponsors(),
                        SizedBox(
                          height: 50.0,
                        ),
                        // WebsiteAd(),

                        // SizedBox(
                        //   height: 25.0,
                        // ),

                        // SizedBox(
                        //   height: 25.0,
                        // ),
                        TestimonialWidget(key: testimonialsKey),
                        // SizedBox(
                        //   height: 25.h,
                        // ),
                        BlogSection(),
                        // SizedBox(
                        //   height: 25.h,
                        // ),
                        PricingTeaserWidget(),
                        Container(
                            color: Colors.black.withOpacity(0.1),
                            child: Footer()),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    // child: Header(),
                    padding: EdgeInsetsGeometry.symmetric(vertical: 15),
                    color: kBackgroundColor
                        .withOpacity(_scrollOffset > 50 ? 0.9 : 0.0),
                    child: Header(
                      onItemSelected: (section) {
                        switch (section) {
                          case HeaderSection.home:
                            scrollTo(homeKey);
                            print('object000');
                            break;
                          case HeaderSection.services:
                            scrollTo(servicesKey);
                            print('object001');
                            break;
                          case HeaderSection.skills:
                            scrollTo(skillsKey);
                            print('object002');
                            break;
                          case HeaderSection.education:
                            scrollTo(educationKey);
                            print('object003');
                            break;
                          case HeaderSection.portfolio:
                            scrollTo(portfolioKey);
                            print('object004');
                            break;
                          case HeaderSection.testimonials:
                            scrollTo(testimonialsKey);
                            print('object005');
                            break;
                          case HeaderSection.creativeLab:
                            scrollTo(creativeLabKey);
                            print('object006');
                            break;
                          case HeaderSection.hireMe:
                            scrollTo(hireMeKey);
                            print('object007');
                            break;
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),

            ScreenHelper.isMobile(context) ||
                    MediaQuery.of(context).size.width < 1400
                ? Container()
                : SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * (00.07)),
                          child: Align(
                              child: SocialHandles(),
                              alignment: AlignmentDirectional.bottomStart),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * (00.07)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onHover: (value) {
                                  setState(() {
                                    _isHovered = value;
                                    _iconColor = value ? kPrimaryColor : Colors.white;
                                    _animatedPaddingValueTop = value ? 18 : 24;
                                    _animatedPaddingValueBottom = value ? 6 : 0;
                                  });
                                },
                                onTap: () async {
                                  final Uri emailUri = Uri(
                                    scheme: 'mailto',
                                    path: 'ana.naji.1996@gmail.com',
                                    query: Uri.encodeQueryComponent(
                                      'subject=Contact from Portfolio',
                                    ),
                                  );

                                  await launchUrl(emailUri);
                                },
                                child: Align(
                                    child: AnimatedOpacity(
                                      opacity: _isHovered ? 1.0 : 0.78,
                                      duration:
                                          const Duration(milliseconds: 200),
                                      child: AnimatedSlide(
                                        duration:
                                            const Duration(milliseconds: 200),
                                        offset: _isHovered
                                            ? Offset.zero
                                            : const Offset(-0.1, 0),
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 16, horizontal: 4),
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(50)),
                                            // shape: BoxShape.circle,
                                            color: kBackgroundColor,
                                          ),
                                          child: RotatedBox(
                                            quarterTurns: 3,
                                            child: Text(
                                              "ana.naji.1996@gmail.com",
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: _iconColor,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    alignment:
                                        AlignmentDirectional.bottomStart),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                    top: 4, left: 4, right: 4),
                                decoration: BoxDecoration(
                                  // shape: BoxShape.circle,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(25),
                                      topLeft: Radius.circular(25)),
                                  color: kBackgroundColor,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(25),
                                        topLeft: Radius.circular(25)),
                                    color: Colors.white,
                                  ),
                                  height: 120,
                                  width: 6,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
          ],
        ),
      ),
      // Container(
      //   child: SingleChildScrollView(
      //     child: Column(
      //       crossAxisAlignment: CrossAxisAlignment.start,
      //       children: [
      //         Container(
      //           child: Header(),
      //         ),
      //         Carousel(),
      //         SizedBox(
      //           height: 40.0,
      //         ),
      //         CvSection(),
      //         // IosAppAd(),
      //         // SizedBox(
      //         //   height: 35.0,
      //         // ),
      //         Padding(
      //           padding: const EdgeInsets.symmetric(vertical: 28.0),
      //           child: PortfolioStats(),
      //         ),
      //         SizedBox(
      //           height: 50.0,
      //         ),
      //
      //         SkillSection(),
      //         SizedBox(
      //           height: 75.0,
      //         ),
      //         EducationSection(),
      //         SizedBox(
      //           height: 50.0,
      //         ),
      //
      //         ProjectsSection(),
      //
      //         // SizedBox(
      //         //   height: 35.0,
      //         // ),
      //         Sponsors(),
      //         SizedBox(
      //           height: 50.0,
      //         ),
      //         // WebsiteAd(),
      //
      //
      //         // SizedBox(
      //         //   height: 25.0,
      //         // ),
      //
      //         // SizedBox(
      //         //   height: 25.0,
      //         // ),
      //         TestimonialWidget(),
      //         // SizedBox(
      //         //   height: 25.h,
      //         // ),
      //         BlogSection(),
      //         // SizedBox(
      //         //   height: 25.h,
      //         // ),
      //         PricingTeaserWidget(),
      //         Container(color: Colors.black.withOpacity(0.1),child: Footer()),
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}
