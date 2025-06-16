import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_portfolio/models/design_process.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';

final List<DesignProcess> designProcesses = [
  DesignProcess(
    title: "RESEARCH",
    imagePath: "assets/search.svg",
    subtitle:
        "Understanding user needs, market trends, and defining the problem.",
  ),
  DesignProcess(
    title: "DESIGN",
    imagePath: "assets/design.svg",
    subtitle: "Creating wireframes, UI/UX prototypes, and visual concepts.",
  ),
  DesignProcess(
    title: "DEVELOP",
    imagePath: "assets/coding.svg",
    subtitle: "Implementing responsive and functional interfaces using code.",
  ),
  DesignProcess(
    title: "WRITE",
    imagePath: "assets/write.svg",
    subtitle: "Crafting content, documentation, and meaningful copy.",
  ),
  DesignProcess(
    title: "PROMOTE",
    imagePath: "assets/megaphone.svg",
    subtitle: "Marketing the product, building awareness, and acquiring users.",
  ),
  DesignProcess(
    title: "DEPLOY",
    imagePath: "assets/deploy.svg",
    subtitle:
        "Launching the product on app stores or web with stability checks.",
  ),
  // DesignProcess(
  //   title: "DESIGN",
  //   imagePath: "assets/design.png",
  //   subtitle:
  //   "A full stack allround designer thay may or may not include a guide for specific creative",
  // ),
  // DesignProcess(
  //   title: "DEVELOP",
  //   imagePath: "assets/develop.png",
  //   subtitle:
  //   "A full stack allround developer thay may or may not include a guide for specific creative",
  // ),
  // DesignProcess(
  //   title: "WRITE",
  //   imagePath: "assets/write.png",
  //   subtitle:
  //   "A full stack allround writer thay may or may not include a guide for specific creative",
  // ),
  // DesignProcess(
  //   title: "PROMOTE",
  //   imagePath: "assets/promote.png",
  //   subtitle:
  //   "A full stack allround promoter thay may or may not include a guide for specific creative",
  // ),
];

class CvSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ScreenHelper(
        desktop: _buildUi(context, kDesktopMaxWidth),
        tablet: _buildUi(context, kTabletMaxWidth),
        mobile: _buildUi(context, getMobileMaxWidth(context)),
      ),
    );
  }

  Widget _buildUi(BuildContext context, double width) {
    // we need the context to get maxWidth before the constraints below
    return Container(
      alignment: Alignment.center,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: width,
          minWidth: width,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "BETTER DESIGN,\nBETTER EXPERIENCES",
                  style: GoogleFonts.ibmPlexSansArabic(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    height: 1.8,
                    fontSize: 18.0,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      "DOWNLOAD CV",
                      style: GoogleFonts.ibmPlexSansArabic(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w900,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              child: LayoutBuilder(
                builder: (_context, constraints) {
                  return ResponsiveGridView.builder(
                    padding: EdgeInsets.all(0.0),
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    alignment: Alignment.topCenter,
                    gridDelegate: ResponsiveGridDelegate(
                      mainAxisSpacing: 0,
                      crossAxisSpacing: 20.0,
                      maxCrossAxisExtent: ScreenHelper.isMobile(context)
                          ? constraints.maxWidth / 2.0
                          : ScreenHelper.isTablet(context)
                              ? constraints.maxWidth / 3.0
                              // : 179.0,
                              : constraints.maxWidth / 3.0,
                      // Hack to adjust child height
                      childAspectRatio: ScreenHelper.isMobile(context)
                          ? MediaQuery.of(context).size.aspectRatio * 2.5
                          : ScreenHelper.isDesktop(context)
                              ? MediaQuery.of(context).size.aspectRatio * 1.5
                              : MediaQuery.of(context).size.aspectRatio * 2,
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  designProcesses[index].imagePath!,
                                  width: 28.0,
                                  color: kPrimaryColor,
                                ),
                                SizedBox(
                                  width: 15.0,
                                ),
                                Text(
                                  designProcesses[index].title!,
                                  style: GoogleFonts.ibmPlexSansArabic(
                                    fontSize: 19.0,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              designProcesses[index].subtitle!,
                              // textAlign: TextAlign.center,
                              style: GoogleFonts.ibmPlexSansArabic(
                                color: kCaptionColor,
                                height: 1.5,
                                fontSize: 13.0,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    itemCount: designProcesses.length,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
