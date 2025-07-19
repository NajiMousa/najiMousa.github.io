import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../models/works_carousel_item_model.dart';

class ProjectDetailsPage extends StatelessWidget {
  final WorksCarouselItemModel project;

  const ProjectDetailsPage({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(project.workName),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1000),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(project.imagePath),
                  SizedBox(height: 20),

                  // اسم المشروع
                  Text(

                    project.workName,
                    style: GoogleFonts.ibmPlexSansArabic(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),
                  ),

                  SizedBox(height: 10),

                  // نبذة قصيرة
                  Text(
                    project.workBio,
                    style: GoogleFonts.ibmPlexSansArabic(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16, fontStyle: FontStyle.italic),
                  ),

                  SizedBox(height: 20),

                  // الوصف الكامل
                  Text("Project Overview", style: GoogleFonts.ibmPlexSansArabic(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16,),),
                  SizedBox(height: 8),
                  Text(project.workDescription, style: GoogleFonts.ibmPlexSansArabic(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16,),),

                  SizedBox(height: 30),

                  // المهارات المستخدمة
                  Text("Technologies Used", style: GoogleFonts.ibmPlexSansArabic(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16,),),
                  SizedBox(height: 8),
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: project.skills.map((skill) {
                      return Chip(label: Text(skill,style: GoogleFonts.ibmPlexSansArabic(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16,),));
                    }).toList(),
                  ),

                  SizedBox(height: 30),

                  // 🧠 مراحل التنفيذ (Timeline)
                  Text("Project Timeline", style: GoogleFonts.ibmPlexSansArabic(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16,),),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      _buildTimelineStep("🔍 Problem Statement", "Understanding user needs and project goals."),
                      _buildTimelineStep("🔍 Problem", ""),
                      _buildTimelineStep("🔍 Solution", "."),
                      _buildTimelineStep("🔍 OverView", "."),
                      _buildTimelineStep("🔍 TimeLine", "."),
                      _buildTimelineStep("🔍 Business Model", "."),
                      _buildTimelineStep("🔍 Creative Strategy", "."),
                      _buildTimelineStep("🔍 Business Strategy", "."),
                      _buildTimelineStep("🔍 Design Thinking Process", "."),
                      _buildTimelineStep("🔍 1. Competitor Analysis", "."),
                      _buildTimelineStep("🔍 2. SWOT Analysis", "."),
                      _buildTimelineStep("🔍 3. Survey", "."),
                      _buildTimelineStep("🔍 4. Interviews", "."),
                      _buildTimelineStep("🔍 Research & Analysis", "Understanding user needs and project goals."),
                      _buildTimelineStep("📝 Wireframing", "Sketching structure and layout ideas."),
                      _buildTimelineStep("🎨 UI Design", "Crafting the visual design with colors and typography."),
                      _buildTimelineStep("🧪 Testing & Feedback", "Validating user experience and improving."),
                      _buildTimelineStep("🚀 Final Delivery", "Project completed and handed off."),
                    ],
                  ),

                  SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTimelineStep(String title, String description) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("• ", style: TextStyle(fontSize: 20)),
          Expanded(
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    children: [
                      TextSpan(text: "$title\n", style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: description),
                    ],
                  ),
                ),
                SizedBox(height: 12),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(project.imagePath, fit: BoxFit.cover),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// import '../../models/works_carousel_item_model.dart';
//
// class ProjectDetailsPage extends StatelessWidget {
//   final WorksCarouselItemModel project;
//
//   const ProjectDetailsPage({super.key, required this.project});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[50],
//       body: PageView(
//         scrollDirection: Axis.vertical,
//         children: [
//           _buildIntroSection(context),
//           _buildInteractiveMockup(context),
//           _buildScreensGallery(context),
//           _buildProjectDetails(context),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildIntroSection(BuildContext context) {
//     return Stack(
//       children: [
//         Image.asset(project.imagePath, fit: BoxFit.cover, width: double.infinity, height: double.infinity),
//         Container(color: Colors.black.withOpacity(0.4)),
//         Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(project.workName, style: TextStyle(fontSize: 40, color: Colors.white, fontWeight: FontWeight.bold)),
//               SizedBox(height: 10),
//               Text(project.workBio, style: TextStyle(fontSize: 18, color: Colors.white70)),
//               SizedBox(height: 30),
//               Icon(Icons.keyboard_arrow_down_rounded, color: Colors.white54, size: 48),
//             ],
//           ),
//         )
//       ],
//     );
//   }
//
//   Widget _buildInteractiveMockup(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
//       child: Column(
//         children: [
//           Text("Try the App", style: Theme.of(context).textTheme.headlineSmall),
//           SizedBox(height: 20),
//           ClipRRect(
//             borderRadius: BorderRadius.circular(20),
//             child: Container(
//               color: Colors.black,
//               height: 500,
//               width: 250,
//               child: PageView(
//                 children: [
//                   Image.asset("assets/mock1.png", fit: BoxFit.cover),
//                   Image.asset("assets/mock2.png", fit: BoxFit.cover),
//                   Image.asset("assets/mock3.png", fit: BoxFit.cover),
//                 ],
//               ),
//             ),
//           ),
//           SizedBox(height: 16),
//           Text("Swipe to navigate screens", style: TextStyle(color: Colors.grey[600])),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildScreensGallery(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(24.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text("UI Highlights", style: Theme.of(context).textTheme.headlineSmall),
//           SizedBox(height: 16),
//           SizedBox(
//             height: 300,
//             child: ListView.separated(
//               scrollDirection: Axis.horizontal,
//               itemCount: 5,
//               itemBuilder: (_, i) => ClipRRect(
//                 borderRadius: BorderRadius.circular(12),
//                 child: Image.asset("assets/screen${i + 1}.png", width: 200, fit: BoxFit.cover),
//               ),
//               separatorBuilder: (_, __) => SizedBox(width: 12),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildProjectDetails(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(24.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text("Project Overview", style: Theme.of(context).textTheme.headlineSmall),
//           SizedBox(height: 12),
//           Text(project.workDescription, style: TextStyle(fontSize: 16)),
//           SizedBox(height: 24),
//           Text("Skills & Tools", style: Theme.of(context).textTheme.titleLarge),
//           Wrap(
//             spacing: 10,
//             runSpacing: 10,
//             children: project.skills.map((e) => Chip(label: Text(e))).toList(),
//           )
//         ],
//       ),
//     );
//   }
// }
