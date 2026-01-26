import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/models/education.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';

import '../../../l10n/app_localizations.dart';

 List<Education> educationList = [];

class EducationSection extends StatelessWidget {
  const EducationSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    educationList = [
      Education(
        description:
        // "Learned advanced business strategies, leadership skills, and project management techniques to enhance organizational growth and personal career development.",
        AppLocalizations.of(context)!.mbaDescription,
        // linkName: "Master in Business Administration",
        linkName: AppLocalizations.of(context)!.masterInBusinessAdministration,
        // period: "PRESENT - 2022",
        period: AppLocalizations.of(context)!.mbaPeriod,
      ),
      Education(
        description:
        // "Worked on Flutter app development and UX design, mastering widget creation, state management, user interface prototyping, and usability testing.",
        AppLocalizations.of(context)!.flutterDevelopmentUxDesignDescription,
        // linkName: "Flutter Development & UX Design",
        linkName: AppLocalizations.of(context)!.flutterDevelopmentUxDesign,
        // period: "2020 - 2022",
        period: AppLocalizations.of(context)!.flutterDevelopmentUxDesignPeriod,
      ),
      Education(
        description:
        // "Studied software development methodologies, data structures, algorithms, and modern programming languages with hands-on experience in application design.",
        AppLocalizations.of(context)!.softwareEngineeringDescription,
        // linkName: "Software Engineering",
        linkName: AppLocalizations.of(context)!.softwareEngineering,
        // period: "2016 - 2020",
        period: AppLocalizations.of(context)!.softwareEngineeringPeriod,
      ),
      Education(
        description:
        // "Focused on mechanical systems, electronics, and automation technologies, gaining skills in robotics, control systems, and embedded programming.",
        AppLocalizations.of(context)!.mechatronicsEngineeringDescription,
        // linkName: "Mechatronics Engineering",
        linkName: AppLocalizations.of(context)!.mechatronicsEngineering,
        // period: "2014 - 2016",
        period: AppLocalizations.of(context)!.mechatronicsEngineeringPeriod,
      ),

    ];
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth,context),
        tablet: _buildUi(kTabletMaxWidth,context),
        mobile: _buildUi(getMobileMaxWidth(context),context),
      ),
    );
  }

  Widget _buildUi(double width,BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: width,
          minWidth: width,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  // "EDUCATION",
                  // "🎓 MY LEARNING JOURNEY",
                  AppLocalizations.of(context)!.myLearningJourney,
                  style: GoogleFonts.ibmPlexSansArabic(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 30.0,
                    height: 1.3,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Text(
                      // "DOWNLOAD CV",
                      AppLocalizations.of(context)!.downloadCv,
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
              height: 18.0,
            ),
            Wrap(
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 600.0),
                  child: Text(
                    // "A full stack all round developer that does all the job he needs to do at all times. Actually this is a false statement",
                    // "Education has been the foundation 📚, but the real growth came from "
                    //     "building, breaking, and rebuilding 💡. "
                    //     "Every lesson shaped the way I create today 🚀.",
                    AppLocalizations.of(context)!.myLearningJourneyDescription,
                    style: GoogleFonts.ibmPlexSansArabic(
                      color: Colors.white,
                      height: 1.5,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  child: Wrap(
                    spacing: 20.0,
                    runSpacing: 20.0,
                    children: educationList
                        .map(
                          (education) => Container(
                            width: constraints.maxWidth / 2.0 - 20.0,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  education.period!,
                                  style: GoogleFonts.ibmPlexSansArabic(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  education.description!,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.ibmPlexSansArabic(
                                    color: kCaptionColor,
                                    height: 1.5,
                                  ),
                                ),
                                SizedBox(
                                  height: 16.0,
                                ),
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: GestureDetector(
                                    onTap: () {},
                                    child: Text(
                                      education.linkName!,
                                      style: GoogleFonts.ibmPlexSansArabic(
                                        fontSize: 16,
                                        color: kPrimaryColor,
                                        fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 40.0,
                                )
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
