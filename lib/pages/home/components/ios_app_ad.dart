import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/models/works_carousel_item_model.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';

class IosAppAd extends StatefulWidget {
  @override
  State<IosAppAd> createState() => _IosAppAdState();
}

class _IosAppAdState extends State<IosAppAd> {
  final CarouselSliderController _carouselController = CarouselSliderController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth,context),
        tablet: _buildUi(kTabletMaxWidth,context),
        mobile: _buildUi(getMobileMaxWidth(context),context),
      ),
    );
  }

  Widget _buildUi(double width,BuildContext context) {
    double carouselContainerHeight = MediaQuery.of(context).size.height *
        (ScreenHelper.isMobile(context) ? 1 : .70);
    return Container(
      height: carouselContainerHeight+18,
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
                autoPlayInterval: Duration(seconds: 3),
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
                applicationItems.length,
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
                            child: Flex(
                              direction: constraints.maxWidth > 720
                                  ? Axis.horizontal
                                  : Axis.vertical,
                              children: [
                                // Disable expanded on smaller screen to avoid Render errors by setting flex to 0
                                Expanded(
                                  flex: constraints.maxWidth > 720.0 ? 1 : 0,
                                  child: Image.asset(
                                    applicationItems[index].imagePath,
                                    // Set width for image on smaller screen
                                    width: constraints.maxWidth > 720.0 ? null : 350.0,
                                  ),
                                ),
                                Expanded(
                                  flex: constraints.maxWidth > 720.0 ? 1 : 0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        applicationItems[index].workName,
                                        style: GoogleFonts.ibmPlexSansArabic(
                                          color: kPrimaryColor,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      Text(
                                        applicationItems[index].workBio,
                                        style: GoogleFonts.ibmPlexSansArabic(
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
                                        applicationItems[index].workDescription,
                                      style: GoogleFonts.ibmPlexSansArabic(
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
                                                borderRadius: BorderRadius.circular(8.0),
                                              ),
                                              height: 48.0,
                                              padding: EdgeInsets.symmetric(
                                                horizontal: ScreenHelper.isMobile(context) ? 12 : 28.0,
                                              ),
                                              child: TextButton(
                                                onPressed: () {},
                                                child: Center(
                                                  child: Text(
                                                    "EXPLORE MORE",
                                                    style: GoogleFonts.ibmPlexSansArabic(
                                                      color: Colors.white,
                                                      fontSize: 13.0,
                                                      fontWeight: FontWeight.bold,
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
                                                borderRadius: BorderRadius.circular(8.0),
                                                border: Border.all(
                                                  color: kPrimaryColor,
                                                ),
                                              ),
                                              height: 48.0,
                                              padding: EdgeInsets.symmetric(horizontal: ScreenHelper.isMobile(context) ? 12 : 28.0,),
                                              child: TextButton(
                                                onPressed: () => _carouselController.animateToPage(index+1),
                                                child: Center(
                                                  child: Text(
                                                    "NEXT APP",
                                                    style: GoogleFonts.ibmPlexSansArabic(
                                                      color: kPrimaryColor,
                                                      fontSize: 13.0,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
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
          // SizedBox(height: 12),
          Wrap(
            alignment: WrapAlignment.center,
            crossAxisAlignment: WrapCrossAlignment.center,
            spacing: 8.0,
            children: List.generate(applicationItems.length, (index) {
              const int visibleCount = 3;
              int halfWindow = visibleCount ~/ 2;

              int start = (_currentIndex - halfWindow).clamp(0, applicationItems.length - visibleCount);
              int end = (start + visibleCount).clamp(0, applicationItems.length);

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

  final List<WorksCarouselItemModel> applicationItems = [
    WorksCarouselItemModel(
      imagePath: "assets/spaceApp.png",
      workName: "SPACE APP",
      workBio: "FIRST UNIVERSAL\nPalestinian Martyrs App 🇵🇸",
      workDescription: "This app is the first global platform of its kind to commemorate Palestinian martyrs through a digital archive that preserves their faces, biographies, and sacrifices, free from the censorship of algorithms and the limits of platforms.",
    ),
    WorksCarouselItemModel(
      imagePath: "assets/spaceApp.png",
      workName: "SPACE APP_02",
      workBio: "FIRST UNIVERSAL\nPalestinian Martyrs App 🇵🇸",
      workDescription: "This app is the first global platform of its kind to commemorate Palestinian martyrs through a digital archive that preserves their faces, biographies, and sacrifices, free from the censorship of algorithms and the limits of platforms.",
    ),
    WorksCarouselItemModel(
      imagePath: "assets/spaceApp.png",
      workName: "SPACE APP_03",
      workBio: "FIRST UNIVERSAL\nPalestinian Martyrs App 🇵🇸",
      workDescription: "This app is the first global platform of its kind to commemorate Palestinian martyrs through a digital archive that preserves their faces, biographies, and sacrifices, free from the censorship of algorithms and the limits of platforms.",
    ),
    WorksCarouselItemModel(
      imagePath: "assets/spaceApp.png",
      workName: "SPACE APP_04",
      workBio: "FIRST UNIVERSAL\nPalestinian Martyrs App 🇵🇸",
      workDescription: "This app is the first global platform of its kind to commemorate Palestinian martyrs through a digital archive that preserves their faces, biographies, and sacrifices, free from the censorship of algorithms and the limits of platforms.",
    ),
    WorksCarouselItemModel(
      imagePath: "assets/spaceApp.png",
      workName: "SPACE APP_05",
      workBio: "FIRST UNIVERSAL\nPalestinian Martyrs App 🇵🇸",
      workDescription: "This app is the first global platform of its kind to commemorate Palestinian martyrs through a digital archive that preserves their faces, biographies, and sacrifices, free from the censorship of algorithms and the limits of platforms.",
    ),
    WorksCarouselItemModel(
      imagePath: "assets/spaceApp.png",
      workName: "SPACE APP_06",
      workBio: "FIRST UNIVERSAL\nPalestinian Martyrs App 🇵🇸",
      workDescription: "This app is the first global platform of its kind to commemorate Palestinian martyrs through a digital archive that preserves their faces, biographies, and sacrifices, free from the censorship of algorithms and the limits of platforms.",
    ),
    WorksCarouselItemModel(
      imagePath: "assets/spaceApp.png",
      workName: "SPACE APP_07",
      workBio: "FIRST UNIVERSAL\nPalestinian Martyrs App 🇵🇸",
      workDescription: "This app is the first global platform of its kind to commemorate Palestinian martyrs through a digital archive that preserves their faces, biographies, and sacrifices, free from the censorship of algorithms and the limits of platforms.",
    ),
  ];
}
