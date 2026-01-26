import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/models/skill.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';

import '../../../l10n/app_localizations.dart';

List<Skill> skills = [];

class SkillSection extends StatelessWidget {
  const SkillSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    skills = [
      Skill(
        // skill: "UX Research & User Journey",
        skill: AppLocalizations.of(context)!.uxResearchUserJourney,
        percentage: 80,
      ),
      Skill(
        // skill: "UI Design (Figma || Xd)",
        skill: AppLocalizations.of(context)!.uiDesignFigmaXd,
        percentage: 85,
      ),

      // مهارات Flutter
      Skill(
        // skill: "Flutter & Dart",
        skill: AppLocalizations.of(context)!.flutterAndDart,
        percentage: 88,
      ),
      Skill(
        // skill: "State Management (Provider / Getx)",
        skill: AppLocalizations.of(context)!.stateManagement,
        percentage: 75,
      ),

      // مهارات مشتركة
      Skill(
        // skill: "Responsive & Accessible Design",
        skill: AppLocalizations.of(context)!.responsiveAndAccessibleDesign,
        percentage: 72,
      ),
      Skill(
        // skill: "API Integration",
        skill: AppLocalizations.of(context)!.apiIntegration,
        percentage: 70,
      ),

      // Soft Skills
      Skill(
        // skill: "Problem Solving",
        skill: AppLocalizations.of(context)!.problemSolving,
        percentage: 85,
      ),
      Skill(
        // skill: "Communication & Teamwork",
        skill: AppLocalizations.of(context)!.communicationAndTeamwork,
        percentage: 80,
      ),
      Skill(
        // skill: "Time Management",
        skill: AppLocalizations.of(context)!.timeManagement,
        percentage: 75,
      ),
    ];
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth),
        tablet: _buildUi(kTabletMaxWidth),
        mobile: _buildUi(getMobileMaxWidth(context)),
      ),
    );
  }

  Widget _buildUi(double width) {
    return Center(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            constraints: BoxConstraints(
              maxWidth: width,
              minWidth: width,
            ),
            child: Flex(
              direction: ScreenHelper.isMobile(context)
                  ? Axis.vertical
                  : Axis.horizontal,
              children: [
                Expanded(
                  flex: ScreenHelper.isMobile(context) ? 0 : 2,
                  child: Image.asset(
                    "assets/myPhoto01.png",
                    width: 300.0,
                  ),
                ),
                SizedBox(
                  width: ScreenHelper.isMobile(context) ? 0 : 50.0,
                  height: ScreenHelper.isMobile(context) ? 50.0 : 0,
                ),
                Expanded(
                  flex: ScreenHelper.isMobile(context) ? 0 : 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        // "SKILLS",
                        // "🛠️ MY SKILL TOOLBOX",
                        AppLocalizations.of(context)!.mySkillToolbox,
                        style: GoogleFonts.ibmPlexSansArabic(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 28.0,
                          height: 1.3,
                        ),
                      ),
                      SizedBox(
                        height: 18.0,
                      ),
                      Text(
                        // "Here’s a humble set of skills I’ve gained through real-world experience in UX design and Flutter development, always aiming to grow and create meaningful digital products.",
                        // "Here’s a set of skills I’ve honed through real-world projects 🌍 — "
                        //     "from designing smooth user experiences 🎨 to building functional apps with Flutter 📱. "
                        //     "Always learning, always creating ✨.",
                        AppLocalizations.of(context)!.mySkillToolboxDescription,
                        style: GoogleFonts.ibmPlexSansArabic(
                          color: kCaptionColor,
                          height: 1.5,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Column(
                        children: skills
                            .map(
                              (skill) => Container(
                                margin: EdgeInsets.only(bottom: 15.0),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: skill.percentage!,
                                      child: Container(
                                        padding: EdgeInsets.only(left: 10.0),
                                        alignment: Alignment.centerLeft,
                                        height: 38.0,
                                        child: Text(skill.skill!,style: GoogleFonts.ibmPlexSansArabic(),),
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Expanded(
                                      // remaining (blank part)
                                      flex: 100 - skill.percentage!,
                                      child: Divider(
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.0,
                                    ),
                                    Text(
                                      "${skill.percentage}%",
                                      style: GoogleFonts.ibmPlexSansArabic(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                            .toList(),
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
  }
}
