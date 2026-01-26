import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/models/footer_item.dart';
import 'package:web_portfolio/pages/home/components/privacy_policy_page.dart';
import 'package:web_portfolio/pages/home/components/terms_conditions_page.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';

import '../../../l10n/app_localizations.dart';

class Footer extends StatelessWidget {
  List<FooterItem> footerItems = [];

  @override
  Widget build(BuildContext context) {
    footerItems = [
      FooterItem(
        iconPath: "assets/mappin.png",
        title: AppLocalizations.of(context)!.address,
        text1: AppLocalizations.of(context)!.gazaCity,
        text2: AppLocalizations.of(context)!.palestineState,
        actionType: FooterActionType.address,
      ),
      FooterItem(
        iconPath: "assets/phone.png",
        title: AppLocalizations.of(context)!.phone,
        text1: "+970595192140",
        text2: "+970594152147",
        actionType: FooterActionType.phone,
      ),
      FooterItem(
        iconPath: "assets/email.png",
        title: AppLocalizations.of(context)!.email,
        text1: "ana.naji.1996@gmail.com",
        text2: "naji.work@gmail.com",
        actionType: FooterActionType.email,
      ),
      FooterItem(
        iconPath: "assets/whatsapp.png",
        title: AppLocalizations.of(context)!.whatsapp,
        text1: "+972595192140",
        text2: "+970594152147",
        actionType: FooterActionType.whatsapp,
      ),
    ];
    return Container(
      color: kAccentColor.withOpacity(0.05),
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth, context),
        tablet: _buildUi(kTabletMaxWidth, context),
        mobile: _buildUi(getMobileMaxWidth(context), context),
      ),
    );
  }

  Future<void> _handleFooterTap(FooterItem item) async {
    Uri uri;

    switch (item.actionType) {
      case FooterActionType.phone:
        uri = Uri.parse('tel:${item.text1}');
        break;

      case FooterActionType.email:
        uri = Uri(
          scheme: 'mailto',
          path: item.text1,
        );
        break;

      case FooterActionType.whatsapp:
        uri = Uri.parse(
          'https://wa.me/${item.text1!.replaceAll('+', '')}',
        );
        break;

      case FooterActionType.address:
        uri = Uri.parse(
          'https://www.google.com/maps/search/?api=1&query=Gaza',
        );
        break;
    }

    await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    );
  }

  Widget _buildUi(double width, BuildContext context) {
    return Center(
      child: Container(
        constraints: BoxConstraints(
          maxWidth: width,
          minWidth: width,
        ),
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 50.0),
                  child: Center(
                    child: Wrap(
                      spacing: 20.0,
                      runSpacing: 20.0,
                      children: footerItems
                          .map(
                            (footerItem) => GestureDetector(
                              onTap: () => _handleFooterTap(footerItem),
                              child: MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: Container(
                                  height: 120.0,
                                  width: ScreenHelper.isMobile(context)
                                      ? constraints.maxWidth / 2.0 - 20.0
                                      : constraints.maxWidth / 4.0 - 20.0,
                                  child: Container(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Image.asset(
                                              footerItem.iconPath!,
                                              width: 25.0,
                                              color: kPrimaryColor,
                                            ),
                                            SizedBox(
                                              width: 15.0,
                                            ),
                                            Text(
                                              footerItem.title!,
                                              style:
                                                  GoogleFonts.ibmPlexSansArabic(
                                                fontSize: 18.0,
                                                fontWeight: FontWeight.w700,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15.0,
                                        ),
                                        RichText(
                                          textAlign: TextAlign.start,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "${footerItem.text1}\n",
                                                style: GoogleFonts
                                                    .ibmPlexSansArabic(
                                                  color: kCaptionColor,
                                                  height: 1.8,
                                                ),
                                              ),
                                              TextSpan(
                                                text: "${footerItem.text2}\n",
                                                style: GoogleFonts
                                                    .ibmPlexSansArabic(
                                                  color: kCaptionColor,
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),

                      //     .map(
                      //       (footerItem) => Container(
                      //     height: 120.0,
                      //     width: ScreenHelper.isMobile(context)
                      //         ? constraints.maxWidth / 2.0 - 20.0
                      //         : constraints.maxWidth / 4.0 - 20.0,
                      //     child: Container(
                      //       child: Column(
                      //         crossAxisAlignment: CrossAxisAlignment.start,
                      //         children: [
                      //           Row(
                      //             mainAxisAlignment: MainAxisAlignment.start,
                      //             children: [
                      //               Image.asset(
                      //                 footerItem.iconPath!,
                      //                 width: 25.0,
                      //                 color: kPrimaryColor,
                      //               ),
                      //               SizedBox(
                      //                 width: 15.0,
                      //               ),
                      //               Text(
                      //                 footerItem.title!,
                      //                 style: GoogleFonts.ibmPlexSansArabic(
                      //                   fontSize: 18.0,
                      //                   fontWeight: FontWeight.w700,
                      //                   color: Colors.white,
                      //                 ),
                      //               ),
                      //             ],
                      //           ),
                      //           SizedBox(
                      //             height: 15.0,
                      //           ),
                      //           RichText(
                      //             textAlign: TextAlign.start,
                      //             text: TextSpan(
                      //               children: [
                      //                 TextSpan(
                      //                   text: "${footerItem.text1}\n",
                      //                   style: GoogleFonts.ibmPlexSansArabic(
                      //                     color: kCaptionColor,
                      //                     height: 1.8,
                      //                   ),
                      //                 ),
                      //                 TextSpan(
                      //                   text: "${footerItem.text2}\n",
                      //                   style: GoogleFonts.ibmPlexSansArabic(
                      //                     color: kCaptionColor,
                      //                   ),
                      //                 )
                      //               ],
                      //             ),
                      //           )
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // )
                      //     .toList(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Flex(
                  direction: ScreenHelper.isMobile(context)
                      ? Axis.vertical
                      : Axis.horizontal,
                  mainAxisAlignment: ScreenHelper.isMobile(context)
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        // "Copyright (c) 2020-2025 Naji At Abu-Mousa. All rights Reserved",
                        AppLocalizations.of(context)!.copyright,
                        style: GoogleFonts.ibmPlexSansArabic(
                          color: kCaptionColor,
                        ),
                      ),
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     GestureDetector(
                    //       onTap: () {},
                    //       child: MouseRegion(
                    //         cursor: SystemMouseCursors.click,
                    //         child: Text(
                    //           // "Privacy Policy",
                    //           AppLocalizations.of(context)!.privacyPolicy,
                    //           style: GoogleFonts.ibmPlexSansArabic(
                    //             color: kCaptionColor,
                    //           ),
                    //         ),
                    //       ),
                    //     ),
                    //     Container(
                    //       padding: EdgeInsets.symmetric(horizontal: 8.0),
                    //       child: Text(
                    //         "|",
                    //         style: GoogleFonts.ibmPlexSansArabic(
                    //           color: kCaptionColor,
                    //         ),
                    //       ),
                    //     ),
                    //     GestureDetector(
                    //       onTap: () {},
                    //       child: MouseRegion(
                    //         cursor: SystemMouseCursors.click,
                    //         child: Text(
                    //           // "Terms & Conditions",
                    //           AppLocalizations.of(context)!.termsConditions,
                    //           style: GoogleFonts.ibmPlexSansArabic(
                    //             color: kCaptionColor,
                    //           ),
                    //         ),
                    //       ),
                    //     )
                    //   ],
                    // )
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const PrivacyPolicyPage(),
                              ),
                            );
                          },
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Text(
                              AppLocalizations.of(context)!.privacyPolicy,
                              style: GoogleFonts.ibmPlexSansArabic(
                                color: kCaptionColor,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "|",
                            style: GoogleFonts.ibmPlexSansArabic(
                              color: kCaptionColor,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const TermsConditionsPage(),
                              ),
                            );
                          },
                          child: MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Text(
                              AppLocalizations.of(context)!.termsConditions,
                              style: GoogleFonts.ibmPlexSansArabic(
                                color: kCaptionColor,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
