import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:particles_fly/particles_fly.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: Text('Mr. Eng. aNajiBenMousa',
            style: GoogleFonts.ibmPlexSansArabic(
                color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: kBackgroundColor.withOpacity(0.8),
        elevation: 2,
      ),
      body: Stack(
        children: [
          ParticlesFly(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            connectDots: true,
            numberOfParticles: 50,
            lineColor: kAccentColor.withOpacity(0.1),
            particleColor: kPrimaryColor,
          ),
          ScreenHelper(
            desktop: _buildUi(kDesktopMaxWidth),
            tablet: _buildUi(kTabletMaxWidth),
            mobile: _buildUi(getMobileMaxWidth(context)),
          ),
        ],
      ),
    );
  }

  Widget _buildUi(double width) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: width),
              child: Column(
                children: [
                  _buildProfileHeader(),
                  const SizedBox(height: 50),
                  _buildTimeline(),
                  const SizedBox(height: 50),
                  _buildPhilosophySection(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: kPrimaryColor, width: 2),
            boxShadow: [
              BoxShadow(
                color: kPrimaryColor.withOpacity(0.3),
                blurRadius: 20,
                spreadRadius: 2,
              )
            ],
          ),
          child: const CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage("assets/myPhoto01.png"),
          ),
        ),
        const SizedBox(height: 24),
        Text(
          "From Gaza's heart, a passion for building bridges.",
          textAlign: TextAlign.center,
          style: GoogleFonts.ibmPlexSansArabic(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            height: 1.4,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          "Palestinian by origin, Gazan by heart. My journey began not in a design studio, but in the resilient streets of Gaza. This is my story of turning challenges into opportunities.",
          textAlign: TextAlign.center,
          style: GoogleFonts.ibmPlexSansArabic(
            fontSize: 16,
            color: kCaptionColor,
            height: 1.8,
          ),
        ),
        const SizedBox(height: 24),
        _buildSocialLinks(),
      ],
    );
  }

  Widget _buildTimeline() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Journey",
          style: GoogleFonts.ibmPlexSansArabic(
              fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 24),
        _buildTimelineItem(
          year: '2015',
          title: 'High School & The Spark',
          description: 'In the halls of high school, my curiosity for how things work ignited. It was here I began to see technology not just as a tool, but as a language for creation.',
          icon: Icons.school,
          color: const Color(0xFF3b82f6),
        ),
        _buildTimelineItem(
          year: '2018',
          title: 'Mechatronics & A Deeper Calling',
          description: 'I delved into Mechatronics Engineering, mastering logic and machinery. Yet, I found myself drawn to the human side of tech, leading me to the world of UI/UX.',
          icon: Icons.memory,
          color: const Color(0xFF10b981),
        ),
        _buildTimelineItem(
          year: '2020',
          title: 'First Professional Milestone',
          description: 'Landed my first major project. It was a turning point, transforming academic knowledge into real-world solutions and fueling my passion for impactful design.',
          icon: Icons.work,
          color: const Color(0xFFf59e0b),
        ),
        _buildTimelineItem(
          year: 'Today',
          title: 'Continuous Growth',
          description: 'I continue to evolve, blending design and development to build meaningful digital experiences. Every day is a new opportunity to learn, create, and solve problems.',
          icon: Icons.trending_up,
          color: const Color(0xFFef4444),
          isLast: true,
        ),
      ],
    );
  }

  Widget _buildTimelineItem({
    required String year,
    required String title,
    required String description,
    required IconData icon,
    required Color color,
    bool isLast = false,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 24,
              height: 24,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
                border: Border.all(color: kBackgroundColor, width: 3),
              ),
            ),
            if (!isLast)
              Container(
                width: 2,
                height: 120,
                color: color.withOpacity(0.5),
              ),
          ],
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                year,
                style: GoogleFonts.ibmPlexSansArabic(
                  color: color,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                title,
                style: GoogleFonts.ibmPlexSansArabic(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                style: GoogleFonts.ibmPlexSansArabic(
                  color: kCaptionColor,
                  height: 1.6,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPhilosophySection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Philosophy",
          style: GoogleFonts.ibmPlexSansArabic(
              fontSize: 28, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 24),
        Wrap(
          spacing: 20,
          runSpacing: 20,
          children: [
            _buildValueCard(
              icon: FontAwesomeIcons.lightbulb,
              title: 'Creativity',
              description: 'Creativity is the fuel for excellence and innovation.',
              color: const Color(0xFF3b82f6),
            ),
            _buildValueCard(
              icon: FontAwesomeIcons.handshake,
              title: 'Integrity',
              description: 'The foundation upon which trust is built.',
              color: const Color(0xFF10b981),
            ),
            _buildValueCard(
              icon: FontAwesomeIcons.users,
              title: 'Teamwork',
              description: 'Together, we can reach greater heights.',
              color: const Color(0xFF8b5cf6),
            ),
            _buildValueCard(
              icon: FontAwesomeIcons.rocket,
              title: 'Growth',
              description: 'Learning is a journey that never ends.',
              color: const Color(0xFFf59e0b),
            ),
          ],
        )
      ],
    );
  }

  Widget _buildValueCard({
    required IconData icon,
    required String title,
    required String description,
    required Color color,
  }) {
    return Container(
      width: 200,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF1E293B),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FaIcon(icon, color: color, size: 28),
          const SizedBox(height: 16),
          Text(
            title,
            style: GoogleFonts.ibmPlexSansArabic(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: GoogleFonts.ibmPlexSansArabic(
              color: kCaptionColor,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialLinks() {
    return Wrap(
      spacing: 16,
      runSpacing: 12,
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


// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:particles_fly/particles_fly.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//
// import '../../../utils/constants.dart';
// import '../../../utils/screen_helper.dart';
//
// class AboutMe extends StatefulWidget {
//   const AboutMe({super.key});
//
//   @override
//   State<AboutMe> createState() => _AboutMeState();
// }
//
// class _AboutMeState extends State<AboutMe> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: kBackgroundColor,
//       appBar: AppBar(
//         title: Text('Mr. Eng. aNajiBenMousa',
//             style: GoogleFonts.ibmPlexSansArabic(
//                 color: Colors.white, fontWeight: FontWeight.bold)),
//         backgroundColor: kBackgroundColor.withOpacity(0.8),
//         elevation: 2,
//       ),
//       body: Stack(
//         children: [
//           ParticlesFly(
//             height: MediaQuery.of(context).size.height,
//             width: MediaQuery.of(context).size.width,
//             connectDots: true,
//             numberOfParticles: 50,
//             lineColor: kAccentColor.withOpacity(0.1),
//             particleColor: kPrimaryColor,
//           ),
//           ScreenHelper(
//             desktop: _buildUi(kDesktopMaxWidth),
//             tablet: _buildUi(kTabletMaxWidth),
//             mobile: _buildUi(getMobileMaxWidth(context)),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildUi(double width) {
//     return Center(
//       child: LayoutBuilder(
//         builder: (context, constraints) {
//           return SingleChildScrollView(
//             padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
//             child: ConstrainedBox(
//               constraints: BoxConstraints(maxWidth: width),
//               child: ScreenHelper.isMobile(context)
//                   ? _buildMobileLayout()
//                   : _buildDesktopLayout(),
//             ),
//           );
//         },
//       ),
//     );
//   }
//
//   Widget _buildDesktopLayout() {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Expanded(
//           flex: 2,
//           child: _buildProfileImage(),
//         ),
//         const SizedBox(width: 40),
//         Expanded(
//           flex: 3,
//           child: _buildProfileText(),
//         ),
//       ],
//     );
//   }
//
//   Widget _buildMobileLayout() {
//     return Column(
//       children: [
//         _buildProfileImage(),
//         const SizedBox(height: 32),
//         _buildProfileText(),
//       ],
//     );
//   }
//
//   Widget _buildProfileImage() {
//     return Container(
//       padding: const EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         border: Border.all(color: kPrimaryColor, width: 2),
//         boxShadow: [
//           BoxShadow(
//             color: kPrimaryColor.withOpacity(0.3),
//             blurRadius: 20,
//             spreadRadius: 2,
//           )
//         ],
//       ),
//       child: const CircleAvatar(
//         radius: 120,
//         backgroundImage: AssetImage("assets/myPhoto01.png"),
//       ),
//     );
//   }
//
//   Widget _buildProfileText() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           "Hello, I'm Naji",
//           style: GoogleFonts.ibmPlexSansArabic(
//             fontSize: 36,
//             fontWeight: FontWeight.bold,
//             color: Colors.white,
//           ),
//         ),
//         const SizedBox(height: 12),
//         Text(
//           "A passionate UX/UI designer and Flutter developer based in Palestine. My journey into the world of tech began with Mechatronics Engineering, but my love for crafting beautiful, human-centered experiences led me to the intersection of design and code.",
//           style: GoogleFonts.ibmPlexSansArabic(
//             fontSize: 16,
//             color: kCaptionColor,
//             height: 1.8,
//           ),
//         ),
//         const SizedBox(height: 16),
//         Text(
//           "I believe that great design is not just about aesthetics, but about creating intuitive solutions that solve real-world problems. My goal is to create apps that are not only functional and scalable but also a joy to use.",
//           style: GoogleFonts.ibmPlexSansArabic(
//             fontSize: 16,
//             color: kCaptionColor,
//             height: 1.8,
//           ),
//         ),
//         const SizedBox(height: 32),
//         _buildSocialLinks(),
//       ],
//     );
//   }
//
//   Widget _buildSocialLinks() {
//     return Wrap(
//       spacing: 16,
//       runSpacing: 12,
//       children: [
//         _socialButton(FontAwesomeIcons.github, Constants.githubUrl),
//         _socialButton(FontAwesomeIcons.linkedin, Constants.linkedinUrl),
//         _socialButton(FontAwesomeIcons.behance, Constants.behanceUrl),
//         _socialButton(FontAwesomeIcons.instagram, Constants.instagramUrl),
//         _socialButton(FontAwesomeIcons.facebook, Constants.facebookUrl),
//       ],
//     );
//   }
//
//   Widget _socialButton(IconData icon, String url) {
//     return MouseRegion(
//       cursor: SystemMouseCursors.click,
//       child: InkWell(
//         onTap: () => _launchURL(url),
//         borderRadius: BorderRadius.circular(20),
//         child: Container(
//           padding: const EdgeInsets.all(12),
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             border: Border.all(color: kAccentColor.withOpacity(0.5), width: 1),
//           ),
//           child: FaIcon(
//             icon,
//             color: Colors.white,
//             size: 20,
//           ),
//         ),
//       ),
//     );
//   }
//
//   void _launchURL(String url) async {
//     if (await canLaunchUrl(Uri.parse(url))) {
//       await launchUrl(Uri.parse(url));
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
// }
