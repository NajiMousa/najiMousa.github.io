import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:particles_fly/particles_fly.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:web_portfolio/l10n/app_localizations.dart';

import '../../../utils/constants.dart';
import '../../../utils/screen_helper.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({super.key});

  @override
  State<AboutMe> createState() => _AboutMeState();
}

class _AboutMeState extends State<AboutMe> {
  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.appTitle,
            style: GoogleFonts.ibmPlexSansArabic(
                color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: kBackgroundColor.withOpacity(0.8),
        elevation: 0,
      ),
      body: Stack(
        children: [
          ParticlesFly(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            connectDots: true,
            numberOfParticles: 30,
            lineColor: kAccentColor.withOpacity(0.1),
            particleColor: kPrimaryColor,
          ),
          ScreenHelper(
            desktop: _buildUi(kDesktopMaxWidth, context),
            tablet: _buildUi(kTabletMaxWidth, context),
            mobile: _buildUi(getMobileMaxWidth(context), context),
          ),
        ],
      ),
    );
  }

  Widget _buildUi(double width, BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final locale = Localizations.localeOf(context);
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildProfileHeader(l10n, locale.languageCode),
              const SizedBox(height: 35),
              _buildSection(l10n, l10n.storyTitle, [
                TextSpan(text: " ${l10n.storyStart} "),
                TextSpan(
                    text: " {${l10n.quranVerse1}}",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber.shade400)),
                TextSpan(text: " ${l10n.storyMiddle1} \n\n"),
                TextSpan(text: " ${l10n.storyMiddlee} "),
                TextSpan(text: " ${l10n.journey} "),
                TextSpan(
                    text: " ${l10n.degrees} ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kSecondaryColor)),
                TextSpan(text: " ${l10n.journeyMiddle} "),
                TextSpan(
                    text: " ${l10n.phd} ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kSecondaryColor)),
                TextSpan(text: " ${l10n.journeyEnd} \n\n"),
                TextSpan(
                    text: " ${l10n.mechatronics} ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kSecondaryColor)),
                TextSpan(text: " ${l10n.techJourneyMiddle} "),
                TextSpan(
                    text: " ${l10n.software} ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kSecondaryColor)),
                TextSpan(text: " ${l10n.techJourneyEnd} "),
                TextSpan(text: " ${l10n.freelance} "),
                TextSpan(
                    text: " ${l10n.freelanceWorld} ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kSecondaryColor)),
                TextSpan(text: " ${l10n.freelanceMiddle} "),
                TextSpan(
                    text: " ${l10n.skills} ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kSecondaryColor)),
                TextSpan(text: " ${l10n.freelanceEnd} \n\n"),
                TextSpan(text: " ${l10n.experience} "),
                TextSpan(
                    text: " ${l10n.google} ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kSecondaryColor)),
                TextSpan(text: " ${l10n.experienceMiddle} "),
                TextSpan(
                    text: " ${l10n.training} ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kSecondaryColor)),
                TextSpan(text: " ${l10n.experienceEnd} \n\n"),
                TextSpan(text: " ${l10n.phdGoal} "),
                TextSpan(
                    text: " ${l10n.phdDegree} ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kSecondaryColor)),
                TextSpan(text: " ${l10n.phdGoalMiddle} "),
                TextSpan(
                    text: " {${l10n.quranVerse2}} ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber.shade400)),
                TextSpan(text: " ${l10n.phdGoalEnd} "),
              ]),
              const SizedBox(height: 35),
              _buildSection(l10n, l10n.section1Title, [
                TextSpan(text: " ${l10n.section1} "),
                TextSpan(
                    text: " ${l10n.section1Highlight1} ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kSecondaryColor)),
                TextSpan(text: " ${l10n.section1End} "),
              ]),
              const SizedBox(height: 35),
              _buildSection(l10n, l10n.section2Title, [
                TextSpan(text: " ${l10n.section2} "),
                TextSpan(
                    text: " ${l10n.section2Highlight1} ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kSecondaryColor)),
                TextSpan(text: " ${l10n.section2End} "),
              ]),
              const SizedBox(height: 35),
              _buildSection(l10n, l10n.section3Title, [
                TextSpan(text: " ${l10n.section3} "),
                TextSpan(
                    text: " ${l10n.section3Highlight1} ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kSecondaryColor)),
                TextSpan(text: " ${l10n.section3End} "),
              ]),
              const SizedBox(height: 35),
              _buildSection(l10n, l10n.section4Title, [
                TextSpan(text: " ${l10n.section4} "),
                TextSpan(
                    text: " ${l10n.section4Highlight1} ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kSecondaryColor,
                        fontSize: 18)),
                TextSpan(text: " ${l10n.section4Middle} "),
                TextSpan(
                    text: " ${l10n.section4Highlight2} ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kSecondaryColor)),
                TextSpan(text: " ${l10n.section4Middle2} "),
                TextSpan(
                    text: " ${l10n.section4Highlight3} ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kSecondaryColor)),
                TextSpan(text: " ${l10n.section4Middle3} "),
                TextSpan(text: " ${l10n.excellence} "),
                TextSpan(
                    text: " ${l10n.excellenceHighlight1} ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kSecondaryColor)),
                TextSpan(text: " ${l10n.excellenceMiddle} "),
                TextSpan(
                    text: " ${l10n.excellenceHighlight2} ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: kSecondaryColor)),
                TextSpan(text: " ${l10n.excellenceEnd} "),
              ]),
              // const SizedBox(height: 35),
              // _buildSection(l10n, '', [
              //   TextSpan(text: " ${l10n.excellence} "),
              //   TextSpan(text: " ${l10n.excellenceHighlight1} ", style: TextStyle(fontWeight: FontWeight.bold, color: kSecondaryColor)),
              //   TextSpan(text: " ${l10n.excellenceMiddle} "),
              //   TextSpan(text: " ${l10n.excellenceHighlight2} ", style: TextStyle(fontWeight: FontWeight.bold, color: kSecondaryColor)),
              //   TextSpan(text: " ${l10n.excellenceEnd} "),
              // ]),
              const SizedBox(height: 35),
              _buildSection(l10n, l10n.conclusionTitle, [
                TextSpan(text: " ${l10n.conclusionStart} "),
                TextSpan(
                    text: " ${l10n.umar} ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: kSecondaryColor,
                        fontSize: 18)),
                TextSpan(text: " ${l10n.conclusionMiddle} "),
                TextSpan(
                    text: " ${l10n.mohammad} ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber.shade700,
                        fontSize: 18)),
                TextSpan(text: " ${l10n.conclusionMiddle2} "),
                TextSpan(
                    text: " ${l10n.verse} ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.amber.shade700,
                        fontSize: 20)),
                TextSpan(text: " ${l10n.conclusionEnd} "),
              ]),
              const SizedBox(height: 50),
              _buildSocialLinks(),
              const SizedBox(height: 70),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileHeader(AppLocalizations l10n, String lang) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 70),
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: kPrimaryColor, width: 2),
              boxShadow: [
                BoxShadow(
                    color: kPrimaryColor.withOpacity(0.3),
                    blurRadius: 20,
                    spreadRadius: 2)
              ]),
          child: const CircleAvatar(
            radius: 150,
            backgroundImage: AssetImage("assets/myPhoto01.png"),
          ),
        ),
        const SizedBox(height: 44),
        Text(
          l10n.greeting,
          textAlign: TextAlign.center,
          style: GoogleFonts.ibmPlexSansArabic(
            fontSize: 63,
            fontWeight: FontWeight.bold,
            color: Colors.amber.shade700,
            height: 1.4,
          ),
        ),
        const SizedBox(height: 24),
        RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            style: GoogleFonts.ibmPlexSansArabic(
              fontSize: 16,
              color: kCaptionColor,
              height: 1.8,
            ),
            children: [
              TextSpan(
                text: "",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                  fontSize: 26,
                ),
              ),
              TextSpan(
                text: l10n.quote1,
                style: GoogleFonts.ibmPlexSansArabic(
                  fontSize: lang == 'ar' ? 32 : 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  height: lang == 'ar' ? 1.4 : 1,
                ),
              ),
              TextSpan(
                text: l10n.quote2,
                style: GoogleFonts.ibmPlexSansArabic(
                  fontSize: lang == 'ar' ? 32 : 26,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                  height: lang == 'ar' ? 1.4 : 1,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 36),
        RichText(
          textAlign: TextAlign.justify,
          text: TextSpan(
            style: GoogleFonts.ibmPlexSansArabic(
              fontSize: 16,
              color: kCaptionColor,
              height: 1.8,
            ),
            children: [
              TextSpan(
                text: "${l10n.title}\n",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                  fontSize: 26,
                ),
              ),
              TextSpan(text: l10n.birth),
              TextSpan(
                  text: " ${l10n.palestinianDream} ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kSecondaryColor)),
              TextSpan(text: " ${l10n.birthEnd} \n\n"),
              TextSpan(text: l10n.identityTitle),
              TextSpan(
                  text: " ${l10n.palestine} ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                      fontSize: 18)),
              TextSpan(
                  text: " ${l10n.identity} ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kSecondaryColor)),
              TextSpan(text: " ${l10n.identityEnd} \n"),
              TextSpan(
                  text: l10n.gaza,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kSecondaryColor)),
              TextSpan(text: " ${l10n.memory} "),
              TextSpan(
                  text: " ${l10n.beerSheba} ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kSecondaryColor)),
              TextSpan(text: " ${l10n.memoryEnd} \n\n"),
              TextSpan(
                  text: l10n.survivor,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                      fontSize: 18)),
              TextSpan(text: " ${l10n.survivorStory} "),
              TextSpan(
                  text: " ${l10n.jerusalem} \n",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kSecondaryColor)),
              TextSpan(text: l10n.mission),
              TextSpan(
                  text: " ${l10n.engineering} ",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kPrimaryColor)),
              TextSpan(text: " ${l10n.missionMiddle} "),
              TextSpan(
                  text: " ${l10n.code} \n",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: kSecondaryColor)),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSection(
      AppLocalizations l10n, String title, List<TextSpan> children) {
    return RichText(
      textAlign: TextAlign.justify,
      // textDirection: TextDirection.rtl,
      text: TextSpan(
        style: GoogleFonts.ibmPlexSansArabic(
          fontSize: 16,
          color: kCaptionColor,
          height: 1.8,
        ),
        children: [
          TextSpan(
            text: title == "📜 فصـلُ السَّعـي والتمكيـن" ||
                    title == "📜 The Chapter of Striving and Empowerment"
                ? "$title \n"
                : "$title ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
              fontSize: 26,
            ),
          ),
          ...children,
        ],
      ),
    );
  }

  Widget _buildSocialLinks() {
    return Wrap(
      spacing: 16,
      runSpacing: 12,
      alignment: WrapAlignment.center,
      children: [
        _socialButton(FontAwesomeIcons.github, Constants.githubUrl),
        _socialButton(FontAwesomeIcons.linkedin, Constants.linkedinUrl),
        _socialButton(FontAwesomeIcons.behance, Constants.behanceUrl),
        _socialButton(FontAwesomeIcons.upwork, Constants.upWorkUrl),
        _socialButton(FontAwesomeIcons.instagram, Constants.instagramUrl),
        _socialButton(FontAwesomeIcons.facebook, Constants.facebookUrl),
      ],
    );
  }

  Widget _socialButton(IconData icon, String url) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: InkWell(
        onTap: () => _launchURL(url),
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: kAccentColor.withOpacity(0.5), width: 1),
          ),
          child: FaIcon(
            icon,
            color: Colors.white,
            size: 20,
          ),
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}
