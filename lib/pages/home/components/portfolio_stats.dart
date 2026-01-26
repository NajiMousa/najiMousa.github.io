import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/models/stat.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';

import '../../../l10n/app_localizations.dart';

 List<Stat> stats = [];

class PortfolioStats extends StatelessWidget {
  const PortfolioStats({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    stats = [
      Stat(count: "43", text: AppLocalizations.of(context)!.clients),
      Stat(count: "68+", text: AppLocalizations.of(context)!.projects),
      Stat(count: "4", text: AppLocalizations.of(context)!.awards),
      Stat(count: "5", text: AppLocalizations.of(context)!.yearsExperience),
      // Stat(count: "43", text: "Clients"),
      // Stat(count: "68+", text: "Projects"),
      // Stat(count: "12", text: "Awards"),
      // Stat(count: "5", text: "Years\nExperience"),
    ];
    return Container(
      padding: EdgeInsets.symmetric(vertical: 50, horizontal: 20),
      color: kAccentColor,
      width: double.infinity,
      alignment: Alignment.center,
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth, context),
        tablet: _buildUi(kTabletMaxWidth, context),
        mobile: _buildUi(getMobileMaxWidth(context), context),
      ),
    );
  }

  Widget _buildUi(double width, BuildContext context) {
    return Container(
      child: Container(
        constraints: BoxConstraints(
          maxWidth: width,
          minWidth: width,
        ),
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraint) {
            return Wrap(
              spacing: 20.0,
              runSpacing: 20.0,
              children: stats.map((stat) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 15.0),
                  // Just use the helper here really
                  width: ScreenHelper.isMobile(context)
                      ? constraint.maxWidth / 2.0 - 20
                      : (constraint.maxWidth / 4.0 - 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        stat.count!,
                        style: GoogleFonts.ibmPlexSansArabic(
                          fontWeight: FontWeight.w700,
                          fontSize: 36.0,
                          color: kPrimaryColor,
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        stat.text!,
                        style: GoogleFonts.ibmPlexSansArabic(
                          fontSize: 16.0,
                          color: kBackgroundColor,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),
                );
              }).toList(),
            );
          },
        ),
      ),
    );
  }
}
