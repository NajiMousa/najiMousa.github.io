import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';

import '../../../models/works_carousel_item_model.dart';

class WebsiteAd extends StatefulWidget {
  @override
  State<WebsiteAd> createState() => _WebsiteAdState();
}

class _WebsiteAdState extends State<WebsiteAd> {
  final CarouselSliderController _carouselController = CarouselSliderController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth, context),
        tablet: _buildUi(kTabletMaxWidth, context),
        mobile: _buildUi(getMobileMaxWidth(context), context),
      ),
    );
  }

  Widget _buildUi(double width, BuildContext context) {
    double carouselContainerHeight = MediaQuery.of(context).size.height *
        (ScreenHelper.isMobile(context) ? 0.7 : .70);
    return Container(
      // height: carouselContainerHeight+40,
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
                autoPlayInterval: Duration(seconds: 5),
                viewportFraction: 1,
                scrollPhysics: AlwaysScrollableScrollPhysics(),
                height: ScreenHelper.isMobile(context) ? carouselContainerHeight : carouselContainerHeight/1.8,
                onPageChanged: (index, reason) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
              ),
              items: List.generate(
                WebsiteItems.length,
                (index) => Builder(
                  builder: (BuildContext context) {
                    return Center(
                      child: LayoutBuilder(
                        builder: (context, constraints) {
                          return Container(
                            constraints: BoxConstraints(
                              maxWidth: width,
                              minWidth: width,
                            ),
                            child: Container(
                              child: Flex(
                                direction: constraints.maxWidth > 720
                                    ? Axis.horizontal
                                    : Axis.vertical,
                                children: [
                                  // Disable expanded on smaller screen to avoid Render errors by setting flex to 0
                                  Expanded(
                                    flex: constraints.maxWidth > 720.0 ? 1 : 0,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          WebsiteItems[index].workName,
                                          style: GoogleFonts.oswald(
                                            color: kPrimaryColor,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 15.0,
                                        ),
                                        Text(
                                          WebsiteItems[index].workBio,
                                          style: GoogleFonts.oswald(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w900,
                                            height: 1.3,
                                            fontSize: 35.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Text(
                                          WebsiteItems[index].workDescription,
                                          style: TextStyle(
                                            color: kCaptionColor,
                                            height: 1.5,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25.0,
                                        ),
                                        Row(
                                          children: [
                                            MouseRegion(
                                              cursor: SystemMouseCursors.click,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  color: kPrimaryColor,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                ),
                                                height: 48.0,
                                                padding: EdgeInsets.symmetric(
                                                  horizontal:
                                                      ScreenHelper.isMobile(
                                                              context)
                                                          ? 12
                                                          : 28.0,
                                                ),
                                                child: TextButton(
                                                  onPressed: () {},
                                                  child: Center(
                                                    child: Text(
                                                      "EXPLORE MORE",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 13.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            MouseRegion(
                                              cursor: SystemMouseCursors.click,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  border: Border.all(
                                                    color: kPrimaryColor,
                                                  ),
                                                ),
                                                height: 48.0,
                                                padding: EdgeInsets.symmetric(
                                                    horizontal:
                                                        ScreenHelper.isMobile(
                                                                context)
                                                            ? 12
                                                            : 28.0),
                                                child: TextButton(
                                                  onPressed: () => _carouselController.animateToPage(index+1),
                                                  child: Center(
                                                    child: Text(
                                                      "NEXT APP",
                                                      style: TextStyle(
                                                        color: kPrimaryColor,
                                                        fontSize: 13.0,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 70.0,
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 25.0,
                                  ),
                                  Expanded(
                                    flex: constraints.maxWidth > 720.0 ? 1 : 0,
                                    child: Image.asset(
                                      WebsiteItems[index].imagePath,
                                      // Set width for image on smaller screen
                                      width: constraints.maxWidth > 720.0
                                          ? null
                                          : 350.0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
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
            children: List.generate(WebsiteItems.length, (index) {
              const int visibleCount = 3;
              int halfWindow = visibleCount ~/ 2;

              int start = (_currentIndex - halfWindow).clamp(0, WebsiteItems.length - visibleCount);
              int end = (start + visibleCount).clamp(0, WebsiteItems.length);

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
        ],
      ),
    );
  }

  final List<WorksCarouselItemModel> WebsiteItems = [
    WorksCarouselItemModel(
      imagePath: "assets/nawaWebsite.png",
      workName: "Nawa WEBSITE",
      workBio: "EVOLVING NAGA\nRESORT WEBSITE",
      workDescription:
          "This is a random text about the project, I should have used the regular lorem ipsum text, but I am too lazy to search for that. This should be long enough.",
    ),
    WorksCarouselItemModel(
      imagePath: "assets/nawaWebsite.png",
      workName: "Nawa WEBSITE_02",
      workBio: "EVOLVING NAGA\nRESORT WEBSITE",
      workDescription:
      "This is a random text about the project, I should have used the regular lorem ipsum text, but I am too lazy to search for that. This should be long enough.",
    ),
    WorksCarouselItemModel(
      imagePath: "assets/nawaWebsite.png",
      workName: "Nawa WEBSITE_03",
      workBio: "EVOLVING NAGA\nRESORT WEBSITE",
      workDescription:
      "This is a random text about the project, I should have used the regular lorem ipsum text, but I am too lazy to search for that. This should be long enough.",
    ),
    WorksCarouselItemModel(
      imagePath: "assets/nawaWebsite.png",
      workName: "Nawa WEBSITE_04",
      workBio: "EVOLVING NAGA\nRESORT WEBSITE",
      workDescription:
      "This is a random text about the project, I should have used the regular lorem ipsum text, but I am too lazy to search for that. This should be long enough.",
    ),
    WorksCarouselItemModel(
      imagePath: "assets/nawaWebsite.png",
      workName: "Nawa WEBSITE_05",
      workBio: "EVOLVING NAGA\nRESORT WEBSITE",
      workDescription:
      "This is a random text about the project, I should have used the regular lorem ipsum text, but I am too lazy to search for that. This should be long enough.",
    ),
    WorksCarouselItemModel(
      imagePath: "assets/nawaWebsite.png",
      workName: "Nawa WEBSITE_06",
      workBio: "EVOLVING NAGA\nRESORT WEBSITE",
      workDescription:
      "This is a random text about the project, I should have used the regular lorem ipsum text, but I am too lazy to search for that. This should be long enough.",
    ),
  ];
}
