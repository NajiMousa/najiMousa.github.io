import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../l10n/app_localizations.dart';
import '../../../utils/constants.dart';
import '../../../utils/screen_helper.dart';
import '../../../widgets/blog_card.dart';
import 'blog_detail_page.dart';

const double kSpacing = 28.0;
const double kRunSpacing = 16.0;

class BlogSection extends StatefulWidget {
  BlogSection({Key? key});

  @override
  _BlogSectionState createState() => _BlogSectionState();
}

class _BlogSectionState extends State<BlogSection> {
   List<BlogCardData> blogData = [];

  final CarouselSliderController _carouselController =
      CarouselSliderController();
  int _currentIndex = 0;
  double carouselContainerHeight = 0;
  // final t = AppLocalizations.of(context)!;

  @override
  Widget build(BuildContext context) {
//     blogData = [
//       BlogCardData(
//         category: AppLocalizations.of(context)!.productJourney,
//         title: "From Idea to App",
//         date: "March 12, 2024",
//         buttonText: AppLocalizations.of(context)!.readMore,
//         imageUrl: 'assets/formIdeaToApp.png',
//         content:
//       ),
//       BlogCardData(
//         category: AppLocalizations.of(context)!.uxDesign,
//         title: "UX Psychology Basics",
//         date: "April 2, 2024",
//         buttonText: AppLocalizations.of(context)!.readMore,
//         imageUrl: 'assets/uxPsychology.jpg',
//         content:
//       ),
//       BlogCardData(
//         category: AppLocalizations.of(context)!.appBusiness,
//         title: "Real App Costs",
//         date: "April 18, 2024",
//         buttonText: AppLocalizations.of(context)!.readMore,
//         imageUrl: 'assets/realCost.png',
//         content:
//       ),
//       BlogCardData(
//         category: AppLocalizations.of(context)!.performance,
//         title: "Design vs Performance",
//         date: "May 1, 2024",
//         buttonText: AppLocalizations.of(context)!.readMore,
//         imageUrl: 'assets/desginPerformace.jpg',
//         content:
//       ),
//       BlogCardData(
//         category: AppLocalizations.of(context)!.flutter,
//         title: "Flutter Design Systems",
//         date: "May 20, 2024",
//         buttonText: AppLocalizations.of(context)!.readMore,
//         imageUrl: 'assets/FlutterFlow.png',
//         content:
//       ),
//
//
// //       BlogCardData(
// //         category: AppLocalizations.of(context)!.inspiration,
// //         // category: "Inspiration",
// //         title: AppLocalizations.of(context)!.fromIdeaToAppStore,
// //         // title: "From Idea to App Store: The Journey of Building Your First Successful Flutter App",
// //         date: AppLocalizations.of(context)!.blogDateMar152024,
// //         // date: "March 15, 2024",
// //         buttonText: AppLocalizations.of(context)!.readMore,
// //         // buttonText: "Read More",
// //         imageUrl: 'assets/blog_01.jpg',
// //       ),
// // // الترجمة: من الفكرة إلى المتجر: رحلة بناء أول تطبيق Flutter ناجح
// //
// // // Blog Post 2: Making Your App "Lovable"
// //       BlogCardData(
// //         category: AppLocalizations.of(context)!.inspiration,
// //         // category: "Inspiration",
// //         title: AppLocalizations.of(context)!.makingAppLovable,
// //         // title: "How to Make Your App 'Lovable': 5 Psychological Principles in UX Design",
// //         date: AppLocalizations.of(context)!.blogDateApr22024,
// //         // date: "April 2, 2024",
// //         buttonText: AppLocalizations.of(context)!.readMore,
// //         // buttonText: "Read More",
// //         imageUrl: 'assets/blog_02.jpg',
// //       ),
// // // الترجمة: كيف تجعل تطبيقك "يُحَب": 5 مبادئ نفسية في تصميم تجربة المستخدم
// //
// // // Blog Post 3: The Hidden Cost of an App
// //       BlogCardData(
// //         category: AppLocalizations.of(context)!.inspiration,
// //         // category: "Inspiration",
// //         title: AppLocalizations.of(context)!.hiddenAppCost,
// //         // title: "What Developers Don't Talk About: The Hidden Cost of Building a Mobile App",
// //         date: AppLocalizations.of(context)!.blogDateMay102024,
// //         // date: "May 10, 2024",
// //         buttonText: AppLocalizations.of(context)!.readMore,
// //         // buttonText: "Read More",
// //         imageUrl: 'assets/blog_03.jpg',
// //       ),
// // // الترجمة: ما لا يتحدث عنه المطورون: التكلفة الخفية لبناء تطبيق جوال
// //
// // // Blog Post 4: Beauty vs. Performance
// //       BlogCardData(
// //         category: AppLocalizations.of(context)!.inspiration,
// //         // category: "Inspiration",
// //         title: AppLocalizations.of(context)!.beautyVsPerformance,
// //         // title: "Between Beauty and Performance: How to Balance in Flutter Apps",
// //         date: AppLocalizations.of(context)!.blogDateJun52024,
// //         // date: "June 5, 2024",
// //         buttonText: AppLocalizations.of(context)!.readMore,
// //         // buttonText: "Read More",
// //         imageUrl: 'assets/blog_04.jpg',
// //       ),
// // // الترجمة: بين جمال التصميم وسرعة الأداء: كيف توازن في تطبيقات Flutter؟
// //
// // // Blog Post 5: Building a Design System
// //       BlogCardData(
// //         category: AppLocalizations.of(context)!.inspiration,
// //         // category: "Inspiration",
// //         title: AppLocalizations.of(context)!.designSystemGuide,
// //         // title: "More Than Buttons: A Guide to Building a Complete Design System in Flutter",
// //         date: AppLocalizations.of(context)!.blogDateJul182024,
// //         // date: "July 18, 2024",
// //         buttonText: AppLocalizations.of(context)!.readMore,
// //         // buttonText: "Read More",
// //         imageUrl: 'assets/blog_05.jpg',
// //       ),
//       // BlogCardData(
//       //   // category: "inspiration",
//       //   category: AppLocalizations.of(context)!.inspiration,
//       //   title: AppLocalizations.of(context)!.howMuchDoesWebsiteCost,
//       //   // title: "How Much Does a Website Cost to Build?",
//       //   date: AppLocalizations.of(context)!.blogDateFeb42020,
//       //   // date: "February 4, 2020",
//       //   buttonText: AppLocalizations.of(context)!.readMore,
//       //   // buttonText: "Read More",
//       //   imageUrl: 'assets/blog_01.jpg',
//       // ),
//       // BlogCardData(
//       //   // category: "design",
//       //   category: AppLocalizations.of(context)!.design,
//       //   title: AppLocalizations.of(context)!.tenTipsBestPackagingDesign,
//       //   // title: "10 Tips How Create Best Packaging Design",
//       //   date: AppLocalizations.of(context)!.blogDateFeb42020,
//       //   // date: "February 4, 2020",
//       //   buttonText: AppLocalizations.of(context)!.readMore,
//       //   // buttonText: "Read More",
//       //   imageUrl: 'assets/blog_02.jpg',
//       // ),
//       // BlogCardData(
//       //   // category: "creative",
//       //   category: AppLocalizations.of(context)!.creative,
//       //   title: AppLocalizations.of(context)!.howGetVisitorsLoveBrand,
//       //   // title: "How Get Your Visitors Love Your Brand",
//       //   // date: "February 4, 2020",
//       //   date: AppLocalizations.of(context)!.blogDateFeb42020,
//       //   buttonText: AppLocalizations.of(context)!.readMore,
//       //   // buttonText: "Read More",
//       //   imageUrl: 'assets/blog_03.jpg',
//       // ),
//     ];

    // List<BlogCardData> getBlogData(BuildContext context) {
    //   final t = AppLocalizations.of(context)!;
    //
    //   return [
    //     BlogCardData(
    //       category: t.blogProductJourney,
    //       title: t.blogIdeaToAppTitle,
    //       date: t.blogIdeaToAppDate,
    //       buttonText: t.readMore,
    //       imageUrl: 'assets/formIdeaToApp.png',
    //       summary: t.blogIdeaToAppSummary,
    //       content: t.blogIdeaToAppContent,
    //     ),
    //     BlogCardData(
    //       category: t.blogUxDesign,
    //       title: t.blogUxPsychologyTitle,
    //       date: t.blogUxPsychologyDate,
    //       buttonText: t.readMore,
    //       imageUrl: 'assets/uxPsychology.jpg',
    //       summary: t.blogUxPsychologySummary,
    //       content: t.blogUxPsychologyContent,
    //     ),
    //     BlogCardData(
    //       category: t.blogAppBusiness,
    //       title: t.blogRealAppCostsTitle,
    //       date: t.blogRealAppCostsDate,
    //       buttonText: t.readMore,
    //       imageUrl: 'assets/realCost.png',
    //       summary: t.blogRealAppCostsSummary,
    //       content: t.blogRealAppCostsContent,
    //     ),
    //     BlogCardData(
    //       category: t.blogPerformance,
    //       title: t.blogDesignVsPerformanceTitle,
    //       date: t.blogDesignVsPerformanceDate,
    //       buttonText: t.readMore,
    //       imageUrl: 'assets/desginPerformace.jpg',
    //       summary: t.blogDesignVsPerformanceSummary,
    //       content: t.blogDesignVsPerformanceContent,
    //     ),
    //     BlogCardData(
    //       category: t.blogFlutter,
    //       title: t.blogFlutterDesignSystemsTitle,
    //       date: t.blogFlutterDesignSystemsDate,
    //       buttonText: t.readMore,
    //       imageUrl: 'assets/FlutterFlow.png',
    //       summary: t.blogFlutterDesignSystemsSummary,
    //       content: t.blogFlutterDesignSystemsContent,
    //     ),
    //   ];
    // }
    final t = AppLocalizations.of(context)!;
    blogData = [
      BlogCardData(
        category: t.blogProductJourney,
        title: t.blogIdeaToAppTitle,
        date: t.blogIdeaToAppDate,
        buttonText: t.readMore,
        imageUrl: 'assets/formIdeaToApp.png',
        summary: t.blogIdeaToAppSummary,
        content: t.blogIdeaToAppContent,
      ),
      BlogCardData(
        category: t.blogUxDesign,
        title: t.blogUxPsychologyTitle,
        date: t.blogUxPsychologyDate,
        buttonText: t.readMore,
        imageUrl: 'assets/uxPsychology.jpg',
        summary: t.blogUxPsychologySummary,
        content: t.blogUxPsychologyContent,
      ),
      BlogCardData(
        category: t.blogAppBusiness,
        title: t.blogRealAppCostsTitle,
        date: t.blogRealAppCostsDate,
        buttonText: t.readMore,
        imageUrl: 'assets/realCost.png',
        summary: t.blogRealAppCostsSummary,
        content: t.blogRealAppCostsContent,
      ),
      BlogCardData(
        category: t.blogPerformance,
        title: t.blogDesignVsPerformanceTitle,
        date: t.blogDesignVsPerformanceDate,
        buttonText: t.readMore,
        imageUrl: 'assets/desginPerformace.jpg',
        summary: t.blogDesignVsPerformanceSummary,
        content: t.blogDesignVsPerformanceContent,
      ),
      BlogCardData(
        category: t.blogFlutter,
        title: t.blogFlutterDesignSystemsTitle,
        date: t.blogFlutterDesignSystemsDate,
        buttonText: t.readMore,
        imageUrl: 'assets/FlutterFlow.png',
        summary: t.blogFlutterDesignSystemsSummary,
        content: t.blogFlutterDesignSystemsContent,
      ),
//       BlogCardData(
//         category: AppLocalizations.of(context)!.productJourney,
//         title: "From Idea to App",
//         date: "March 12, 2024",
//         buttonText: AppLocalizations.of(context)!.readMore,
//         imageUrl: 'assets/formIdeaToApp.png',
//         summary:
//         "A practical walkthrough of turning a raw idea into a real, scalable app. Learn how to validate your concept, define your MVP, and avoid the most common early-stage mistakes.",
//         content: """
// Every successful app starts with a simple idea — but turning that idea into a real product requires structure, clarity, and the right decisions at the right time.
//
// In this article, we walk through the full journey from concept to launch. You’ll learn how to validate your idea before writing a single line of code, define your target users, and shape your features into a clear MVP.
//
// We also explore common mistakes founders make in early stages, such as overbuilding, ignoring user feedback, or choosing the wrong technical approach.
//
// By the end, you’ll understand how to move from an abstract idea to a scalable, market-ready application with confidence.
// """,
//       ),
//
//       BlogCardData(
//         category: AppLocalizations.of(context)!.uxDesign,
//         title: "UX Psychology Basics",
//         date: "April 2, 2024",
//         buttonText: AppLocalizations.of(context)!.readMore,
//         imageUrl: 'assets/uxPsychology.jpg',
//         summary:
//         "An introduction to the psychology behind great user experiences. Understand how users think, decide, and react — and how design choices directly affect engagement and retention.",
//         content: """
// Great user experience is not about colors and animations — it’s about understanding how users think, feel, and make decisions.
//
// This article introduces the core principles of UX psychology and how they influence user behavior. You’ll discover why users abandon apps, what makes interfaces feel intuitive, and how small design choices can dramatically affect engagement and retention.
//
// We break down key psychological concepts such as cognitive load, visual hierarchy, feedback loops, and trust signals — all explained in a practical, easy-to-apply way.
//
// Whether you’re a designer, developer, or product owner, understanding UX psychology will help you create products users enjoy using — not just tolerate.
// """,
//       ),
//
//       BlogCardData(
//         category: AppLocalizations.of(context)!.appBusiness,
//         title: "Real App Costs",
//         date: "April 18, 2024",
//         buttonText: AppLocalizations.of(context)!.readMore,
//         imageUrl: 'assets/realCost.png',
//         summary:
//         "A clear breakdown of what really drives app development costs — and why similar ideas can end up with very different budgets.",
//         content: """
// “How much does it cost to build an app?” is one of the most common — and most misunderstood — questions in the industry.
//
// In this article, we break down the real factors that influence app development costs. From feature complexity and platform choice to design depth, performance requirements, and long-term maintenance.
//
// You’ll learn why two apps with similar ideas can have completely different budgets, and how hidden costs often appear after development begins.
//
// By understanding where your money actually goes, you’ll be able to plan smarter, prioritize better, and avoid unpleasant surprises.
// """,
//       ),
//
//       BlogCardData(
//         category: AppLocalizations.of(context)!.performance,
//         title: "Design vs Performance",
//         date: "May 1, 2024",
//         buttonText: AppLocalizations.of(context)!.readMore,
//         imageUrl: 'assets/desginPerformace.jpg',
//         summary:
//         "An exploration of the trade-off between visual design and performance — and how to create apps that feel both beautiful and fast.",
//         content: """
// Beautiful design attracts users — but performance keeps them.
//
// This article explores the balance between visual design and application performance, and why prioritizing one at the expense of the other often leads to poor results.
//
// We discuss how heavy animations, complex layouts, and unoptimized assets can impact loading times, battery usage, and overall user satisfaction.
//
// You’ll learn how to make design and performance work together, not against each other — creating apps that feel smooth, fast, and visually appealing.
// """,
//       ),
//
//       BlogCardData(
//         category: AppLocalizations.of(context)!.flutter,
//         title: "Flutter Design Systems",
//         date: "May 20, 2024",
//         buttonText: AppLocalizations.of(context)!.readMore,
//         imageUrl: 'assets/FlutterFlow.png',
//         summary:
//         "A practical guide to building scalable Flutter apps using design systems that improve consistency, speed, and team collaboration.",
//         content: """
// As applications grow, inconsistent UI becomes a serious problem — slowing development and damaging user trust.
//
// In this article, we explore how design systems in Flutter help teams build scalable, consistent, and maintainable applications.
//
// You’ll learn what a design system really is, why it matters, and how it improves collaboration between designers and developers.
//
// If you’re building or planning to scale a Flutter app, this guide will help you create a solid foundation that grows with your product.
// """,
//       ),
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
    // !ScreenHelper.isHorizantal(context) && (ScreenHelper.isMobile(context) || ScreenHelper.isTablet(context)) ?
    // carouselContainerHeight = MediaQuery.of(context).size.height * (ScreenHelper.isMobile(context) ? 1.3 : 0.6) :
    carouselContainerHeight = MediaQuery.of(context).size.height *
        (ScreenHelper.isMobile(context) ? (MediaQuery.of(context).size.height < 800 ? 1.4 : 1.1) : ScreenHelper.isTablet(context) ?  1: .80);

    // double carouselContainerHeight = MediaQuery.of(context).size.height *
    //     (ScreenHelper.isMobile(context) ? (MediaQuery.of(context).size.height < 800 ? 1.4 : 1.1) : .70);
    return Center(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          double viewportFractionB;
          ScreenHelper.isMobile(context) ? viewportFractionB = 1 : viewportFractionB = 0.33;
          return Container(
            constraints: BoxConstraints(
              maxWidth: width,
              minWidth: width,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // "MY BLOGS",
                  AppLocalizations.of(context)!.myBlogs,
                  style: GoogleFonts.ibmPlexSansArabic(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 30.0,
                    height: 1.3,
                  ),
                ),
                SizedBox(
                  height: 18.0,
                ),
                // RichText(
                //   text: TextSpan(
                //     children: [
                //       TextSpan(
                //         text: "Read My Own",
                //         style: GoogleFonts.ibmPlexSansArabic(
                //             color: Colors.white, height: 1.8),
                //       ),
                //       TextSpan(
                //           text: " Blog. Be Trendy",
                //           style: TextStyle(
                //             color: kPrimaryColor,
                //             fontWeight: FontWeight.w700,
                //             height: 1.8,
                //           )),
                //     ],
                //   ),
                // ),
                // SizedBox(
                //   height: 3,
                // ),
                // Text(
                //   'We met years ago at an advertising agency where we learned a ton of dos and some don\'ts. There were project deadlines, happy hours, client proposals and a few sparks flying.',
                //   style: GoogleFonts.ibmPlexSansArabic(
                //     color: Colors.white,
                //     height: 1.8,
                //   ),
                // ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: AppLocalizations.of(context)!.myBlogsDescriptionA,
                        style: GoogleFonts.ibmPlexSansArabic(
                            color: Colors.white, height: 1.8),
                      ),
                      TextSpan(
                          text: AppLocalizations.of(context)!.myBlogsDescriptionB,
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w700,
                            height: 1.8,
                          )),
                    ],
                  ),
                ),
                SizedBox(height: 3),
                Text(
                  // 'From lessons learned 📚 to ideas worth sharing 💡, '
                  //     'my blog is where creativity meets storytelling 🔥.',
                  AppLocalizations.of(context)!.myBlogsDescriptionC,
                  style: GoogleFonts.ibmPlexSansArabic(
                    color: Colors.white,
                    height: 1.8,
                  ),
                ),
                SizedBox(
                  height: 45.0,
                ),

            Container(
                  alignment: Alignment.center,
              // height: MediaQuery.of(context).size.height * (ScreenHelper.isMobile(context) ? 1 : ScreenHelper.isTablet(context)? 1.6 : 0.33),
                  child: CarouselSlider.builder(
                    carouselController: _carouselController,
                    itemCount: blogData.length,
                    itemBuilder: (context, index, realIndex) {
                      double viewportFractionA;

                      final double screenWidth =
                          MediaQuery.of(context).size.width;
                      final double cardWidth =
                          screenWidth;
                      ScreenHelper.isMobile(context)  ? viewportFractionA = 4.7: ScreenHelper.isTablet(context) ?
                      ( viewportFractionA = 1.05) : viewportFractionA = 1;


                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: _buildBlogCards(
                          width: cardWidth * viewportFractionA,
                          blogData: blogData[index],
                        ),
                      );
                    },

                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      viewportFraction: viewportFractionB,
                      enlargeCenterPage: false,
                      enableInfiniteScroll: true,
                      height: ScreenHelper.isMobile(context)
                          ? carouselContainerHeight /
                          (MediaQuery.of(context).size.height < 800
                              ? 1.2
                              : 1.18)
                          : ScreenHelper.isTablet(context)
                          ? carouselContainerHeight / 2.1
                          : carouselContainerHeight / 1.4,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildBlogCards({
    required BlogCardData blogData,
    required double width,
  }) {
    double cardWidth = ((width - (kSpacing * 2)) / 5.6);
    List<Widget> items = [];

    // for (int index = 0; index < blogData.length; index++) {
    //   items.add(
    return
      BlogCard(
        summary: blogData.summary,
      width: cardWidth,
      imageWidth: cardWidth,
      imageHeight: cardWidth * ( 1.2),
      content: blogData.content,
      // imageHeight: cardWidth * (ScreenHelper.isTablet(context) ? 0.6: 1.2),
      category: blogData.category,
      title: blogData.title,
      date: blogData.date,
      buttonText: blogData.buttonText,
      imageUrl: blogData.imageUrl,
        onPressed: () {
        print(01020501);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => BlogDetailPage(
                summary: blogData.summary,
                imageUrl: blogData.imageUrl,
                category: blogData.category,
                title: blogData.title,
                date: blogData.date,
                content: blogData.content,
              ),
            ),
          );
        print(01020502);
        },
    );
    // );
  }

}




