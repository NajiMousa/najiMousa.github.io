import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/models/works_carousel_item_model.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';
import '../../../l10n/app_localizations.dart';
import '../../disply_pages/app_project_details_page.dart';

class ProjectsSection extends StatefulWidget {
  const ProjectsSection({Key? key}) : super(key: key);
  @override
  State<ProjectsSection> createState() => _ProjectsSectionState();
}

class _ProjectsSectionState extends State<ProjectsSection>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List<WorksCarouselItemModel> mobileProjects = [];
  List<WorksCarouselItemModel> webProjects = [];
  List<WorksCarouselItemModel> aiProjects = [];
  List<WorksCarouselItemModel> research = [];

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    webProjects = [
      WorksCarouselItemModel(
        behanceImagePath: 'assets/behance.png',
        behanceUrl: 'https://www.behance.net/gallery/164088915/Nawa-Website',
        imagePath: "assets/nawaWebsite.png",
        skills: [
          // 'UI/UX Design',
          // 'Figma',
          // 'Responsive Web',
          // 'Cultural Theme',
          // 'Nonprofit Design',
          // 'Child-Friendly UI'
          AppLocalizations.of(context)!.uiUxDesign,
          AppLocalizations.of(context)!.figma,
          AppLocalizations.of(context)!.responsiveUi,
          AppLocalizations.of(context)!.culturalTheme,
          AppLocalizations.of(context)!.nonprofitDesign,
          AppLocalizations.of(context)!.childFriendlyUi
        ],
        workName: AppLocalizations.of(context)!.nawaWebsite,
        // workName: "NAWA WEBSITE",
        workBio: AppLocalizations.of(context)!.nawaWebsiteSubtitle,
        // workBio: "LITTLE HEARTS\n& DEEP ROOTS",
        workDescription:
            // "A warm and inviting website UI designed for a nonprofit organization dedicated to preserving cultural heritage and supporting children's development.",
            AppLocalizations.of(context)!.nawaWebsiteDescription,
      ),
      WorksCarouselItemModel(
        behanceImagePath: '',
        behanceUrl: 'https://www.behance.net/gallery/153869229/contracting-company-landing-page',
        imagePath: "assets/constructionLanding.png",
        skills: [
          // 'UI/UX Design',
          // 'Landing Page',
          // 'Responsive Web',
          // 'Figma',
          // 'Hero Sections',
          // 'Corporate Design'
          AppLocalizations.of(context)!.uiUxDesign,
          AppLocalizations.of(context)!.landingPage,
          AppLocalizations.of(context)!.responsiveUi,
          AppLocalizations.of(context)!.figma,
          AppLocalizations.of(context)!.heroSections,
          AppLocalizations.of(context)!.corporateDesign
        ],
        workName: AppLocalizations.of(context)!.globalBuilders,
        // workName: "GLOBAL BUILDERS",
        workBio: AppLocalizations.of(context)!.globalBuildersSubtitle,
        // workBio: "WORLDWIDE\nCONSTRUCTION",
        workDescription:
            // "A modern and professional landing page design for a global construction company. The layout features bold typography, strong visual hierarchy, trust-building elements, and service highlights.",
            AppLocalizations.of(context)!.globalBuildersDescription,
      ),
      WorksCarouselItemModel(
        behanceImagePath: '',
        behanceUrl: 'https://www.behance.net/gallery/153803269/SBS-Co-Dash-Board',
        imagePath: "assets/companyDashboardUI.png",
        skills: [
          // 'UI/UX Design',
          // 'Dashboard Layout',
          // 'Figma',
          // 'Data Visualization',
          // 'Responsive Web',
          // 'Dark Mode'
          AppLocalizations.of(context)!.uiUxDesign,
          AppLocalizations.of(context)!.dashboardLayout,
          AppLocalizations.of(context)!.figma,
          AppLocalizations.of(context)!.dataVisualization,
          AppLocalizations.of(context)!.responsiveUi,
          AppLocalizations.of(context)!.darkMode
        ],
        // workName: "COMPANY DASHBOARD",
        workName: AppLocalizations.of(context)!.companyDashboard,
        // workBio: "MODERN & CLEAN\nINTERNAL ADMIN PANEL",
        workBio: AppLocalizations.of(context)!.companyDashboardSubtitle,
        workDescription:
            // "An intuitive and scalable dashboard UI designed for internal company management. The layout includes analytics cards, sidebar navigation, employee management modules, and real-time charts.",
            AppLocalizations.of(context)!.companyDashboardDescription,
      ),
    ];
    mobileProjects = [
      WorksCarouselItemModel(
        behanceImagePath: '',
        behanceUrl: '',
        imagePath: "assets/spaceApp.png",
        skills: [
          'Flutter',
          // 'CarouselSlider',
          AppLocalizations.of(context)!.carouselSlider,
          // 'Responsive UI',
          AppLocalizations.of(context)!.responsiveUi,
          // 'State Management',
          AppLocalizations.of(context)!.stateManagement,
          // 'LayoutBuilder',
          AppLocalizations.of(context)!.layoutBuilder,
          // 'UX Design'
          AppLocalizations.of(context)!.uxDesign
        ],
        // workName: "SPACE APP",
        workName: AppLocalizations.of(context)!.spaceApp,
        // workBio: "FIRST UNIVERSAL\nPalestinian Martyrs App 🇵🇸",
        workBio: AppLocalizations.of(context)!.palestinianMartyrsApp,
        workDescription:
            // "This app is the first global platform of its kind to commemorate Palestinian martyrs through a digital archive that preserves their faces, biographies, and sacrifices, free from the censorship of algorithms and the limits of platforms.",
            AppLocalizations.of(context)!.palestinianMartyrsAppDescription,
      ),
      WorksCarouselItemModel(
        imagePath: "assets/bookReder.png",
        behanceImagePath: '',
        behanceUrl: 'https://www.behance.net/gallery/141699241/Kleio-Application_Audio-Books',
        skills: [
          // 'UX Research',
          // 'UI/UX Design',
          // 'Wireframing',
          // 'Prototyping',
          // 'Figma',
          // 'Typography',
          // 'Dark Mode Design'
          AppLocalizations.of(context)!.uxResearch,
          AppLocalizations.of(context)!.uiUxDesign,
          AppLocalizations.of(context)!.wireframing,
          AppLocalizations.of(context)!.prototyping,
          AppLocalizations.of(context)!.figma,
          AppLocalizations.of(context)!.typography,
          AppLocalizations.of(context)!.darkModeDesign
        ],
        // workName: "BOOK READER APP",
        workName: AppLocalizations.of(context)!.bookReaderApp,
        // workBio: "VERSE FLOW\nA Modern Reading Experience 📚",
        workBio: AppLocalizations.of(context)!.verseFlow,
        workDescription:
            // "A sleek and minimal book reader app design focused on user comfort and readability. The interface features adjustable text size, dark/light themes, smooth page transitions, and an elegant bookshelf layout.",
            AppLocalizations.of(context)!.bookReaderAppDescription,
      ),
      WorksCarouselItemModel(
        behanceImagePath: '',
        behanceUrl: '',
        imagePath: "assets/ios.png",
        skills: [
          // 'Energy Dashboard',
          // 'Data Visualization',
          // 'UI/UX Design',
          // 'Dark Mode',
          // 'Prototyping',
          // 'Figma'
          AppLocalizations.of(context)!.energyDashboard,
          AppLocalizations.of(context)!.dataVisualization,
          AppLocalizations.of(context)!.uiUxDesign,
          AppLocalizations.of(context)!.darkMode,
          AppLocalizations.of(context)!.prototyping,
          AppLocalizations.of(context)!.figma
        ],
        // workName: "POWER TRACKER APP",
        workName: AppLocalizations.of(context)!.powerTrackerApp,
        // workBio: "Powerful Start\nSmart Electricity Load Monitoring ⚡",
        workBio: AppLocalizations.of(context)!.powerTrackerAppSubtitle,
        workDescription:
            // "A modern and intuitive UI design for a smart electricity load tracking app. The design features real-time consumption graphs, device-level monitoring, and customizable alerts for overloads. ",
            AppLocalizations.of(context)!.powerTrackerAppDescription,
      ),
      WorksCarouselItemModel(
        behanceImagePath: '',
        behanceUrl: 'https://www.behance.net/gallery/152662781/Treasury-Application',
        imagePath: "assets/TRADER.png",
        skills: [
          // 'Financial Dashboard',
          // 'Dark Mode UI',
          // 'Stock Charts',
          // 'Figma',
          // 'Prototyping',
          // 'UI/UX Design'
          AppLocalizations.of(context)!.financialDashboard,
          AppLocalizations.of(context)!.darkMode,
          AppLocalizations.of(context)!.stockCharts,
          AppLocalizations.of(context)!.figma,
          AppLocalizations.of(context)!.prototyping,
          AppLocalizations.of(context)!.uiUxDesign
        ],
        // workName: "TRADER APP",
        workName: AppLocalizations.of(context)!.traderApp,
        // workBio: "SMART & SIMPLE\nStock Trading Platform 📈",
        workBio: AppLocalizations.of(context)!.traderAppSubtitle,
        workDescription:
            // "A clean, intuitive UI design for a stock trading and portfolio tracking app. The design focuses on real-time market data, interactive charts, watchlists, and seamless navigation — offering both new and experienced traders.",
            AppLocalizations.of(context)!.traderAppDescription,
      ),
      WorksCarouselItemModel(
        behanceImagePath: '',
        behanceUrl: 'https://www.behance.net/gallery/152487009/ARQAM-APP',
        imagePath: "assets/MONEY.png",
        skills: [
          // 'UI/UX Design',
          // 'Government Services UI',
          // 'Figma',
          // 'Arabic RTL Design',
          // 'Accessible Design',
          // 'Data Visualization'
          AppLocalizations.of(context)!.uiUxDesign,
          AppLocalizations.of(context)!.governmentServicesUi,
          AppLocalizations.of(context)!.figma,
          AppLocalizations.of(context)!.arabicRtlDesign,
          AppLocalizations.of(context)!.accessibleDesign,
          AppLocalizations.of(context)!.dataVisualization
        ],
        // workName: "PENSION AUTHORITY APP",
        workName: AppLocalizations.of(context)!.pensionAuthorityApp,
        // workBio: "SMART SERVICES\n for Palestinian Retirees 🇵🇸",
        workBio: AppLocalizations.of(context)!.pensionAuthorityAppSubtitle,
        workDescription:
            // "A clear and accessible UI design for the Palestinian Pension Authority mobile app. The interface allows retirees to view their monthly pension details, request official documents, track service years, and receive updates from the authority.",
            AppLocalizations.of(context)!.pensionAuthorityAppDescription,
      ),
      WorksCarouselItemModel(
        behanceImagePath: '',
        behanceUrl: 'https://www.behance.net/gallery/153538501/Happy-Season',
        imagePath: "assets/HAPPY_SEASON.png",
        skills: [
          // 'UI/UX Design',
          // 'Event Booking Flow',
          // 'Clean Layout',
          // 'Elegant Color Palette',
          // 'Arabic RTL Support',
          // 'Prototyping'
          AppLocalizations.of(context)!.uiUxDesign,
          AppLocalizations.of(context)!.eventBookingFlow,
          AppLocalizations.of(context)!.cleanLayout,
          AppLocalizations.of(context)!.elegantColorPalette,
          AppLocalizations.of(context)!.arabicRtlDesign,
          AppLocalizations.of(context)!.prototyping
        ],
        // workName: "HAPPY SEASON APP",
        workName: AppLocalizations.of(context)!.happySeasonApp,
        // workBio: "STARTS HERE\nModern Weddings& Event Booking 💍",
        workBio: AppLocalizations.of(context)!.happySeasonAppSubtitle,
        workDescription:
            // "An elegant and user-friendly UI design for a wedding and event venue booking app. Happy Season helps users explore, compare, and book wedding halls and related services with ease.",
            AppLocalizations.of(context)!.happySeasonAppDescription,
      ),
      WorksCarouselItemModel(
        behanceImagePath: '',
        behanceUrl: '',
        imagePath: "assets/forSale.png",
        skills: [
          AppLocalizations.of(context)!.flutter,
          AppLocalizations.of(context)!.firebase,
          AppLocalizations.of(context)!.realTimeChat,
          AppLocalizations.of(context)!.geolocation,
          AppLocalizations.of(context)!.pushNotifications,
          AppLocalizations.of(context)!.encryption,
          AppLocalizations.of(context)!.offlineFirst,
        ],
        workName: AppLocalizations.of(context)!.forsaleAppTitle,
        workBio: AppLocalizations.of(context)!.forsaleAppSubtitle,
        workDescription: AppLocalizations.of(context)!.forsaleAppDescription,
      ),

    ];
    aiProjects = [
      // WorksCarouselItemModel(
      //   imagePath: "assets/transformar.png",
      //   skills: [
      //     // 'UI/UX Design',
      //     // 'Figma',
      //     // 'Responsive Web',
      //     // 'Cultural Theme',
      //     // 'Nonprofit Design',
      //     // 'Child-Friendly UI'
      //     AppLocalizations.of(context)!.uiUxDesign,
      //     AppLocalizations.of(context)!.figma,
      //     AppLocalizations.of(context)!.responsiveUi,
      //     AppLocalizations.of(context)!.culturalTheme,
      //     AppLocalizations.of(context)!.nonprofitDesign,
      //     AppLocalizations.of(context)!.childFriendlyUi
      //   ],
      //   workName: AppLocalizations.of(context)!.nawaWebsite,
      //   // workName: "NAWA WEBSITE",
      //   workBio: AppLocalizations.of(context)!.nawaWebsiteSubtitle,
      //   // workBio: "LITTLE HEARTS\n& DEEP ROOTS",
      //   workDescription:
      //   // "A warm and inviting website UI designed for a nonprofit organization dedicated to preserving cultural heritage and supporting children's development.",
      //   AppLocalizations.of(context)!.nawaWebsiteDescription,
      // ),
      // WorksCarouselItemModel(
      //   imagePath: "assets/transformar.png",
      //   skills: [
      //     'Machine Learning',
      //     'Artificial Intelligence',
      //     'Deep Learning',
      //     'Data Visualization',
      //     'Decision Support Systems',
      //     'Python (Streamlit)',
      //   ],
      //   workName: "Transformer Analysis Web App",
      //   workBio: "AI-Powered Insights \nfor Smarter Decisions🧠",
      //   workDescription:
      //   "A web application built with Streamlit that leverages machine learning "
      //       "and AI techniques to analyze data📊, identify patterns💬, and support "
      //       "decision-making🧠. Features include predictive modeling, interactive "
      //       "visualizations, and an intuitive user interface accessible across devices.",
      // ),
      WorksCarouselItemModel(
        behanceImagePath: '',
        behanceUrl: '',
        imagePath: "assets/transformar.png",
        skills: [
          AppLocalizations.of(context)!.machineLearning,
          AppLocalizations.of(context)!.artificialIntelligence,
          AppLocalizations.of(context)!.deepLearning,
          AppLocalizations.of(context)!.dataVisualization,
          AppLocalizations.of(context)!.decisionSupportSystems,
          AppLocalizations.of(context)!.pythonStreamlit,
        ],
        workName: AppLocalizations.of(context)!.transformerAnalysisWebApp,
        workBio: AppLocalizations.of(context)!.aiPoweredInsights,
        workDescription:
        AppLocalizations.of(context)!.aiPoweredInsightsDescription,
      ),
      WorksCarouselItemModel(
        behanceImagePath: '',
        behanceUrl: '',
        imagePath: "assets/AiKnowlage.png",
        skills: [
          AppLocalizations.of(context)!.nlp,
          AppLocalizations.of(context)!.python,
          AppLocalizations.of(context)!.documentAnalysis,
          AppLocalizations.of(context)!.workflowMining,
          AppLocalizations.of(context)!.llmFineTuning,
          // AppLocalizations.of(context)!.organizationalMemory,

          AppLocalizations.of(context)!.streamlit,
        ],
        workName: AppLocalizations.of(context)!.knowledgeRetentionAI,
        workBio: AppLocalizations.of(context)!.knowledgeRetentionSubtitle,
        workDescription: AppLocalizations.of(context)!.knowledgeRetentionDescription,
      ),
    ];
    research = [
      WorksCarouselItemModel(
        behanceImagePath: '',
        behanceUrl: '',
        imagePath: "assets/AIResearch.png",
        skills: [
    AppLocalizations.of(context)!.artificialIntelligence,
    AppLocalizations.of(context)!.decisionSupportSystems,
    AppLocalizations.of(context)!.dataAnalysis,
    AppLocalizations.of(context)!.machineLearning,
    AppLocalizations.of(context)!.predictiveModeling,
        ],
        workName: AppLocalizations.of(context)!.barriersOfAi,
        workBio: AppLocalizations.of(context)!.barriersOfAiSubtitle,
        workDescription: AppLocalizations.of(context)!.barriersOfAiDescription,
      ),
      WorksCarouselItemModel(
        behanceImagePath: '',
        behanceUrl: '',
        imagePath: "assets/AiResarch.png",
        skills: [
          AppLocalizations.of(context)!.qualitativeResearch,
          AppLocalizations.of(context)!.caseStudyAnalysis,
          AppLocalizations.of(context)!.higherEdPolicy,
          AppLocalizations.of(context)!.crisisInformatics,
          AppLocalizations.of(context)!.mixedMethods,
          AppLocalizations.of(context)!.academicWriting,
        ],
        workName: AppLocalizations.of(context)!.higherEdWarResearchTitle,
        workBio: AppLocalizations.of(context)!.higherEdWarResearchSubtitle,
        workDescription: AppLocalizations.of(context)!.higherEdWarResearchDescription,
      ),
    ];
    return ScreenHelper(
      desktop: _buildUi(kDesktopMaxWidth, context),
      tablet: _buildUi(kTabletMaxWidth, context),
      mobile: _buildUi(getMobileMaxWidth(context), context),
    );
  }

  Widget _buildUi(double width, BuildContext context) {
    int index1 = 0;
    double carouselContainerHeight = 0;
    return StatefulBuilder(
      builder: (context, setState) {
        index1 == 1
            ? (!ScreenHelper.isHorizantal(context) &&
                    (ScreenHelper.isMobile(context) ||
                        ScreenHelper.isTablet(context))
                ? carouselContainerHeight = MediaQuery.of(context).size.width *
                    (ScreenHelper.isMobile(context) ? 0.95 : 0.7)
                : carouselContainerHeight = MediaQuery.of(context).size.height *
                    // (ScreenHelper.isMobile(context)
                    //     ? (MediaQuery.of(context).size.height < 800
                    //         ? 0.95
                    //         : 0.85)
                    //     : 1.2)
                    (ScreenHelper.isMobile(context)
                        ? (MediaQuery.of(context).size.height < 800 ? 1.4 : 1.1)
                        : .70))
            : (!ScreenHelper.isHorizantal(context) &&
                    (ScreenHelper.isMobile(context) ||
                        ScreenHelper.isTablet(context))
                ? carouselContainerHeight = MediaQuery.of(context).size.height *
                    (ScreenHelper.isMobile(context) ? 1.3 : 0.6)
                : carouselContainerHeight = MediaQuery.of(context).size.height *
                    (ScreenHelper.isMobile(context)
                        ? (MediaQuery.of(context).size.height < 800 ? 1.4 : 1.1)
                        : .60));
        return Center(
          child: Container(
            // width: double.infinity,

            constraints: BoxConstraints(
              maxWidth: width,
              minWidth: width,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 650.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        // "🚀 PROJECTS I’VE BROUGHT TO LIFE",
                        AppLocalizations.of(context)!.projectsBroughtToLife,
                        style: GoogleFonts.ibmPlexSansArabic(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 30),
                      ),
                      SizedBox(height: 18),
                      Text(
                        // "Each project here 🎨 started as a simple idea 💡 that grew into something real and meaningful ✨. They’re not just designs or apps, but stories I’ve crafted with passion ❤️, time ⏳, and dedication 🙌 — turning visions into experiences.",
                        AppLocalizations.of(context)!
                            .projectsBroughtToLifeDescription,
                        style: GoogleFonts.ibmPlexSansArabic(
                            color: Colors.white, height: 1.8),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
                TabBar(
                  controller: _tabController,
                  labelColor: kPrimaryColor,
                  unselectedLabelColor: Colors.white,
                  indicatorColor: kPrimaryColor,
                  onTap: (value) {
                    setState(() {
                      index1 = value;
                    });
                  },
                  tabs: [
                    // Tab(text: "Mobile Apps"),
                    Tab(
                      child: Text(
                        ScreenHelper.isMobile(context) ? AppLocalizations.of(context)!.mobile : AppLocalizations.of(context)!.mobileApps,
                        style: GoogleFonts.ibmPlexSansArabic(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      // text: AppLocalizations.of(context)!.mobileApps,
                    ),
                    // Tab(text: "Web Projects"),
                    Tab(
                      child: Text(
                        ScreenHelper.isMobile(context) ? AppLocalizations.of(context)!.web: AppLocalizations.of(context)!.webProjects,
                        style: GoogleFonts.ibmPlexSansArabic(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      // text: AppLocalizations.of(context)!.webProjects
                    ),
                    Tab(
                      child: Text(
                        // 'AI Projects',
                        ScreenHelper.isMobile(context) ? AppLocalizations.of(context)!.ai: AppLocalizations.of(context)!.aiProjects,
                        style: GoogleFonts.ibmPlexSansArabic(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      // text: AppLocalizations.of(context)!.webProjects
                    ),
                    Tab(
                      child: Text(
                        // 'Research',
                        AppLocalizations.of(context)!.research,
                        style: GoogleFonts.ibmPlexSansArabic(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      // text: AppLocalizations.of(context)!.webProjects
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: carouselContainerHeight,
                  // index1 == 0 ?
                  // MediaQuery.of(context).size.height * 1.1
                  //       : MediaQuery.of(context).size.height * 0.85 ,
                  child: TabBarView(
                    controller: _tabController,
                    children: [
                      ProjectsCarousel(
                        type: 'mobileProjects',
                        items: mobileProjects,
                        width: width,
                      ),
                      ProjectsCarousel(
                        type: 'webProjects',
                        items: webProjects,
                        width: width,
                      ),
                      ProjectsCarousel(
                        type: 'aiProjects',
                        items: aiProjects,
                        width: width,
                      ),
                      ProjectsCarousel(
                        type: 'research',
                        items: research,
                        width: width,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

class ProjectsCarousel extends StatefulWidget {
  final List<WorksCarouselItemModel> items;
  final double width;
  final String type;


  ProjectsCarousel(
      {required this.items, required this.width, required this.type});

  @override
  State<ProjectsCarousel> createState() => _ProjectsCarouselState();
}

class _ProjectsCarouselState extends State<ProjectsCarousel> {
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  int _currentIndex = 0;
  double carouselContainerHeight = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth, context),
        tablet: _buildUi(kTabletMaxWidth, context),
        mobile: _buildUi(getMobileMaxWidth(context), context),
      ),
    );
  }

  Widget _buildUi(double width, BuildContext context) {
    // widget.isWeb
    //     ? (!ScreenHelper.isHorizantal(context) &&
    //             (ScreenHelper.isMobile(context) ||
    //                 ScreenHelper.isTablet(context))
    //         ?
    //         // carouselContainerHeight = MediaQuery.of(context).size.width * (.95):
    //         carouselContainerHeight = MediaQuery.of(context).size.width *
    //             (ScreenHelper.isMobile(context) ? 0.95 : 0.7)
    //         : carouselContainerHeight = MediaQuery.of(context).size.height *
    //     (ScreenHelper.isMobile(context)
    //         ? (MediaQuery.of(context).size.height < 800 ? 1.4 : 1.1)
    //         :ScreenHelper.isTablet(context) ?0.6: .80))
    //     :
    (!ScreenHelper.isHorizantal(context) &&
            (ScreenHelper.isMobile(context) || ScreenHelper.isTablet(context))
        ? carouselContainerHeight = MediaQuery.of(context).size.height *
            (ScreenHelper.isMobile(context) ? 1.3 : 0.6)
        : carouselContainerHeight = MediaQuery.of(context).size.height *
            (ScreenHelper.isMobile(context)
                ? (MediaQuery.of(context).size.height < 800 ? 1.4 : 1.1)
                : .60));

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CarouselSlider.builder(
            carouselController: _carouselController,
            itemCount: widget.items.length,
            options: CarouselOptions(
              autoPlay: true,
              viewportFraction: 1,
              height: carouselContainerHeight,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            itemBuilder: (context, index, realIndex) {
              final project = widget.items[index];
              return LayoutBuilder(
                builder: (context, constraints) {
                  return Container(
                    child: Flex(
                      direction: constraints.maxWidth > 720
                          ? Axis.horizontal
                          : Axis.vertical,
                      children: [
                        Expanded(
                          flex: constraints.maxWidth > 720 ? 1 : 0,
                          // child: widget.type == 'research' ?
                          child: Container(
                            margin: EdgeInsetsDirectional.only(bottom: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(25))
                            ),
                            clipBehavior: Clip.antiAlias,
                            child: Image.asset(
                              project.imagePath,
                              width: constraints.maxWidth > 720 ? null : 350,
                            ),
                          )
                          //     :
                          // Image.asset(
                          //   project.imagePath,
                          //   width: constraints.maxWidth > 720 ? null : 350,
                          // ),
                        ),
                        SizedBox(
                            width: constraints.maxWidth > 720 ? 25 : 0,
                            height: constraints.maxWidth <= 720 ? 20 : 0),
                        Expanded(
                          flex: constraints.maxWidth > 720 ? 1 : 0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                project.workName,
                                style: GoogleFonts.ibmPlexSansArabic(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 16,
                                ),
                              ),
                              SizedBox(height: 15),
                              Text(
                                project.workBio,
                                style: GoogleFonts.ibmPlexSansArabic(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 32,
                                  height: 1.3,
                                ),
                                maxLines: 4,
                              ),
                              SizedBox(height: 10),
                              Text(
                                project.workDescription,
                                style: TextStyle(
                                    color: kCaptionColor,
                                    fontSize: 15,
                                    height: 1.5),
                                maxLines: 4,
                                overflow: TextOverflow.visible,

                              ),
                              SizedBox(height: 12),
                              Wrap(
                                spacing: 4,
                                runSpacing: 4,
                                children: project.skills
                                    .map((skill) => Chip(
                                          label: Text(skill,
                                              style: TextStyle(
                                                  color: Colors.white)),
                                          backgroundColor: Colors.grey.shade800,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                        ))
                                    .toList(),
                              ),
                              SizedBox(height: 25),
                              Row(
                                children: [
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: kPrimaryColor,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      height: 48,
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 28),
                                      child: TextButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (_) =>
                                                      ProjectDetailsPage(
                                                          project: project)));
                                        },
                                        child: Text(
                                          // "EXPLORE MORE",
                                          AppLocalizations.of(context)!
                                              .exploreMore,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border:
                                            Border.all(color: kPrimaryColor),
                                      ),
                                      height: 48,
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 28),
                                      child: TextButton(
                                        onPressed: () => _carouselController
                                            .animateToPage(index + 1),
                                        child: Text(
                                          AppLocalizations.of(context)!.next,
                                          style: TextStyle(
                                              color: kPrimaryColor,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:web_portfolio/models/works_carousel_item_model.dart';
// import 'package:web_portfolio/utils/constants.dart';
// import 'package:web_portfolio/utils/screen_helper.dart';
// import '../../disply_pages/app_project_details_page.dart';
//
// class ProjectsSection extends StatefulWidget {
//   @override
//   State<ProjectsSection> createState() => _ProjectsSectionState();
// }
//
// class _ProjectsSectionState extends State<ProjectsSection>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//
//   @override
//   void initState() {
//     _tabController = TabController(length: 2, vsync: this);
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ScreenHelper(
//       desktop: _buildUi(kDesktopMaxWidth, context),
//       tablet: _buildUi(kTabletMaxWidth, context),
//       mobile: _buildUi(getMobileMaxWidth(context), context),
//     );
//   }
//
//   Widget _buildUi(double width, BuildContext context) {
//     int index1=0;
//     double carouselContainerHeight = 0;
//     return StatefulBuilder(builder: (context, setState) {
//       index1 == 1
//           ? (!ScreenHelper.isHorizantal(context) &&
//           (ScreenHelper.isMobile(context) ||
//               ScreenHelper.isTablet(context))
//           ?
//       // carouselContainerHeight = MediaQuery.of(context).size.width * (.95):
//       carouselContainerHeight = MediaQuery.of(context).size.width *
//           (ScreenHelper.isMobile(context) ? 0.95 : 0.7)
//           : carouselContainerHeight = MediaQuery.of(context).size.height *
//           (ScreenHelper.isMobile(context)
//               ? (MediaQuery.of(context).size.height < 800 ? 0.95 :0.85)
//               : 1.2))
//           : (!ScreenHelper.isHorizantal(context) &&
//           (ScreenHelper.isMobile(context) ||
//               ScreenHelper.isTablet(context))
//           ? carouselContainerHeight = MediaQuery.of(context).size.height *
//           (ScreenHelper.isMobile(context) ? 1.3 : 0.6)
//           : carouselContainerHeight = MediaQuery.of(context).size.height *
//           (ScreenHelper.isMobile(context)
//               ? (MediaQuery.of(context).size.height < 800 ? 1.4 :1.1)
//               : .60));
//       return Center(
//         child: Container(
//           // width: double.infinity,
//           constraints: BoxConstraints(
//             maxWidth: width,
//             minWidth: width,
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 "Selected Projects",
//                 style: GoogleFonts.ibmPlexSansArabic(
//                     color: Colors.white,
//                     fontWeight: FontWeight.w900,
//                     fontSize: 30),
//               ),
//               SizedBox(height: 15),
//               TabBar(
//                 controller: _tabController,
//                 labelColor: kPrimaryColor,
//                 unselectedLabelColor: Colors.white,
//                 indicatorColor: kPrimaryColor,
//                 onTap: (value) {
//                   setState(() {
//                     index1=value;
//                   });
//                 },
//                 tabs: [
//                   Tab(text: "Mobile Apps"),
//                   Tab(text: "Web Projects"),
//                 ],
//               ),
//               SizedBox(height: 20),
//               Container(
//                 height: carouselContainerHeight,
//                 // index1 == 0 ?
//                 // MediaQuery.of(context).size.height * 1.1
//                 //       : MediaQuery.of(context).size.height * 0.85 ,
//                 child: TabBarView(
//                   controller: _tabController,
//                   children: [
//                     ProjectsCarousel(
//                       isWeb: false,
//                       items: mobileProjects,
//                       width: width,
//                     ),
//                     ProjectsCarousel(
//                       isWeb: true,
//                       items: webProjects,
//                       width: width,
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       );
//     },);
//   }
//
//   final List<WorksCarouselItemModel> mobileProjects = [
//     WorksCarouselItemModel(
//       imagePath: "assets/spaceApp.png",
//       skills: [
//         'Flutter',
//         'CarouselSlider',
//         'Responsive UI',
//         'State Management',
//         'LayoutBuilder',
//         'UX Design'
//       ],
//       workName: "SPACE APP",
//       workBio: "FIRST UNIVERSAL\nPalestinian Martyrs App 🇵🇸",
//       workDescription:
//       "This app is the first global platform of its kind to commemorate Palestinian martyrs through a digital archive that preserves their faces, biographies, and sacrifices, free from the censorship of algorithms and the limits of platforms.",
//     ),
//     WorksCarouselItemModel(
//       imagePath: "assets/bookReder.png",
//       skills: [
//         'UX Research',
//         'UI/UX Design',
//         'Wireframing',
//         'Prototyping',
//         'Figma',
//         'Typography',
//         'Dark Mode Design'
//       ],
//       workName: "BOOK READER APP",
//       workBio: "VERSE FLOW\nA Modern Reading Experience 📚",
//       workDescription:
//       "A sleek and minimal book reader app design focused on user comfort and readability. The interface features adjustable text size, dark/light themes, smooth page transitions, and an elegant bookshelf layout.",
//     ),
//     WorksCarouselItemModel(
//       imagePath: "assets/ios.png",
//       skills: [
//         'Energy Dashboard',
//         'Data Visualization',
//         'UI/UX Design',
//         'Dark Mode',
//         'Prototyping',
//         'Figma'
//       ],
//       workName: "POWER TRACKER APP",
//       workBio: "Powerful Start\nSmart Electricity Load Monitoring ⚡",
//       workDescription:
//       "A modern and intuitive UI design for a smart electricity load tracking app. The design features real-time consumption graphs, device-level monitoring, and customizable alerts for overloads. ",
//     ),
//     WorksCarouselItemModel(
//       imagePath: "assets/TRADER.png",
//       skills: [
//         'Financial Dashboard',
//         'Dark Mode UI',
//         'Stock Charts',
//         'Figma',
//         'Prototyping',
//         'UI/UX Design'
//       ],
//       workName: "TRADER APP",
//       workBio: "SMART & SIMPLE\nStock Trading Platform 📈",
//       workDescription:
//       "A clean, intuitive UI design for a stock trading and portfolio tracking app. The design focuses on real-time market data, interactive charts, watchlists, and seamless navigation — offering both new and experienced traders.",
//     ),
//     WorksCarouselItemModel(
//       imagePath: "assets/MONEY.png",
//       skills: [
//         'UI/UX Design',
//         'Government Services UI',
//         'Figma',
//         'Arabic RTL Design',
//         'Accessible Design',
//         'Data Visualization'
//       ],
//       workName: "PENSION AUTHORITY APP",
//       workBio: "SMART SERVICES\nfor Palestinian Retirees 🇵🇸",
//       workDescription:
//       "A clear and accessible UI design for the Palestinian Pension Authority mobile app. The interface allows retirees to view their monthly pension details, request official documents, track service years, and receive updates from the authority.",
//     ),
//     WorksCarouselItemModel(
//       imagePath: "assets/HAPPY_SEASON.png",
//       skills: [
//         'UI/UX Design',
//         'Event Booking Flow',
//         'Clean Layout',
//         'Elegant Color Palette',
//         'Arabic RTL Support',
//         'Prototyping'
//       ],
//       workName: "HAPPY SEASON APP",
//       workBio: "STARTS HERE\nModern Weddings& Event Booking 💍",
//       workDescription:
//       "An elegant and user-friendly UI design for a wedding and event venue booking app. Happy Season helps users explore, compare, and book wedding halls and related services with ease.",
//     ),
//   ];
//
//   final List<WorksCarouselItemModel> webProjects = [
//     WorksCarouselItemModel(
//       imagePath: "assets/nawaWebsite.png",
//       skills: [
//         'UI/UX Design',
//         'Figma',
//         'Responsive Web',
//         'Cultural Theme',
//         'Nonprofit Design',
//         'Child-Friendly UI'
//       ],
//       workName: "NAWA WEBSITE",
//       workBio: "LITTLE HEARTS\n& DEEP ROOTS",
//       workDescription:
//       "A warm and inviting website UI designed for a nonprofit organization dedicated to preserving cultural heritage and supporting children's development.",
//     ),
//     WorksCarouselItemModel(
//       imagePath: "assets/constructionLanding.png",
//       skills: [
//         'UI/UX Design',
//         'Landing Page',
//         'Responsive Web',
//         'Figma',
//         'Hero Sections',
//         'Corporate Design'
//       ],
//       workName: "GLOBAL BUILDERS",
//       workBio: "WORLDWIDE\nCONSTRUCTION",
//       workDescription:
//       "A modern and professional landing page design for a global construction company. The layout features bold typography, strong visual hierarchy, trust-building elements, and service highlights.",
//     ),
//     WorksCarouselItemModel(
//       imagePath: "assets/companyDashboardUI.png",
//       skills: [
//         'UI/UX Design',
//         'Dashboard Layout',
//         'Figma',
//         'Data Visualization',
//         'Responsive Web',
//         'Dark Mode'
//       ],
//       workName: "COMPANY DASHBOARD",
//       workBio: "MODERN & CLEAN\nINTERNAL ADMIN PANEL",
//       workDescription:
//       "An intuitive and scalable dashboard UI designed for internal company management. The layout includes analytics cards, sidebar navigation, employee management modules, and real-time charts.",
//     ),
//   ];
// }
//
// class ProjectsCarousel extends StatefulWidget {
//   final List<WorksCarouselItemModel> items;
//   final double width;
//   final bool isWeb;
//
//   ProjectsCarousel(
//       {required this.items, required this.width, required this.isWeb});
//
//   @override
//   State<ProjectsCarousel> createState() => _ProjectsCarouselState();
// }
//
// class _ProjectsCarouselState extends State<ProjectsCarousel> {
//   final CarouselSliderController _carouselController =
//   CarouselSliderController();
//   int _currentIndex = 0;
//   double carouselContainerHeight = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: ScreenHelper(
//         desktop: widget.isWeb ? _buildWebUi(kDesktopMaxWidth, context) : _buildMobileUi(kDesktopMaxWidth, context),
//         tablet: widget.isWeb ? _buildWebUi(kTabletMaxWidth, context) : _buildMobileUi(kTabletMaxWidth, context),
//         mobile: widget.isWeb ? _buildWebUi(getMobileMaxWidth(context), context) : _buildMobileUi(getMobileMaxWidth(context), context),
//       ),
//     );
//   }
//
//   Widget _buildMobileUi(double width,BuildContext context) {
//     !ScreenHelper.isHorizantal(context) && (ScreenHelper.isMobile(context) || ScreenHelper.isTablet(context)) ?
//     carouselContainerHeight = MediaQuery.of(context).size.height * (ScreenHelper.isMobile(context) ? 1.3 : 0.6) :
//     carouselContainerHeight = MediaQuery.of(context).size.height *
//         (ScreenHelper.isMobile(context) ? (MediaQuery.of(context).size.height < 800 ? 1.4 : 1.1) : .60);
//
//     // double carouselContainerHeight = MediaQuery.of(context).size.height *
//     //     (ScreenHelper.isMobile(context) ? (MediaQuery.of(context).size.height < 800 ? 1.4 : 1.1) : .70);
//     return Container(
//       height: carouselContainerHeight+18,
//       width: double.infinity,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Container(
//             alignment: Alignment.center,
//             child: CarouselSlider(
//               carouselController: _carouselController,
//               options: CarouselOptions(
//                 autoPlay: true,
//                 autoPlayInterval: Duration(seconds: 3),
//                 viewportFraction: 1,
//                 scrollPhysics: AlwaysScrollableScrollPhysics(),
//                 height: carouselContainerHeight,
//                 onPageChanged: (index, reason) {
//                   setState(() {
//                     _currentIndex = index;
//                   });
//                 },
//               ),
//               items: List.generate(
//                 widget.items.length,
//                     (index) => Builder(
//                   builder: (BuildContext context) {
//                     return Center(
//                       child: LayoutBuilder(
//                         builder: (context, constraints) {
//                           return Container(
//                             constraints: BoxConstraints(
//                               maxWidth: width,
//                               minWidth: width,
//                             ),
//                             child: Flex(
//                               direction: constraints.maxWidth > 720
//                                   ? Axis.horizontal
//                                   : Axis.vertical,
//                               children: [
//                                 // Disable expanded on smaller screen to avoid Render errors by setting flex to 0
//                                 Expanded(
//                                   flex: constraints.maxWidth > 720.0 ? 1 : 0,
//                                   child: Image.asset(
//                                     widget.items[index].imagePath,
//                                     // Set width for image on smaller screen
//                                     width: constraints.maxWidth > 720.0 ? null : 350.0,
//                                   ),
//                                 ),
//                                 Expanded(
//                                   flex: constraints.maxWidth > 720.0 ? 1 : 0,
//                                   child: Column(
//                                     mainAxisAlignment: MainAxisAlignment.center,
//                                     crossAxisAlignment: CrossAxisAlignment.start,
//                                     children: [
//                                       Text(
//                                         widget.items[index].workName,
//                                         style: GoogleFonts.ibmPlexSansArabic(
//                                           color: kPrimaryColor,
//                                           fontWeight: FontWeight.w900,
//                                           fontSize: 16.0,
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         height: 15.0,
//                                       ),
//                                       Text(
//                                         widget.items[index].workBio,
//                                         style: GoogleFonts.ibmPlexSansArabic(
//                                           color: Colors.white,
//                                           fontWeight: FontWeight.w900,
//                                           height: 1.3,
//                                           fontSize: 35.0,
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         height: 10.0,
//                                       ),
//                                       Text(
//                                         widget.items[index].workDescription,
//                                         style: GoogleFonts.ibmPlexSansArabic(
//                                           color: kCaptionColor,
//                                           height: 1.5,
//                                           fontSize: 15.0,
//                                         ),
//                                       ),
//                                       SizedBox(
//                                         height: 12.0,
//                                       ),
//                                       Wrap(
//                                         spacing: 4.0,
//                                         runSpacing: 4.0,
//                                         children: widget.items[index].skills.map((skill) => Chip(
//                                           label: Text(
//                                             skill,
//                                             style: TextStyle(color: Colors.white),
//                                           ),
//                                           backgroundColor: Colors.grey.shade800,
//                                           shape: RoundedRectangleBorder(
//                                             borderRadius: BorderRadius.circular(20),
//                                           ),
//                                         )).toList(),
//                                       ),
//                                       SizedBox(
//                                         height: 25.0,
//                                       ),
//                                       Row(
//                                         children: [
//                                           MouseRegion(
//                                             cursor: SystemMouseCursors.click,
//                                             child: Container(
//                                               decoration: BoxDecoration(
//                                                 color: kPrimaryColor,
//                                                 borderRadius: BorderRadius.circular(8.0),
//                                               ),
//                                               height: 48.0,
//                                               padding: EdgeInsets.symmetric(
//                                                 horizontal: ScreenHelper.isMobile(context) ? 12 : 28.0,
//                                               ),
//                                               child: TextButton(
//                                                 onPressed: () {
//
//                                                   Navigator.push(
//                                                     context,
//                                                     MaterialPageRoute(
//                                                       builder: (_) => ProjectDetailsPage(project: widget.items[index]),
//                                                     ),
//                                                   );
//                                                 },
//                                                 child: Center(
//                                                   child: Text(
//                                                     "EXPLORE MORE",
//                                                     style: GoogleFonts.ibmPlexSansArabic(
//                                                       color: Colors.white,
//                                                       fontSize: 13.0,
//                                                       fontWeight: FontWeight.bold,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           ),
//                                           SizedBox(
//                                             width: 10.0,
//                                           ),
//                                           MouseRegion(
//                                             cursor: SystemMouseCursors.click,
//                                             child: Container(
//                                               decoration: BoxDecoration(
//                                                 borderRadius: BorderRadius.circular(8.0),
//                                                 border: Border.all(
//                                                   color: kPrimaryColor,
//                                                 ),
//                                               ),
//                                               height: 48.0,
//                                               padding: EdgeInsets.symmetric(horizontal: ScreenHelper.isMobile(context) ? 12 : 28.0,),
//                                               child: TextButton(
//                                                 onPressed: () => _carouselController.animateToPage(index+1),
//                                                 child: Center(
//                                                   child: Text(
//                                                     "NEXT APP",
//                                                     style: GoogleFonts.ibmPlexSansArabic(
//                                                       color: kPrimaryColor,
//                                                       fontSize: 13.0,
//                                                       fontWeight: FontWeight.bold,
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                           )
//                                         ],
//                                       )
//                                     ],
//                                   ),
//                                 )
//                               ],
//                             ),
//                           );
//                         },
//                       ),
//                     );
//                   },
//                 ),
//               ).toList(),
//             ),
//           ),
//           // Wrap(
//           //   alignment: WrapAlignment.center,
//           //   crossAxisAlignment: WrapCrossAlignment.center,
//           //   spacing: 8.0,
//           //   children: List.generate(applicationItems.length, (index) {
//           //     const int visibleCount = 3;
//           //     int halfWindow = visibleCount ~/ 2;
//           //
//           //     int start = (_currentIndex - halfWindow).clamp(0, applicationItems.length - visibleCount);
//           //     int end = (start + visibleCount).clamp(0, applicationItems.length);
//           //
//           //     bool isInWindow = index >= start && index < end;
//           //     bool isActive = index == _currentIndex;
//           //
//           //     double width = isActive ? 32 : (isInWindow ? 12 : 6);
//           //     double height = isInWindow ? 12 : 6;
//           //     Color color = isActive
//           //         ? kPrimaryColor
//           //         : (isInWindow ? Colors.grey : Colors.grey.withOpacity(0.3));
//           //
//           //     return GestureDetector(
//           //       onTap: () => _carouselController.animateToPage(index),
//           //       child: AnimatedContainer(
//           //         duration: Duration(milliseconds: 300),
//           //         width: width,
//           //         height: height,
//           //         decoration: BoxDecoration(
//           //           color: color,
//           //           borderRadius: BorderRadius.circular(15),
//           //         ),
//           //       ),
//           //     );
//           //   }),
//           // ),
//           // SizedBox(height: 12),
//
//         ],
//       ),
//     );
//   }
//   Widget _buildWebUi(double width, BuildContext context) {
//     !ScreenHelper.isHorizantal(context) && (ScreenHelper.isMobile(context) || ScreenHelper.isTablet(context))?
//     // carouselContainerHeight = MediaQuery.of(context).size.width * (.95):
//     carouselContainerHeight = MediaQuery.of(context).size.width * (ScreenHelper.isMobile(context) ? 0.95 : 0.7):
//     carouselContainerHeight = MediaQuery.of(context).size.height *
//         (ScreenHelper.isMobile(context) ? (MediaQuery.of(context).size.height < 800 ? 0.85: 0.7) : .70);
//     // double carouselContainerHeight = MediaQuery.of(context).size.height *
//     //     (ScreenHelper.isMobile(context) ? (MediaQuery.of(context).size.height < 800 ? 0.95: 0.7) : .70);
//     return Container(
//       // height: carouselContainerHeight+40,
//       width: double.infinity,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//
//           Container(
//             alignment: Alignment.center,
//             child: CarouselSlider(
//               carouselController: _carouselController,
//               options: CarouselOptions(
//                 autoPlay: true,
//                 autoPlayInterval: Duration(seconds: 5),
//                 viewportFraction: 1,
//                 scrollPhysics: AlwaysScrollableScrollPhysics(),
//                 height: ScreenHelper.isMobile(context) ? carouselContainerHeight/0.8 : carouselContainerHeight/1.3,
//                 onPageChanged: (index, reason) {
//                   setState(() {
//                     _currentIndex = index;
//                   });
//                 },
//               ),
//               items: List.generate(
//                 widget.items.length,
//                     (index) => Builder(
//                   builder: (BuildContext context) {
//                     return Center(
//                       child: LayoutBuilder(
//                         builder: (context, constraints) {
//                           return Container(
//                             constraints: BoxConstraints(
//                               maxWidth: width,
//                               minWidth: width,
//                             ),
//                             child: Container(
//                               child: Flex(
//                                 direction: constraints.maxWidth > 720
//                                     ? Axis.horizontal
//                                     : Axis.vertical,
//                                 children: [
//                                   // Disable expanded on smaller screen to avoid Render errors by setting flex to 0
//                                   Expanded(
//                                     flex: constraints.maxWidth > 720.0 ? 1 : 0,
//                                     child: Column(
//                                       mainAxisAlignment:
//                                       MainAxisAlignment.center,
//                                       crossAxisAlignment:
//                                       CrossAxisAlignment.start,
//                                       children: [
//                                         Text(
//                                           widget.items[index].workName,
//                                           style: GoogleFonts.oswald(
//                                             color: kPrimaryColor,
//                                             fontWeight: FontWeight.w900,
//                                             fontSize: 16.0,
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           height: 15.0,
//                                         ),
//                                         Text(
//                                           widget.items[index].workBio,
//                                           style: GoogleFonts.oswald(
//                                             color: Colors.white,
//                                             fontWeight: FontWeight.w900,
//                                             height: 1.3,
//                                             fontSize: 35.0,
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           height: 10.0,
//                                         ),
//                                         Text(
//                                           widget.items[index].workDescription,
//                                           style: TextStyle(
//                                             color: kCaptionColor,
//                                             height: 1.5,
//                                             fontSize: 15.0,
//                                           ),
//                                         ),
//                                         SizedBox(
//                                           height: 12.0,
//                                         ),
//                                         Wrap(
//                                           spacing: 4.0,
//                                           runSpacing: 4.0,
//                                           children: widget.items[index].skills.map((skill) => Chip(
//                                             label: Text(
//                                               skill,
//                                               style: TextStyle(color: Colors.white),
//                                             ),
//                                             backgroundColor: Colors.grey.shade800,
//                                             shape: RoundedRectangleBorder(
//                                               borderRadius: BorderRadius.circular(20),
//                                             ),
//                                           )).toList(),
//                                         ),
//                                         SizedBox(
//                                           height: 25.0,
//                                         ),
//                                         Row(
//                                           children: [
//                                             MouseRegion(
//                                               cursor: SystemMouseCursors.click,
//                                               child: Container(
//                                                 decoration: BoxDecoration(
//                                                   color: kPrimaryColor,
//                                                   borderRadius:
//                                                   BorderRadius.circular(
//                                                       8.0),
//                                                 ),
//                                                 height: 48.0,
//                                                 padding: EdgeInsets.symmetric(
//                                                   horizontal:
//                                                   ScreenHelper.isMobile(
//                                                       context)
//                                                       ? 12
//                                                       : 28.0,
//                                                 ),
//                                                 child: TextButton(
//                                                   onPressed: () {},
//                                                   child: Center(
//                                                     child: Text(
//                                                       "EXPLORE MORE",
//                                                       style: TextStyle(
//                                                         color: Colors.white,
//                                                         fontSize: 13.0,
//                                                         fontWeight:
//                                                         FontWeight.bold,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             ),
//                                             SizedBox(
//                                               width: 10.0,
//                                             ),
//                                             MouseRegion(
//                                               cursor: SystemMouseCursors.click,
//                                               child: Container(
//                                                 decoration: BoxDecoration(
//                                                   borderRadius:
//                                                   BorderRadius.circular(
//                                                       8.0),
//                                                   border: Border.all(
//                                                     color: kPrimaryColor,
//                                                   ),
//                                                 ),
//                                                 height: 48.0,
//                                                 padding: EdgeInsets.symmetric(
//                                                     horizontal:
//                                                     ScreenHelper.isMobile(
//                                                         context)
//                                                         ? 12
//                                                         : 28.0),
//                                                 child: TextButton(
//                                                   onPressed: () => _carouselController.animateToPage(index+1),
//                                                   child: Center(
//                                                     child: Text(
//                                                       "NEXT APP",
//                                                       style: TextStyle(
//                                                         color: kPrimaryColor,
//                                                         fontSize: 13.0,
//                                                         fontWeight:
//                                                         FontWeight.bold,
//                                                       ),
//                                                     ),
//                                                   ),
//                                                 ),
//                                               ),
//                                             )
//                                           ],
//                                         ),
//                                         SizedBox(
//                                           height: 70.0,
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                   SizedBox(
//                                     width: 25.0,
//                                   ),
//                                   Expanded(
//                                     flex: constraints.maxWidth > 720.0 ? 1 : 0,
//                                     child: Image.asset(
//                                       widget.items[index].imagePath,
//                                       // Set width for image on smaller screen
//                                       width: constraints.maxWidth > 720.0
//                                           ? null
//                                           : 350.0,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           );
//                         },
//                       ),
//                     );
//                   },
//                 ),
//               ).toList(),
//             ),
//           ),
//           // Wrap(
//           //   alignment: WrapAlignment.center,
//           //   crossAxisAlignment: WrapCrossAlignment.center,
//           //   spacing: 8.0,
//           //   children: List.generate(WebsiteItems.length, (index) {
//           //     const int visibleCount = 3;
//           //     int halfWindow = visibleCount ~/ 2;
//           //
//           //     int start = (_currentIndex - halfWindow).clamp(0, WebsiteItems.length - visibleCount);
//           //     int end = (start + visibleCount).clamp(0, WebsiteItems.length);
//           //
//           //     bool isInWindow = index >= start && index < end;
//           //     bool isActive = index == _currentIndex;
//           //
//           //     double width = isActive ? 32 : (isInWindow ? 12 : 6);
//           //     double height = isInWindow ? 12 : 6;
//           //     Color color = isActive
//           //         ? kPrimaryColor
//           //         : (isInWindow ? Colors.grey : Colors.grey.withOpacity(0.3));
//           //
//           //     return GestureDetector(
//           //       onTap: () => _carouselController.animateToPage(index),
//           //       child: AnimatedContainer(
//           //         duration: Duration(milliseconds: 300),
//           //         width: width,
//           //         height: height,
//           //         decoration: BoxDecoration(
//           //           color: color,
//           //           borderRadius: BorderRadius.circular(15),
//           //         ),
//           //       ),
//           //     );
//           //   }),
//           // ),
//
//         ],
//       ),
//     );
//   }
// }
