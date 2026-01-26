import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:particles_fly/particles_fly.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:web_portfolio/utils/constants.dart';

import '../../models/works_carousel_item_model.dart';
import '../home/components/project_estimator_page.dart';

class ProjectDetailsPage extends StatelessWidget {
  final WorksCarouselItemModel project;

  const ProjectDetailsPage({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    // Decide which view to show based on the presence of Behance content.
    bool useBehanceImageView = project.behanceImagePath != null &&
        project.behanceImagePath!.isNotEmpty;

    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: Text(project.workName,
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
          useBehanceImageView
              ? _buildBehanceImageView(context)
              : _buildCustomDetailView(context),
        ],
      ),
    );
  }

  // New, more professional view for the Behance image.
  Widget _buildBehanceImageView(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 24.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1000),
            // Max width for the content
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // A professional-looking frame for the image.
                Container(
                  padding: const EdgeInsets.all(12.0),
                  decoration: BoxDecoration(
                      color: const Color(0xFF2A2A2A),
                      // A slightly lighter dark shade
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: kAccentColor.withOpacity(0.2),
                        width: 1,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: kPrimaryColor.withOpacity(0.1),
                          blurRadius: 20,
                          spreadRadius: 5,
                        )
                      ]),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(project.behanceImagePath!),
                  ),
                ),

                // Display a button to view the project on the Behance website
                _footer(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Function to launch URL in a new tab.
  void _launchURL(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }

  // The original detailed layout is kept here as a fallback
  Widget _buildCustomDetailView(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            _heroSection(context),
            _metaSection(),
            _coreFeaturesSection(),
            _brandingSection(),
            // _finalScreensSection(),
            _footer(context),
          ]),
        )
      ],
    );
  }

  // --- All the _build... methods from the previous design are kept below ---
  Widget _heroSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: Column(
            children: [
              Text(
                project.workName,
                textAlign: TextAlign.center,
                style: GoogleFonts.ibmPlexSansArabic(
                  fontSize: 48,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                project.workBio,
                textAlign: TextAlign.center,
                style: GoogleFonts.ibmPlexSansArabic(
                  fontSize: 18,
                  height: 1.6,
                  color: Colors.white70,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                project.workDescription,
                textAlign: TextAlign.center,
                style: GoogleFonts.ibmPlexSansArabic(
                  fontSize: 14,
                  height: 1.6,
                  color: Colors.white70,
                ),
              ),
              // const SizedBox(height: 12),
              Image.asset(project.imagePath),
            ],
          ),
        ),
      ),
    );
  }

  Widget _metaSection() {
    return Container(
      // padding: const EdgeInsets.symmetric(vertical: 12),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 800),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _metaItem("ROLE", "UX/UI Designer"),
              _metaItem("PLATFORM", "Mobile App"),
              _metaItem("TOOLS", "Figma · Flutter"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _metaItem(String title, String value) {
    return Column(
      children: [
        Text(
          title,
          style: GoogleFonts.ibmPlexSansArabic(
            fontSize: 12,
            color: kCaptionColor,
            letterSpacing: 1.5,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: GoogleFonts.ibmPlexSansArabic(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 80,
      ),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.ibmPlexSansArabic(
              fontSize: 36, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

  Widget _coreFeaturesSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: Column(
            children: [
              _sectionTitle("Core Features"),
              // const SizedBox(height: 20),
              Wrap(
                spacing: 40,
                runSpacing: 40,
                alignment: WrapAlignment.center,
                children: [
                  _featureCard(Icons.videogame_asset, "Gamified Learning",
                      "Interactive games make learning fun and engaging."),
                  _featureCard(Icons.track_changes, "Progress Tracking",
                      "Parents can monitor their child's progress and achievements."),
                  _featureCard(Icons.palette, "Visual-First Design",
                      "A vibrant, image-based interface that is easy to navigate."),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _featureCard(IconData icon, String title, String description) {
    return SizedBox(
      width: 250,
      child: Column(
        children: [
          Icon(icon, size: 48, color: kPrimaryColor),
          const SizedBox(height: 16),
          Text(title,
              style: GoogleFonts.ibmPlexSansArabic(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white)),
          const SizedBox(height: 8),
          Text(description,
              textAlign: TextAlign.center,
              style: GoogleFonts.ibmPlexSansArabic(color: kCaptionColor)),
        ],
      ),
    );
  }

  Widget _brandingSection() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1000),
          child: Column(
            children: [
              _sectionTitle("Branding"),
              const SizedBox(height: 20),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text("Color Palette",
                            style: GoogleFonts.ibmPlexSansArabic(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        const SizedBox(height: 20),
                        Wrap(
                          spacing: 16,
                          runSpacing: 16,
                          alignment: WrapAlignment.center,
                          children: [
                            CircleAvatar(
                                radius: 30, backgroundColor: kPrimaryColor),
                            CircleAvatar(
                                radius: 30, backgroundColor: kAccentColor),
                            const CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black),
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text("Typography",
                            style: GoogleFonts.ibmPlexSansArabic(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        const SizedBox(height: 20),
                        Text("Aa",
                            style: GoogleFonts.ibmPlexSansArabic(
                                fontSize: 48,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                        Text("IBM Plex Sans Arabic",
                            style: GoogleFonts.ibmPlexSansArabic(
                                fontSize: 16, color: kCaptionColor)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _finalScreensSection() {
    final images = [
      project.imagePath,
      project.imagePath,
      project.imagePath,
      project.imagePath
    ]; // Placeholder images
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            children: [
              _sectionTitle("Final Screens"),
              const SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 300,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.5,
                ),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(images[index], fit: BoxFit.cover),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _footer(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 24),
      child: Center(
        child: Column(
          children: [
            Text(
              "Let's build something great together!",
              style: GoogleFonts.ibmPlexSansArabic(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 16),
            Text(
              "I'm available for freelance projects. Feel free to reach out.",
              textAlign: TextAlign.center,
              style: GoogleFonts.ibmPlexSansArabic(
                  fontSize: 16, color: Colors.white70),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (project.behanceUrl != null && project.behanceUrl!.isNotEmpty)
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kSecondaryColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 16),
                    ),
                    onPressed: () => _launchURL(project.behanceUrl!),
                    child: Text(
                      "View on Behance",
                      style: GoogleFonts.ibmPlexSansArabic(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: () {
                    final message = buildWhatsAppMessage(
                      projectName: project.workName,
                    );
                    final encodedMessage = Uri.encodeComponent(message);
                    final whatsappUrl = "https://wa.me/972595192140?text=$encodedMessage";
                    _launchURL(whatsappUrl);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 16),
                  ),
                  child: Text("Contact Me",
                      style: GoogleFonts.ibmPlexSansArabic(
                          fontWeight: FontWeight.bold, color: kPrimaryColor)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String buildWhatsAppMessage({
    required String projectName,
  }) {
    return '''
Hello 👋
I saw your project "$projectName" on your portfolio and I'm very interested.

I have a few questions, or I'd like to discuss creating a similar project.

Looking forward to your response.
''';
  }

}
