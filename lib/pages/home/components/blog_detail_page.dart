import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:particles_fly/particles_fly.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/l10n/app_localizations.dart';

import '../../../utils/constants.dart';
import '../../../utils/screen_helper.dart';

class BlogDetailPage extends StatelessWidget {
  final String imageUrl;
  final String category;
  final String title;
  final String date;
  final String content;
  final String summary;

  const BlogDetailPage({
    Key? key,
    required this.imageUrl,
    required this.category,
    required this.title,
    required this.date,
    required this.content,
    required this.summary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title,style: GoogleFonts.ibmPlexSansArabic(),),
        backgroundColor: Colors.black,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric( horizontal: 20),
        color: kBackgroundColor,
        alignment: Alignment.center,
        child: ScreenHelper(
          desktop: _buildUi(kDesktopMaxWidth, context),
          tablet: _buildUi(kTabletMaxWidth, context),
          mobile: _buildUi(getMobileMaxWidth(context), context),
        ),
      ),
    );
  }
  Widget _buildUi(double width, BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        ParticlesFly(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          connectDots: true,
          numberOfParticles: 30,
          lineColor: kAccentColor.withOpacity(0.05),
          particleColor: kPrimaryColor,
        ),
        Container(
          constraints: BoxConstraints(
            maxWidth: width,
            minWidth: width,
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // الفئة
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      category.toUpperCase(),
                      style: GoogleFonts.ibmPlexSansArabic(
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),

                  // العنوان
                  Text(
                    title,
                    style: GoogleFonts.ibmPlexSansArabic(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.3,
                    ),
                  ),

                  const SizedBox(height: 8),

                  // التاريخ + مدة القراءة
                  Row(
                    children: [
                      Text(
                        date,
                        style: GoogleFonts.ibmPlexSansArabic(
                          color: Colors.white38,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(width: 12),
                      Text(
                        // "• 5 min read",
                        AppLocalizations.of(context)!.blogReadTime,
                        style: GoogleFonts.ibmPlexSansArabic(
                          color: Colors.white38,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),
                  ArticleSummaryBox(
                    summary: summary,
                  ),
                  // const SizedBox(height: 12),

                  // صورة المقال
                  ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: Image.asset(
                      imageUrl,
                      width: double.infinity,
                      height: 260,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(height: 28),

                  // مقدمة قصيرة (Lead)
                  Text(
                    content.split('.').first + '.',
                    style: GoogleFonts.ibmPlexSansArabic(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white70,
                      height: 1.7,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // نص المقال
                  Text(
                    content,
                    style: GoogleFonts.ibmPlexSansArabic(
                      fontSize: 16,
                      color: Colors.white60,
                      height: 1.8,
                    ),
                  ),

                  // const SizedBox(height: ),

                  // CTA خفيف
                  Divider(color: Colors.white12),
                  ArticleCTA(
                    articleTitle: title,
                  ),

                  Text(
                    AppLocalizations.of(context)!.blogEnjoyedArticle,
                    // "Enjoyed this article?",
                    style: GoogleFonts.ibmPlexSansArabic(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Text(
                    // "Discover more insights and ideas in our blog.",
                    AppLocalizations.of(context)!.blogDiscoverMore,
                    style: GoogleFonts.ibmPlexSansArabic(
                      color: Colors.white54,
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

}

class ArticleSummaryBox extends StatelessWidget {
  final String summary;

  const ArticleSummaryBox({required this.summary});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 32),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            kPrimaryColor.withOpacity(0.1),
            kSecondaryColor.withOpacity(0.1),
          ],
        ),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.white12),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.auto_awesome, color: Colors.amber, size: 22),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              summary,
              style: GoogleFonts.ibmPlexSansArabic(
                color: Colors.white70,
                height: 1.6,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class ArticleCTA extends StatelessWidget {
  final String articleTitle;

  const ArticleCTA({required this.articleTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 25),
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            kPrimaryColor.withOpacity( 0.35 ),
            kPrimaryColor.withOpacity( 0.15),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: kPrimaryColor.withOpacity( 0.8 ),
          width: 1.4 ,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            // "Want to apply this idea to your own app?",
            AppLocalizations.of(context)!.blogApplyIdea,
            style: GoogleFonts.ibmPlexSansArabic(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            AppLocalizations.of(context)!.blogLetsDiscuss,
            // "Let’s discuss how this concept could work for your project, timeline, and budget.",
            style: GoogleFonts.ibmPlexSansArabic(
              color: Colors.white70,
              height: 1.6,
            ),
          ),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            icon: const Icon(Icons.chat, color: Colors.white,),
            label: Text(
              // "Discuss on WhatsApp",
              AppLocalizations.of(context)!.blogDiscussOnWhatsapp,
              style: GoogleFonts.ibmPlexSansArabic(
                fontWeight: FontWeight.bold,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor,
              foregroundColor: Colors.white,
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            onPressed: () {
              final message = Uri.encodeComponent(
                  // "Hi 👋 I just read your article \"$articleTitle\" and would like to discuss how this idea could work for my app."
                  AppLocalizations.of(context)!.blogWhatsappMessage
              );

              launchUrl(
                Uri.parse(
                  "https://wa.me/972595192140?text=$message",
                ),
                mode: LaunchMode.externalApplication,
              );
            },
          ),
        ],
      ),
    );
  }
}

