import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'HOME'**
  String get home;

  /// No description provided for @services.
  ///
  /// In en, this message translates to:
  /// **'SERVICES'**
  String get services;

  /// No description provided for @skills.
  ///
  /// In en, this message translates to:
  /// **'SKILLS'**
  String get skills;

  /// No description provided for @education.
  ///
  /// In en, this message translates to:
  /// **'EDUCATION'**
  String get education;

  /// No description provided for @portfolio.
  ///
  /// In en, this message translates to:
  /// **'PORTFOLIO'**
  String get portfolio;

  /// No description provided for @testimonials.
  ///
  /// In en, this message translates to:
  /// **'TESTIMONIALS'**
  String get testimonials;

  /// No description provided for @blogs.
  ///
  /// In en, this message translates to:
  /// **'BLOGS'**
  String get blogs;

  /// No description provided for @creativeLab.
  ///
  /// In en, this message translates to:
  /// **'CREATIVE-HUB'**
  String get creativeLab;

  /// No description provided for @hireMe.
  ///
  /// In en, this message translates to:
  /// **'CONTACT ME'**
  String get hireMe;

  /// No description provided for @uxuiProductDesign.
  ///
  /// In en, this message translates to:
  /// **'🎨 UXUI PRODUCT DESIGN'**
  String get uxuiProductDesign;

  /// No description provided for @flutterAppDeveloper.
  ///
  /// In en, this message translates to:
  /// **'🚀 FLUTTER APP DEVELOPER'**
  String get flutterAppDeveloper;

  /// No description provided for @najiAt.
  ///
  /// In en, this message translates to:
  /// **'A-NAJI'**
  String get najiAt;

  /// No description provided for @abuMousa.
  ///
  /// In en, this message translates to:
  /// **'BEN MOUSA'**
  String get abuMousa;

  /// No description provided for @uxUiDesignerSpecialist.
  ///
  /// In en, this message translates to:
  /// **'UX/UI Designer Specialist, based in Palestine  🇵🇸'**
  String get uxUiDesignerSpecialist;

  /// No description provided for @flutterFullStackDeveloper.
  ///
  /// In en, this message translates to:
  /// **'Flutter Full-stack developer, based in Palestine 🇵🇸'**
  String get flutterFullStackDeveloper;

  /// No description provided for @needCustomWebsiteOrAppDesign.
  ///
  /// In en, this message translates to:
  /// **'Need a custom website or app Design?'**
  String get needCustomWebsiteOrAppDesign;

  /// No description provided for @needCustomWebsiteOrApp.
  ///
  /// In en, this message translates to:
  /// **'Need a custom website or app?'**
  String get needCustomWebsiteOrApp;

  /// No description provided for @gotProjectLetsTalk.
  ///
  /// In en, this message translates to:
  /// **'Got a project? Let\'s talk.'**
  String get gotProjectLetsTalk;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'GET STARTED'**
  String get getStarted;

  /// No description provided for @betterDesignBetterExperiences.
  ///
  /// In en, this message translates to:
  /// **'✨ BETTER DESIGN,\nBETTER EXPERIENCES'**
  String get betterDesignBetterExperiences;

  /// No description provided for @downloadCv.
  ///
  /// In en, this message translates to:
  /// **'📄 DOWNLOAD CV'**
  String get downloadCv;

  /// No description provided for @research.
  ///
  /// In en, this message translates to:
  /// **'Research'**
  String get research;

  /// No description provided for @researchDescription.
  ///
  /// In en, this message translates to:
  /// **'Understanding user needs, market trends, and defining the problem.'**
  String get researchDescription;

  /// No description provided for @design.
  ///
  /// In en, this message translates to:
  /// **'design'**
  String get design;

  /// No description provided for @designDescription.
  ///
  /// In en, this message translates to:
  /// **'Creating wireframes, UI/UX prototypes, and visual concepts.'**
  String get designDescription;

  /// No description provided for @develop.
  ///
  /// In en, this message translates to:
  /// **'DEVELOP'**
  String get develop;

  /// No description provided for @developDescription.
  ///
  /// In en, this message translates to:
  /// **'Implementing responsive and functional interfaces using code.'**
  String get developDescription;

  /// No description provided for @write.
  ///
  /// In en, this message translates to:
  /// **'WRITE'**
  String get write;

  /// No description provided for @writeDescription.
  ///
  /// In en, this message translates to:
  /// **'Crafting content, documentation, and meaningful copy.'**
  String get writeDescription;

  /// No description provided for @promote.
  ///
  /// In en, this message translates to:
  /// **'PROMOTE'**
  String get promote;

  /// No description provided for @promoteDescription.
  ///
  /// In en, this message translates to:
  /// **'Marketing the product, building awareness, and acquiring users.'**
  String get promoteDescription;

  /// No description provided for @deploy.
  ///
  /// In en, this message translates to:
  /// **'DEPLOY'**
  String get deploy;

  /// No description provided for @deployDescription.
  ///
  /// In en, this message translates to:
  /// **'Launching the product on app stores or web with stability checks.'**
  String get deployDescription;

  /// No description provided for @clients.
  ///
  /// In en, this message translates to:
  /// **'Clients'**
  String get clients;

  /// No description provided for @projects.
  ///
  /// In en, this message translates to:
  /// **'Projects'**
  String get projects;

  /// No description provided for @awards.
  ///
  /// In en, this message translates to:
  /// **'Awards'**
  String get awards;

  /// No description provided for @yearsExperience.
  ///
  /// In en, this message translates to:
  /// **'Years\nExperience'**
  String get yearsExperience;

  /// No description provided for @uxResearchUserJourney.
  ///
  /// In en, this message translates to:
  /// **'UX Research & User Journey'**
  String get uxResearchUserJourney;

  /// No description provided for @uiDesignFigmaXd.
  ///
  /// In en, this message translates to:
  /// **'UI Design (Figma || Xd)'**
  String get uiDesignFigmaXd;

  /// No description provided for @flutterAndDart.
  ///
  /// In en, this message translates to:
  /// **'Flutter & Dart'**
  String get flutterAndDart;

  /// No description provided for @stateManagement.
  ///
  /// In en, this message translates to:
  /// **'State Management (Provider / Getx)'**
  String get stateManagement;

  /// No description provided for @responsiveAndAccessibleDesign.
  ///
  /// In en, this message translates to:
  /// **'Responsive & Accessible Design'**
  String get responsiveAndAccessibleDesign;

  /// No description provided for @apiIntegration.
  ///
  /// In en, this message translates to:
  /// **'API Integration'**
  String get apiIntegration;

  /// No description provided for @problemSolving.
  ///
  /// In en, this message translates to:
  /// **'Problem Solving'**
  String get problemSolving;

  /// No description provided for @communicationAndTeamwork.
  ///
  /// In en, this message translates to:
  /// **'Communication & Teamwork'**
  String get communicationAndTeamwork;

  /// No description provided for @timeManagement.
  ///
  /// In en, this message translates to:
  /// **'Time Management'**
  String get timeManagement;

  /// No description provided for @mySkillToolbox.
  ///
  /// In en, this message translates to:
  /// **'🛠️ MY SKILL TOOLBOX'**
  String get mySkillToolbox;

  /// No description provided for @mySkillToolboxDescription.
  ///
  /// In en, this message translates to:
  /// **'Here’s a set of skills I’ve honed through real-world projects 🌍 — from designing smooth user experiences 🎨 to building functional apps with Flutter 📱. Always learning, always creating ✨.'**
  String get mySkillToolboxDescription;

  /// No description provided for @myLearningJourney.
  ///
  /// In en, this message translates to:
  /// **'🎓 MY LEARNING JOURNEY'**
  String get myLearningJourney;

  /// No description provided for @myLearningJourneyDescription.
  ///
  /// In en, this message translates to:
  /// **'Education has been the foundation 📚, but the real growth came from building, breaking, and rebuilding 💡. Every lesson shaped the way I create today 🚀.'**
  String get myLearningJourneyDescription;

  /// No description provided for @mbaDescription.
  ///
  /// In en, this message translates to:
  /// **'Learned advanced business strategies, leadership skills, and project management techniques to enhance organizational growth and personal career development.'**
  String get mbaDescription;

  /// No description provided for @masterInBusinessAdministration.
  ///
  /// In en, this message translates to:
  /// **'Master in Business Administration'**
  String get masterInBusinessAdministration;

  /// No description provided for @mbaPeriod.
  ///
  /// In en, this message translates to:
  /// **'2025 - 2022'**
  String get mbaPeriod;

  /// No description provided for @flutterDevelopmentUxDesign.
  ///
  /// In en, this message translates to:
  /// **'Flutter Development & UX Design'**
  String get flutterDevelopmentUxDesign;

  /// No description provided for @flutterDevelopmentUxDesignDescription.
  ///
  /// In en, this message translates to:
  /// **'Worked on Flutter app development and UX design, mastering widget creation, state management, user interface prototyping, and usability testing.'**
  String get flutterDevelopmentUxDesignDescription;

  /// No description provided for @flutterDevelopmentUxDesignPeriod.
  ///
  /// In en, this message translates to:
  /// **'2022 - 2020'**
  String get flutterDevelopmentUxDesignPeriod;

  /// No description provided for @softwareEngineering.
  ///
  /// In en, this message translates to:
  /// **'Software Engineering'**
  String get softwareEngineering;

  /// No description provided for @softwareEngineeringDescription.
  ///
  /// In en, this message translates to:
  /// **'Studied software development methodologies, data structures, algorithms, and modern programming languages with hands-on experience in application design.'**
  String get softwareEngineeringDescription;

  /// No description provided for @softwareEngineeringPeriod.
  ///
  /// In en, this message translates to:
  /// **'2020 - 2016'**
  String get softwareEngineeringPeriod;

  /// No description provided for @mechatronicsEngineering.
  ///
  /// In en, this message translates to:
  /// **'Mechatronics Engineering'**
  String get mechatronicsEngineering;

  /// No description provided for @mechatronicsEngineeringDescription.
  ///
  /// In en, this message translates to:
  /// **'Focused on mechanical systems, electronics, and automation technologies, gaining skills in robotics, control systems, and embedded programming.'**
  String get mechatronicsEngineeringDescription;

  /// No description provided for @mechatronicsEngineeringPeriod.
  ///
  /// In en, this message translates to:
  /// **'2016 - 2014'**
  String get mechatronicsEngineeringPeriod;

  /// No description provided for @projectsBroughtToLife.
  ///
  /// In en, this message translates to:
  /// **'🚀 PROJECTS I’VE BROUGHT TO LIFE'**
  String get projectsBroughtToLife;

  /// No description provided for @projectsBroughtToLifeDescription.
  ///
  /// In en, this message translates to:
  /// **'Each project here 🎨 started as a simple idea 💡 that grew into something real and meaningful ✨. They’re not just designs or apps, but stories I’ve crafted with passion ❤️, time ⏳, and dedication 🙌 — turning visions into experiences.'**
  String get projectsBroughtToLifeDescription;

  /// No description provided for @mobileApps.
  ///
  /// In en, this message translates to:
  /// **'Mobile Apps'**
  String get mobileApps;

  /// No description provided for @mobile.
  ///
  /// In en, this message translates to:
  /// **'Mobile'**
  String get mobile;

  /// No description provided for @webProjects.
  ///
  /// In en, this message translates to:
  /// **'WebSites & Landing Pages'**
  String get webProjects;

  /// No description provided for @web.
  ///
  /// In en, this message translates to:
  /// **'Web'**
  String get web;

  /// No description provided for @aiProjects.
  ///
  /// In en, this message translates to:
  /// **'AI Projects'**
  String get aiProjects;

  /// No description provided for @ai.
  ///
  /// In en, this message translates to:
  /// **'AI'**
  String get ai;

  /// No description provided for @flutter.
  ///
  /// In en, this message translates to:
  /// **'Flutter'**
  String get flutter;

  /// No description provided for @carouselSlider.
  ///
  /// In en, this message translates to:
  /// **'CarouselSlider'**
  String get carouselSlider;

  /// No description provided for @responsiveUi.
  ///
  /// In en, this message translates to:
  /// **'Responsive UI'**
  String get responsiveUi;

  /// No description provided for @stateManagementKey.
  ///
  /// In en, this message translates to:
  /// **'State Management'**
  String get stateManagementKey;

  /// No description provided for @layoutBuilder.
  ///
  /// In en, this message translates to:
  /// **'LayoutBuilder'**
  String get layoutBuilder;

  /// No description provided for @uxDesign.
  ///
  /// In en, this message translates to:
  /// **'UX Design'**
  String get uxDesign;

  /// No description provided for @spaceApp.
  ///
  /// In en, this message translates to:
  /// **'SPACE APP'**
  String get spaceApp;

  /// No description provided for @palestinianMartyrsApp.
  ///
  /// In en, this message translates to:
  /// **'FIRST UNIVERSAL\nPalestinian Martyrs App 🇵🇸'**
  String get palestinianMartyrsApp;

  /// No description provided for @palestinianMartyrsAppDescription.
  ///
  /// In en, this message translates to:
  /// **'This app is the first global platform of its kind to commemorate Palestinian martyrs through a digital archive that preserves their faces, biographies, and sacrifices, free from the censorship of algorithms and the limits of platforms.'**
  String get palestinianMartyrsAppDescription;

  /// No description provided for @uxResearch.
  ///
  /// In en, this message translates to:
  /// **'UX Research'**
  String get uxResearch;

  /// No description provided for @uiUxDesign.
  ///
  /// In en, this message translates to:
  /// **'UI/UX Design'**
  String get uiUxDesign;

  /// No description provided for @wireframing.
  ///
  /// In en, this message translates to:
  /// **'Wireframing'**
  String get wireframing;

  /// No description provided for @prototyping.
  ///
  /// In en, this message translates to:
  /// **'Prototyping'**
  String get prototyping;

  /// No description provided for @figma.
  ///
  /// In en, this message translates to:
  /// **'Figma'**
  String get figma;

  /// No description provided for @typography.
  ///
  /// In en, this message translates to:
  /// **'Typography'**
  String get typography;

  /// No description provided for @darkModeDesign.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode Design'**
  String get darkModeDesign;

  /// No description provided for @bookReaderApp.
  ///
  /// In en, this message translates to:
  /// **'BOOK READER APP'**
  String get bookReaderApp;

  /// No description provided for @verseFlow.
  ///
  /// In en, this message translates to:
  /// **'VERSE FLOW\nA Modern Reading Experience 📚'**
  String get verseFlow;

  /// No description provided for @bookReaderAppDescription.
  ///
  /// In en, this message translates to:
  /// **'A sleek and minimal book reader app design focused on user comfort and readability. The interface features adjustable text size, dark/light themes, smooth page transitions, and an elegant bookshelf layout.'**
  String get bookReaderAppDescription;

  /// No description provided for @energyDashboard.
  ///
  /// In en, this message translates to:
  /// **'Energy Dashboard'**
  String get energyDashboard;

  /// No description provided for @dataVisualization.
  ///
  /// In en, this message translates to:
  /// **'Data Visualization'**
  String get dataVisualization;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get darkMode;

  /// No description provided for @powerTrackerApp.
  ///
  /// In en, this message translates to:
  /// **'POWER TRACKER APP'**
  String get powerTrackerApp;

  /// No description provided for @powerTrackerAppSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Powerful Start\nSmart Electricity Load Monitoring ⚡'**
  String get powerTrackerAppSubtitle;

  /// No description provided for @powerTrackerAppDescription.
  ///
  /// In en, this message translates to:
  /// **'A modern and intuitive UI design for a smart electricity load tracking app. The design features real-time consumption graphs, device-level monitoring, and customizable alerts for overloads.'**
  String get powerTrackerAppDescription;

  /// No description provided for @financialDashboard.
  ///
  /// In en, this message translates to:
  /// **'Financial Dashboard'**
  String get financialDashboard;

  /// No description provided for @stockCharts.
  ///
  /// In en, this message translates to:
  /// **'Stock Charts'**
  String get stockCharts;

  /// No description provided for @exploreMore.
  ///
  /// In en, this message translates to:
  /// **'EXPLORE MORE'**
  String get exploreMore;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'NEXT'**
  String get next;

  /// No description provided for @traderApp.
  ///
  /// In en, this message translates to:
  /// **'TRADER APP'**
  String get traderApp;

  /// No description provided for @traderAppSubtitle.
  ///
  /// In en, this message translates to:
  /// **'SMART & SIMPLE\nStock Trading Platform 📈'**
  String get traderAppSubtitle;

  /// No description provided for @traderAppDescription.
  ///
  /// In en, this message translates to:
  /// **'A clean, intuitive UI design for a stock trading and portfolio tracking app. The design focuses on real-time market data, interactive charts, watchlists, and seamless navigation — offering both new and experienced traders.'**
  String get traderAppDescription;

  /// No description provided for @governmentServicesUi.
  ///
  /// In en, this message translates to:
  /// **'Government Services UI'**
  String get governmentServicesUi;

  /// No description provided for @arabicRtlDesign.
  ///
  /// In en, this message translates to:
  /// **'Arabic RTL Design'**
  String get arabicRtlDesign;

  /// No description provided for @accessibleDesign.
  ///
  /// In en, this message translates to:
  /// **'Accessible Design'**
  String get accessibleDesign;

  /// No description provided for @pensionAuthorityApp.
  ///
  /// In en, this message translates to:
  /// **'PENSION AUTHORITY APP'**
  String get pensionAuthorityApp;

  /// No description provided for @pensionAuthorityAppSubtitle.
  ///
  /// In en, this message translates to:
  /// **'SMART SERVICES\nfor Palestinian Retirees 🇵🇸'**
  String get pensionAuthorityAppSubtitle;

  /// No description provided for @pensionAuthorityAppDescription.
  ///
  /// In en, this message translates to:
  /// **'A clear and accessible UI design for the Palestinian Pension Authority mobile app. The interface allows retirees to view their monthly pension details, request official documents, track service years, and receive updates from the authority.'**
  String get pensionAuthorityAppDescription;

  /// No description provided for @eventBookingFlow.
  ///
  /// In en, this message translates to:
  /// **'Event Booking Flow'**
  String get eventBookingFlow;

  /// No description provided for @cleanLayout.
  ///
  /// In en, this message translates to:
  /// **'Clean Layout'**
  String get cleanLayout;

  /// No description provided for @elegantColorPalette.
  ///
  /// In en, this message translates to:
  /// **'Elegant Color Palette'**
  String get elegantColorPalette;

  /// No description provided for @happySeasonApp.
  ///
  /// In en, this message translates to:
  /// **'HAPPY SEASON APP'**
  String get happySeasonApp;

  /// No description provided for @happySeasonAppSubtitle.
  ///
  /// In en, this message translates to:
  /// **'STARTS HERE\nModern Weddings & Event Booking 💍'**
  String get happySeasonAppSubtitle;

  /// No description provided for @happySeasonAppDescription.
  ///
  /// In en, this message translates to:
  /// **'An elegant and user-friendly UI design for a wedding and event venue booking app. Happy Season helps users explore, compare, and book wedding halls and related services with ease.'**
  String get happySeasonAppDescription;

  /// No description provided for @culturalTheme.
  ///
  /// In en, this message translates to:
  /// **'Cultural Theme'**
  String get culturalTheme;

  /// No description provided for @nonprofitDesign.
  ///
  /// In en, this message translates to:
  /// **'Nonprofit Design'**
  String get nonprofitDesign;

  /// No description provided for @childFriendlyUi.
  ///
  /// In en, this message translates to:
  /// **'Child-Friendly UI'**
  String get childFriendlyUi;

  /// No description provided for @nawaWebsite.
  ///
  /// In en, this message translates to:
  /// **'NAWA WEBSITE'**
  String get nawaWebsite;

  /// No description provided for @nawaWebsiteSubtitle.
  ///
  /// In en, this message translates to:
  /// **'LITTLE HEARTS\n& DEEP ROOTS'**
  String get nawaWebsiteSubtitle;

  /// No description provided for @nawaWebsiteDescription.
  ///
  /// In en, this message translates to:
  /// **'A warm and inviting website UI designed for a nonprofit organization dedicated to preserving cultural heritage and supporting children\'s development.'**
  String get nawaWebsiteDescription;

  /// No description provided for @landingPage.
  ///
  /// In en, this message translates to:
  /// **'Landing Page'**
  String get landingPage;

  /// No description provided for @heroSections.
  ///
  /// In en, this message translates to:
  /// **'Hero Sections'**
  String get heroSections;

  /// No description provided for @corporateDesign.
  ///
  /// In en, this message translates to:
  /// **'Corporate Design'**
  String get corporateDesign;

  /// No description provided for @globalBuilders.
  ///
  /// In en, this message translates to:
  /// **'GLOBAL BUILDERS'**
  String get globalBuilders;

  /// No description provided for @globalBuildersSubtitle.
  ///
  /// In en, this message translates to:
  /// **'WORLDWIDE\nCONSTRUCTION'**
  String get globalBuildersSubtitle;

  /// No description provided for @globalBuildersDescription.
  ///
  /// In en, this message translates to:
  /// **'A modern and professional landing page design for a global construction company. The layout features bold typography, strong visual hierarchy, trust-building elements, and service highlights.'**
  String get globalBuildersDescription;

  /// No description provided for @dashboardLayout.
  ///
  /// In en, this message translates to:
  /// **'Dashboard Layout'**
  String get dashboardLayout;

  /// No description provided for @companyDashboard.
  ///
  /// In en, this message translates to:
  /// **'COMPANY DASHBOARD'**
  String get companyDashboard;

  /// No description provided for @companyDashboardSubtitle.
  ///
  /// In en, this message translates to:
  /// **'MODERN & CLEAN\nINTERNAL ADMIN PANEL'**
  String get companyDashboardSubtitle;

  /// No description provided for @companyDashboardDescription.
  ///
  /// In en, this message translates to:
  /// **'An intuitive and scalable dashboard UI designed for internal company management. The layout includes analytics cards, sidebar navigation, employee management modules, and real-time charts.'**
  String get companyDashboardDescription;

  /// No description provided for @testimonialsDescriptionA.
  ///
  /// In en, this message translates to:
  /// **'Words from amazing people I’ve had the chance to work with 🌟.'**
  String get testimonialsDescriptionA;

  /// No description provided for @testimonialsDescriptionB.
  ///
  /// In en, this message translates to:
  /// **' Their feedback'**
  String get testimonialsDescriptionB;

  /// No description provided for @testimonialsDescriptionC.
  ///
  /// In en, this message translates to:
  /// **' 💌 keeps me inspired to grow, create, and deliver better experiences 🚀.'**
  String get testimonialsDescriptionC;

  /// No description provided for @testimonialAhmedJamal.
  ///
  /// In en, this message translates to:
  /// **'Naji-at is a true professional at what he does and never ceases to amaze me with his beautiful and thoughtful work. I genuinely look forward to working with him again on future projects.'**
  String get testimonialAhmedJamal;

  /// No description provided for @testimonialAhmedJamalRole.
  ///
  /// In en, this message translates to:
  /// **'Flutter Developer'**
  String get testimonialAhmedJamalRole;

  /// No description provided for @testimonialAhmedJamalCompany.
  ///
  /// In en, this message translates to:
  /// **'AHMED JAMAL'**
  String get testimonialAhmedJamalCompany;

  /// No description provided for @testimonialDinaBenSaeed.
  ///
  /// In en, this message translates to:
  /// **'Working with Naji-at was an absolute pleasure. His attention to detail and creative approach made the entire process smooth and inspiring. Highly recommended!'**
  String get testimonialDinaBenSaeed;

  /// No description provided for @testimonialDinaBenSaeedRole.
  ///
  /// In en, this message translates to:
  /// **'Lead Activator - Nawaculture Org'**
  String get testimonialDinaBenSaeedRole;

  /// No description provided for @testimonialDinaBenSaeedCompany.
  ///
  /// In en, this message translates to:
  /// **'DINA BEN-SAEED'**
  String get testimonialDinaBenSaeedCompany;

  /// No description provided for @testimonialLaylaAlMansour.
  ///
  /// In en, this message translates to:
  /// **'Naji-at consistently delivers beyond expectations. His work speaks for itself — elegant, purposeful, and always on time. Can’t wait to collaborate again.'**
  String get testimonialLaylaAlMansour;

  /// No description provided for @testimonialLaylaAlMansourRole.
  ///
  /// In en, this message translates to:
  /// **'Startup Founder'**
  String get testimonialLaylaAlMansourRole;

  /// No description provided for @testimonialLaylaAlMansourCompany.
  ///
  /// In en, this message translates to:
  /// **'Layla Al-Mansour'**
  String get testimonialLaylaAlMansourCompany;

  /// No description provided for @testimonialTahaAtiyah.
  ///
  /// In en, this message translates to:
  /// **'I’ve worked with many professionals, but Naji-at stands out with his dedication, communication, and design sense. He truly understands what the project needs.'**
  String get testimonialTahaAtiyah;

  /// No description provided for @testimonialTahaAtiyahRole.
  ///
  /// In en, this message translates to:
  /// **'Lead Activator IT Specialist'**
  String get testimonialTahaAtiyahRole;

  /// No description provided for @testimonialTahaAtiyahCompany.
  ///
  /// In en, this message translates to:
  /// **'Taha Atiyah - Nawaculture Org'**
  String get testimonialTahaAtiyahCompany;

  /// No description provided for @testimonialAyaMohammed.
  ///
  /// In en, this message translates to:
  /// **'From the first draft to the final delivery, Naji-at was impressive. His designs are not only beautiful but functional. Would definitely work with him again!'**
  String get testimonialAyaMohammed;

  /// No description provided for @testimonialAyaMohammedRole.
  ///
  /// In en, this message translates to:
  /// **'Student'**
  String get testimonialAyaMohammedRole;

  /// No description provided for @testimonialAyaMohammedCompany.
  ///
  /// In en, this message translates to:
  /// **'AYA MOHAMMED'**
  String get testimonialAyaMohammedCompany;

  /// No description provided for @myBlogs.
  ///
  /// In en, this message translates to:
  /// **'✍️ MY BLOGS'**
  String get myBlogs;

  /// No description provided for @myBlogsDescriptionA.
  ///
  /// In en, this message translates to:
  /// **'Read my thoughts 💭,'**
  String get myBlogsDescriptionA;

  /// No description provided for @myBlogsDescriptionB.
  ///
  /// In en, this message translates to:
  /// **' stay trendy 🌍. '**
  String get myBlogsDescriptionB;

  /// No description provided for @myBlogsDescriptionC.
  ///
  /// In en, this message translates to:
  /// **' From lessons learned 📚 to ideas worth sharing 💡, my blog is where creativity meets storytelling 🔥.'**
  String get myBlogsDescriptionC;

  /// No description provided for @inspiration.
  ///
  /// In en, this message translates to:
  /// **'Inspiration'**
  String get inspiration;

  /// No description provided for @howMuchDoesWebsiteCost.
  ///
  /// In en, this message translates to:
  /// **'How Much Does a Website Cost to Build?'**
  String get howMuchDoesWebsiteCost;

  /// No description provided for @readMore.
  ///
  /// In en, this message translates to:
  /// **'Read More'**
  String get readMore;

  /// No description provided for @tenTipsBestPackagingDesign.
  ///
  /// In en, this message translates to:
  /// **'10 Tips How Create Best Packaging Design'**
  String get tenTipsBestPackagingDesign;

  /// No description provided for @creative.
  ///
  /// In en, this message translates to:
  /// **'creative'**
  String get creative;

  /// No description provided for @howGetVisitorsLoveBrand.
  ///
  /// In en, this message translates to:
  /// **'How Get Your Visitors Love Your Brand'**
  String get howGetVisitorsLoveBrand;

  /// No description provided for @blogDateFeb42020.
  ///
  /// In en, this message translates to:
  /// **'February 4, 2020'**
  String get blogDateFeb42020;

  /// No description provided for @transparentThoughtfulPricing.
  ///
  /// In en, this message translates to:
  /// **'💸 TRANSPARENT & THOUGHTFUL PRICING'**
  String get transparentThoughtfulPricing;

  /// No description provided for @transparentThoughtfulPricingDescriptionA.
  ///
  /// In en, this message translates to:
  /// **'Quickly estimate the cost of your project ⚡.'**
  String get transparentThoughtfulPricingDescriptionA;

  /// No description provided for @transparentThoughtfulPricingDescriptionB.
  ///
  /// In en, this message translates to:
  /// **' I personally review each request 🧑‍💻.'**
  String get transparentThoughtfulPricingDescriptionB;

  /// No description provided for @transparentThoughtfulPricingDescriptionC.
  ///
  /// In en, this message translates to:
  /// **' The more details you share, the fairer and more accurate the offer will be 💜.'**
  String get transparentThoughtfulPricingDescriptionC;

  /// No description provided for @startPricingNow.
  ///
  /// In en, this message translates to:
  /// **'START PRICING NOW'**
  String get startPricingNow;

  /// No description provided for @projectsQuoted.
  ///
  /// In en, this message translates to:
  /// **'Projects Quoted'**
  String get projectsQuoted;

  /// No description provided for @customRequests.
  ///
  /// In en, this message translates to:
  /// **'Custom Requests'**
  String get customRequests;

  /// No description provided for @totalPricingRequests.
  ///
  /// In en, this message translates to:
  /// **'Total Pricing Requests'**
  String get totalPricingRequests;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'ADDRESS'**
  String get address;

  /// No description provided for @gazaCity.
  ///
  /// In en, this message translates to:
  /// **'Gaza City'**
  String get gazaCity;

  /// No description provided for @palestineState.
  ///
  /// In en, this message translates to:
  /// **'Palestine State 🇵🇸'**
  String get palestineState;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'PHONE'**
  String get phone;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'EMAIL'**
  String get email;

  /// No description provided for @whatsapp.
  ///
  /// In en, this message translates to:
  /// **'WHATSAPP'**
  String get whatsapp;

  /// No description provided for @copyright.
  ///
  /// In en, this message translates to:
  /// **'Copyright (c) 2020-2025 Naji At Abu-Mousa. All rights Reserved'**
  String get copyright;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @termsConditions.
  ///
  /// In en, this message translates to:
  /// **'Terms & Conditions'**
  String get termsConditions;

  /// No description provided for @machineLearning.
  ///
  /// In en, this message translates to:
  /// **'Machine Learning'**
  String get machineLearning;

  /// No description provided for @artificialIntelligence.
  ///
  /// In en, this message translates to:
  /// **'Artificial Intelligence'**
  String get artificialIntelligence;

  /// No description provided for @deepLearning.
  ///
  /// In en, this message translates to:
  /// **'Deep Learning'**
  String get deepLearning;

  /// No description provided for @decisionSupportSystems.
  ///
  /// In en, this message translates to:
  /// **'Decision Support Systems'**
  String get decisionSupportSystems;

  /// No description provided for @pythonStreamlit.
  ///
  /// In en, this message translates to:
  /// **'Python (Streamlit)'**
  String get pythonStreamlit;

  /// No description provided for @transformerAnalysisWebApp.
  ///
  /// In en, this message translates to:
  /// **'Transformer Analysis Web App'**
  String get transformerAnalysisWebApp;

  /// No description provided for @aiPoweredInsights.
  ///
  /// In en, this message translates to:
  /// **'AI-Powered Insights \nfor Smarter Decisions🧠'**
  String get aiPoweredInsights;

  /// No description provided for @aiPoweredInsightsDescription.
  ///
  /// In en, this message translates to:
  /// **'A web application built with Streamlit that leverages machine learning and AI techniques to analyze data📊, identify patterns💬, and support decision-making🧠. Features include predictive modeling, interactive visualizations, and an intuitive user interface accessible across devices.'**
  String get aiPoweredInsightsDescription;

  /// No description provided for @dataAnalysis.
  ///
  /// In en, this message translates to:
  /// **'Data Analysis'**
  String get dataAnalysis;

  /// No description provided for @predictiveModeling.
  ///
  /// In en, this message translates to:
  /// **'Predictive Modeling'**
  String get predictiveModeling;

  /// No description provided for @barriersOfAi.
  ///
  /// In en, this message translates to:
  /// **'Barriers of AI in Decision Support'**
  String get barriersOfAi;

  /// No description provided for @barriersOfAiSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Technical, Human, Organizational, Financial, and External barriers⚙️'**
  String get barriersOfAiSubtitle;

  /// No description provided for @barriersOfAiDescription.
  ///
  /// In en, this message translates to:
  /// **'This research highlights key obstacles to AI adoption in decision support systems, covering technical⚙️, human🧠, organizational🏢, financial💰, and external factors🌐 that hinder implementation.'**
  String get barriersOfAiDescription;

  /// No description provided for @designerChallenge.
  ///
  /// In en, this message translates to:
  /// **'🎨 Designer Challenge'**
  String get designerChallenge;

  /// No description provided for @figmaChallenge.
  ///
  /// In en, this message translates to:
  /// **'🖌️ Figma Challenge'**
  String get figmaChallenge;

  /// No description provided for @flutterChallenge.
  ///
  /// In en, this message translates to:
  /// **'🚀 Flutter Challenge'**
  String get flutterChallenge;

  /// No description provided for @forsaleAppTitle.
  ///
  /// In en, this message translates to:
  /// **'forSale | دلّني'**
  String get forsaleAppTitle;

  /// No description provided for @forsaleAppSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Life-Sustaining Marketplace in Crisis Zones'**
  String get forsaleAppSubtitle;

  /// No description provided for @forsaleAppDescription.
  ///
  /// In en, this message translates to:
  /// **'A humanitarian-focused mobile marketplace designed for communities under duress, particularly in Gaza. The app organizes the emergent, decentralized economy that arises during displacement—connecting those with surplus essentials (power banks, baby formula, medical supplies) with those in urgent need. Features include verified listings, secure chat, location-based searches, and an offline-first architecture to function in low-connectivity environments.'**
  String get forsaleAppDescription;

  /// No description provided for @realTimeChat.
  ///
  /// In en, this message translates to:
  /// **'Real-Time Chat'**
  String get realTimeChat;

  /// No description provided for @geolocation.
  ///
  /// In en, this message translates to:
  /// **'Geolocation'**
  String get geolocation;

  /// No description provided for @pushNotifications.
  ///
  /// In en, this message translates to:
  /// **'Push Notifications'**
  String get pushNotifications;

  /// No description provided for @encryption.
  ///
  /// In en, this message translates to:
  /// **'End-to-End Encryption'**
  String get encryption;

  /// No description provided for @offlineFirst.
  ///
  /// In en, this message translates to:
  /// **'Offline-First Design'**
  String get offlineFirst;

  /// No description provided for @disasterTech.
  ///
  /// In en, this message translates to:
  /// **'Disaster Response Technology'**
  String get disasterTech;

  /// No description provided for @knowledgeRetentionAI.
  ///
  /// In en, this message translates to:
  /// **'OrgMind: AI-Powered Institutional Memory'**
  String get knowledgeRetentionAI;

  /// No description provided for @knowledgeRetentionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Preserving & Operationalizing Employee Expertise'**
  String get knowledgeRetentionSubtitle;

  /// No description provided for @knowledgeRetentionDescription.
  ///
  /// In en, this message translates to:
  /// **'An AI system designed to capture, structure, and operationalize the tacit knowledge of employees within organizations. By analyzing work documents, communication patterns, decision logs, and workflow histories, the system builds a dynamic knowledge graph that survives employee turnover. It enables new hires or remaining teams to query \"how would X have handled this?\" and receive AI-generated guidance based on captured expertise—mitigating knowledge loss from attrition, layoffs, or crisis scenarios.'**
  String get knowledgeRetentionDescription;

  /// No description provided for @knowledgeGraphs.
  ///
  /// In en, this message translates to:
  /// **'Knowledge Graphs'**
  String get knowledgeGraphs;

  /// No description provided for @nlp.
  ///
  /// In en, this message translates to:
  /// **'Natural Language Processing'**
  String get nlp;

  /// No description provided for @documentAnalysis.
  ///
  /// In en, this message translates to:
  /// **'Document Analysis'**
  String get documentAnalysis;

  /// No description provided for @workflowMining.
  ///
  /// In en, this message translates to:
  /// **'Workflow Mining'**
  String get workflowMining;

  /// No description provided for @llmFineTuning.
  ///
  /// In en, this message translates to:
  /// **'LLM Fine-Tuning'**
  String get llmFineTuning;

  /// No description provided for @organizationalMemory.
  ///
  /// In en, this message translates to:
  /// **'Organizational Memory Systems'**
  String get organizationalMemory;

  /// No description provided for @higherEdWarResearchTitle.
  ///
  /// In en, this message translates to:
  /// **'Digital Scaffolding: Rebuilding Higher Education in Post-War Gaza'**
  String get higherEdWarResearchTitle;

  /// No description provided for @higherEdWarResearchSubtitle.
  ///
  /// In en, this message translates to:
  /// **'A Hybrid Tech-Humanities Framework'**
  String get higherEdWarResearchSubtitle;

  /// No description provided for @higherEdWarResearchDescription.
  ///
  /// In en, this message translates to:
  /// **'Academic research investigating how blended digital-humanities approaches can reconstruct Gaza\'s devastated higher education ecosystem. The study proposes a \"Digital Scaffolding\" model combining: 1) decentralized digital platforms for course delivery, 2) AI-curated open educational resources (OER) in Arabic, 3) blockchain-verified micro-credentials for displaced students, and 4) virtual research collaboration networks with international institutions. This framework addresses immediate educational continuity while building long-term, war-resilient academic infrastructure.'**
  String get higherEdWarResearchDescription;

  /// No description provided for @qualitativeResearch.
  ///
  /// In en, this message translates to:
  /// **'Qualitative Research'**
  String get qualitativeResearch;

  /// No description provided for @caseStudyAnalysis.
  ///
  /// In en, this message translates to:
  /// **'Case Study Analysis'**
  String get caseStudyAnalysis;

  /// No description provided for @higherEdPolicy.
  ///
  /// In en, this message translates to:
  /// **'Higher Education Policy'**
  String get higherEdPolicy;

  /// No description provided for @crisisInformatics.
  ///
  /// In en, this message translates to:
  /// **'Crisis Informatics'**
  String get crisisInformatics;

  /// No description provided for @mixedMethods.
  ///
  /// In en, this message translates to:
  /// **'Mixed-Methods Research'**
  String get mixedMethods;

  /// No description provided for @firebase.
  ///
  /// In en, this message translates to:
  /// **'Firebase'**
  String get firebase;

  /// No description provided for @python.
  ///
  /// In en, this message translates to:
  /// **'Python'**
  String get python;

  /// No description provided for @streamlit.
  ///
  /// In en, this message translates to:
  /// **'Streamlit'**
  String get streamlit;

  /// No description provided for @academicWriting.
  ///
  /// In en, this message translates to:
  /// **'Academic Writing'**
  String get academicWriting;

  /// No description provided for @fromIdeaToAppStore.
  ///
  /// In en, this message translates to:
  /// **'From Idea to App Store: The Journey of Building Your First Successful Flutter App'**
  String get fromIdeaToAppStore;

  /// No description provided for @blogDateMar152024.
  ///
  /// In en, this message translates to:
  /// **'March 15, 2024'**
  String get blogDateMar152024;

  /// No description provided for @makingAppLovable.
  ///
  /// In en, this message translates to:
  /// **'How to Make Your App \'Lovable\': 5 Psychological Principles in UX Design'**
  String get makingAppLovable;

  /// No description provided for @blogDateApr22024.
  ///
  /// In en, this message translates to:
  /// **'April 2, 2024'**
  String get blogDateApr22024;

  /// No description provided for @hiddenAppCost.
  ///
  /// In en, this message translates to:
  /// **'What Developers Don\'t Talk About: The Hidden Cost of Building a Mobile App'**
  String get hiddenAppCost;

  /// No description provided for @blogDateMay102024.
  ///
  /// In en, this message translates to:
  /// **'May 10, 2024'**
  String get blogDateMay102024;

  /// No description provided for @beautyVsPerformance.
  ///
  /// In en, this message translates to:
  /// **'Between Beauty and Performance: How to Balance in Flutter Apps'**
  String get beautyVsPerformance;

  /// No description provided for @blogDateJun52024.
  ///
  /// In en, this message translates to:
  /// **'June 5, 2024'**
  String get blogDateJun52024;

  /// No description provided for @designSystemGuide.
  ///
  /// In en, this message translates to:
  /// **'More Than Buttons: A Guide to Building a Complete Design System in Flutter'**
  String get designSystemGuide;

  /// No description provided for @blogDateJul182024.
  ///
  /// In en, this message translates to:
  /// **'July 18, 2024'**
  String get blogDateJul182024;

  /// No description provided for @performance.
  ///
  /// In en, this message translates to:
  /// **'Performance'**
  String get performance;

  /// No description provided for @appBusiness.
  ///
  /// In en, this message translates to:
  /// **'App Business'**
  String get appBusiness;

  /// No description provided for @productJourney.
  ///
  /// In en, this message translates to:
  /// **'Product Journey'**
  String get productJourney;

  /// No description provided for @projectCostEstimator.
  ///
  /// In en, this message translates to:
  /// **'Project Cost Estimator'**
  String get projectCostEstimator;

  /// No description provided for @projectCostEstimatorSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Turn your idea into numbers before investing a single dollar 💡'**
  String get projectCostEstimatorSubtitle;

  /// No description provided for @projectCostEstimatorDescription.
  ///
  /// In en, this message translates to:
  /// **'Select your project requirements and get an instant estimate with smart suggestions ✨'**
  String get projectCostEstimatorDescription;

  /// No description provided for @noCommitment.
  ///
  /// In en, this message translates to:
  /// **'❌ No commitment'**
  String get noCommitment;

  /// No description provided for @approximatePricing.
  ///
  /// In en, this message translates to:
  /// **'💰 Approximate pricing'**
  String get approximatePricing;

  /// No description provided for @requestDetailedStudy.
  ///
  /// In en, this message translates to:
  /// **'📊 Request a detailed study'**
  String get requestDetailedStudy;

  /// No description provided for @backStep.
  ///
  /// In en, this message translates to:
  /// **'Back Step'**
  String get backStep;

  /// No description provided for @nextStep.
  ///
  /// In en, this message translates to:
  /// **'Next Step'**
  String get nextStep;

  /// No description provided for @validationSelectService.
  ///
  /// In en, this message translates to:
  /// **'Please select a service first'**
  String get validationSelectService;

  /// No description provided for @validationSelectPlatform.
  ///
  /// In en, this message translates to:
  /// **'Please select at least one platform'**
  String get validationSelectPlatform;

  /// No description provided for @whatKindOfHelp.
  ///
  /// In en, this message translates to:
  /// **'What kind of help are you looking for?'**
  String get whatKindOfHelp;

  /// No description provided for @multipleOptionsHint.
  ///
  /// In en, this message translates to:
  /// **'You can choose more than one option'**
  String get multipleOptionsHint;

  /// No description provided for @serviceDesignTitle.
  ///
  /// In en, this message translates to:
  /// **'Design 🎨'**
  String get serviceDesignTitle;

  /// No description provided for @serviceDesignSubtitle.
  ///
  /// In en, this message translates to:
  /// **'UI/UX, wireframes, branding'**
  String get serviceDesignSubtitle;

  /// No description provided for @serviceDevelopmentTitle.
  ///
  /// In en, this message translates to:
  /// **'Development 💻'**
  String get serviceDevelopmentTitle;

  /// No description provided for @serviceDevelopmentSubtitle.
  ///
  /// In en, this message translates to:
  /// **'I already have the design'**
  String get serviceDevelopmentSubtitle;

  /// No description provided for @whatDoYouWantToBuild.
  ///
  /// In en, this message translates to:
  /// **'What do you want to build?'**
  String get whatDoYouWantToBuild;

  /// No description provided for @buildExamples.
  ///
  /// In en, this message translates to:
  /// **'You can choose more than one option 👇\nFor example: Mobile App + Website'**
  String get buildExamples;

  /// No description provided for @platformMobileApp.
  ///
  /// In en, this message translates to:
  /// **'Mobile App 📱'**
  String get platformMobileApp;

  /// No description provided for @platformMobileAppSubtitle.
  ///
  /// In en, this message translates to:
  /// **'iOS, Android, or both'**
  String get platformMobileAppSubtitle;

  /// No description provided for @platformWebsite.
  ///
  /// In en, this message translates to:
  /// **'Website 🌍'**
  String get platformWebsite;

  /// No description provided for @platformWebsiteSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Landing page or full platform'**
  String get platformWebsiteSubtitle;

  /// No description provided for @platformAdminDashboard.
  ///
  /// In en, this message translates to:
  /// **'Admin Dashboard 🧩'**
  String get platformAdminDashboard;

  /// No description provided for @platformAdminDashboardSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage users, content & data'**
  String get platformAdminDashboardSubtitle;

  /// No description provided for @featuresTitle.
  ///
  /// In en, this message translates to:
  /// **'What features do you need?'**
  String get featuresTitle;

  /// No description provided for @featuresSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Select everything your idea needs – you can always refine it later ✨'**
  String get featuresSubtitle;

  /// No description provided for @featureDarkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode 🌙'**
  String get featureDarkMode;

  /// No description provided for @featureDarkModeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Allow users to switch between light and dark theme'**
  String get featureDarkModeSubtitle;

  /// No description provided for @featureChat.
  ///
  /// In en, this message translates to:
  /// **'Chat 💬'**
  String get featureChat;

  /// No description provided for @featureChatSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Real-time messaging between users'**
  String get featureChatSubtitle;

  /// No description provided for @featureMultiLanguage.
  ///
  /// In en, this message translates to:
  /// **'Multi-language 🌍'**
  String get featureMultiLanguage;

  /// No description provided for @featureMultiLanguageSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Support multiple languages'**
  String get featureMultiLanguageSubtitle;

  /// No description provided for @featureOnlinePayments.
  ///
  /// In en, this message translates to:
  /// **'Online Payments 💳'**
  String get featureOnlinePayments;

  /// No description provided for @featureOnlinePaymentsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Accept payments securely'**
  String get featureOnlinePaymentsSubtitle;

  /// No description provided for @featureAi.
  ///
  /// In en, this message translates to:
  /// **'AI Features 🤖'**
  String get featureAi;

  /// No description provided for @featureAiSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Smart recommendations or automation'**
  String get featureAiSubtitle;

  /// No description provided for @featureNotifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications 🔔'**
  String get featureNotifications;

  /// No description provided for @featureNotificationsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Push or in-app notifications'**
  String get featureNotificationsSubtitle;

  /// No description provided for @featureAnalytics.
  ///
  /// In en, this message translates to:
  /// **'Analytics & Reporting 📊'**
  String get featureAnalytics;

  /// No description provided for @featureAnalyticsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Track user behavior and metrics'**
  String get featureAnalyticsSubtitle;

  /// No description provided for @featureSearchFiltering.
  ///
  /// In en, this message translates to:
  /// **'Search / Filtering 🔍'**
  String get featureSearchFiltering;

  /// No description provided for @featureAuthentication.
  ///
  /// In en, this message translates to:
  /// **'User Authentication 🔑'**
  String get featureAuthentication;

  /// No description provided for @featureOfflineMode.
  ///
  /// In en, this message translates to:
  /// **'Offline Mode 🌐'**
  String get featureOfflineMode;

  /// No description provided for @featureGeolocation.
  ///
  /// In en, this message translates to:
  /// **'Geolocation 📍'**
  String get featureGeolocation;

  /// No description provided for @featureSocialIntegration.
  ///
  /// In en, this message translates to:
  /// **'Social Media Integration 📱'**
  String get featureSocialIntegration;

  /// No description provided for @featureFileUpload.
  ///
  /// In en, this message translates to:
  /// **'File Upload / Download 📁'**
  String get featureFileUpload;

  /// No description provided for @featureCalendar.
  ///
  /// In en, this message translates to:
  /// **'Calendar / Scheduling 📅'**
  String get featureCalendar;

  /// No description provided for @featureChatbot.
  ///
  /// In en, this message translates to:
  /// **'Chatbot / FAQ 🤖'**
  String get featureChatbot;

  /// No description provided for @featureStreaming.
  ///
  /// In en, this message translates to:
  /// **'Audio / Video Streaming 🎥'**
  String get featureStreaming;

  /// No description provided for @featureEcommerceCart.
  ///
  /// In en, this message translates to:
  /// **'E-commerce Cart 🛒'**
  String get featureEcommerceCart;

  /// No description provided for @featureApiIntegration.
  ///
  /// In en, this message translates to:
  /// **'API Integration 🌐'**
  String get featureApiIntegration;

  /// No description provided for @deliverablesTitle.
  ///
  /// In en, this message translates to:
  /// **'What deliverables do you expect?'**
  String get deliverablesTitle;

  /// No description provided for @deliverableUxResearch.
  ///
  /// In en, this message translates to:
  /// **'UX Research Document 📋'**
  String get deliverableUxResearch;

  /// No description provided for @deliverableStyleGuide.
  ///
  /// In en, this message translates to:
  /// **'Style Guide 🎨'**
  String get deliverableStyleGuide;

  /// No description provided for @deliverableMockups.
  ///
  /// In en, this message translates to:
  /// **'Mockups 🖼️'**
  String get deliverableMockups;

  /// No description provided for @deliverableWireframes.
  ///
  /// In en, this message translates to:
  /// **'Wireframes / Mockups 📝'**
  String get deliverableWireframes;

  /// No description provided for @deliverableUiDesign.
  ///
  /// In en, this message translates to:
  /// **'UI Design 🎨'**
  String get deliverableUiDesign;

  /// No description provided for @deliverablePrototypes.
  ///
  /// In en, this message translates to:
  /// **'Prototypes 🔗'**
  String get deliverablePrototypes;

  /// No description provided for @deliverableSourceCode.
  ///
  /// In en, this message translates to:
  /// **'Source Code Handover 🖥️'**
  String get deliverableSourceCode;

  /// No description provided for @deliverableDocumentation.
  ///
  /// In en, this message translates to:
  /// **'Documentation / Guides 📄'**
  String get deliverableDocumentation;

  /// No description provided for @deliverableDeployment.
  ///
  /// In en, this message translates to:
  /// **'Deployment Setup ⚙️'**
  String get deliverableDeployment;

  /// No description provided for @deliverableTesting.
  ///
  /// In en, this message translates to:
  /// **'Testing / QA Reports 🧪'**
  String get deliverableTesting;

  /// No description provided for @deliverableAdminPanel.
  ///
  /// In en, this message translates to:
  /// **'Admin Panel Config 🧩'**
  String get deliverableAdminPanel;

  /// No description provided for @deliverableLandingPage.
  ///
  /// In en, this message translates to:
  /// **'Landing Page Copy & Layout 🏷️'**
  String get deliverableLandingPage;

  /// No description provided for @deliverableDevStyleGuide.
  ///
  /// In en, this message translates to:
  /// **'Style Guide for Developers 🖌️'**
  String get deliverableDevStyleGuide;

  /// No description provided for @projectQualityLevel.
  ///
  /// In en, this message translates to:
  /// **'Project Quality Level'**
  String get projectQualityLevel;

  /// No description provided for @qualityMvp.
  ///
  /// In en, this message translates to:
  /// **'MVP – Proof of Concept 💡'**
  String get qualityMvp;

  /// No description provided for @qualityStandard.
  ///
  /// In en, this message translates to:
  /// **'Standard 🔧'**
  String get qualityStandard;

  /// No description provided for @qualityPremium.
  ///
  /// In en, this message translates to:
  /// **'Premium – Ready to Launch 🚀'**
  String get qualityPremium;

  /// No description provided for @finalEstimatedCost.
  ///
  /// In en, this message translates to:
  /// **'Final Estimated Cost'**
  String get finalEstimatedCost;

  /// No description provided for @estimatedCost.
  ///
  /// In en, this message translates to:
  /// **'Estimated Cost'**
  String get estimatedCost;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total:'**
  String get total;

  /// No description provided for @recommendedUpgrades.
  ///
  /// In en, this message translates to:
  /// **'Recommended upgrades for your project 🚀'**
  String get recommendedUpgrades;

  /// No description provided for @continueOnWhatsapp.
  ///
  /// In en, this message translates to:
  /// **'Continue on WhatsApp'**
  String get continueOnWhatsapp;

  /// No description provided for @whatsappHint.
  ///
  /// In en, this message translates to:
  /// **'Takes less than 2 minutes · No commitment'**
  String get whatsappHint;

  /// No description provided for @featureAdminDashboard.
  ///
  /// In en, this message translates to:
  /// **'Admin Dashboard 🧩'**
  String get featureAdminDashboard;

  /// No description provided for @featureAdminDashboardSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage users, content & settings'**
  String get featureAdminDashboardSubtitle;

  /// No description provided for @featureFormsSurveys.
  ///
  /// In en, this message translates to:
  /// **'Forms & Surveys 📝'**
  String get featureFormsSurveys;

  /// No description provided for @featureFormsSurveysSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Collect user input'**
  String get featureFormsSurveysSubtitle;

  /// No description provided for @featureSearchFilteringSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Find and filter content'**
  String get featureSearchFilteringSubtitle;

  /// No description provided for @featureAuthenticationSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Login, signup & social login'**
  String get featureAuthenticationSubtitle;

  /// No description provided for @featureSocialIntegrationSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Connect with social platforms'**
  String get featureSocialIntegrationSubtitle;

  /// No description provided for @featureOfflineModeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Access features without internet'**
  String get featureOfflineModeSubtitle;

  /// No description provided for @featureGeolocationSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Track user location'**
  String get featureGeolocationSubtitle;

  /// No description provided for @featureFileUploadSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Upload and download files'**
  String get featureFileUploadSubtitle;

  /// No description provided for @featureCalendarSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Manage events and schedules'**
  String get featureCalendarSubtitle;

  /// No description provided for @featureChatbotSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Automated assistance or FAQs'**
  String get featureChatbotSubtitle;

  /// No description provided for @featureStreamingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Stream audio or video content'**
  String get featureStreamingSubtitle;

  /// No description provided for @featureEcommerceCartSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Shopping cart & checkout'**
  String get featureEcommerceCartSubtitle;

  /// No description provided for @featureApiIntegrationSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Connect to third-party APIs'**
  String get featureApiIntegrationSubtitle;

  /// No description provided for @deliverablesSelectionTitle.
  ///
  /// In en, this message translates to:
  /// **'Select everything you want to receive at the end of the project ✨'**
  String get deliverablesSelectionTitle;

  /// No description provided for @deliverableUxResearchSubtitle.
  ///
  /// In en, this message translates to:
  /// **'User research, surveys, and personas'**
  String get deliverableUxResearchSubtitle;

  /// No description provided for @deliverableStyleGuideSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Brand colors, fonts, and design rules'**
  String get deliverableStyleGuideSubtitle;

  /// No description provided for @deliverableMockupsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'High-fidelity visual representation of screens'**
  String get deliverableMockupsSubtitle;

  /// No description provided for @deliverableWireframesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Low-fidelity layout and flow of the app'**
  String get deliverableWireframesSubtitle;

  /// No description provided for @deliverableUiDesignSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Design of user interface elements'**
  String get deliverableUiDesignSubtitle;

  /// No description provided for @deliverablePrototypesSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Clickable or interactive demo of the design'**
  String get deliverablePrototypesSubtitle;

  /// No description provided for @deliverableSourceCodeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Full code handover for the project'**
  String get deliverableSourceCodeSubtitle;

  /// No description provided for @deliverableDocumentationSubtitle.
  ///
  /// In en, this message translates to:
  /// **'User manuals, API docs, technical guides'**
  String get deliverableDocumentationSubtitle;

  /// No description provided for @deliverableDeploymentSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Ready-to-deploy package or instructions'**
  String get deliverableDeploymentSubtitle;

  /// No description provided for @deliverableTestingSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Functional and performance testing results'**
  String get deliverableTestingSubtitle;

  /// No description provided for @deliverableAdminPanelSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Setup of roles, permissions, and dashboard'**
  String get deliverableAdminPanelSubtitle;

  /// No description provided for @deliverableLandingPageSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Content, images, and structure for landing pages'**
  String get deliverableLandingPageSubtitle;

  /// No description provided for @deliverableDevStyleGuideSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Reference guide for implementing UI in code'**
  String get deliverableDevStyleGuideSubtitle;

  /// No description provided for @qualityMvpSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Essential features only, basic deliverables'**
  String get qualityMvpSubtitle;

  /// No description provided for @qualityStandardSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Balanced features and deliverables, partial enhancements'**
  String get qualityStandardSubtitle;

  /// No description provided for @qualityPremiumSubtitle.
  ///
  /// In en, this message translates to:
  /// **'All selected features + full deliverables + extra polish'**
  String get qualityPremiumSubtitle;

  /// No description provided for @currencyUsd.
  ///
  /// In en, this message translates to:
  /// **'USD'**
  String get currencyUsd;

  /// No description provided for @finalEstimateDescription.
  ///
  /// In en, this message translates to:
  /// **'This is the final estimate based on all your selections'**
  String get finalEstimateDescription;

  /// No description provided for @priceAutoUpdateHint.
  ///
  /// In en, this message translates to:
  /// **'Price updates automatically as you choose options'**
  String get priceAutoUpdateHint;

  /// No description provided for @needPreciseEstimate.
  ///
  /// In en, this message translates to:
  /// **'Need a precise estimate & execution plan?'**
  String get needPreciseEstimate;

  /// No description provided for @preciseEstimateDescription.
  ///
  /// In en, this message translates to:
  /// **'Based on your selections, we can prepare a detailed scope, timeline, and final pricing — tailored exactly to your idea.'**
  String get preciseEstimateDescription;

  /// No description provided for @recommendedUpgradesDescription.
  ///
  /// In en, this message translates to:
  /// **'Based on your current selections, these additions can increase value and impact.'**
  String get recommendedUpgradesDescription;

  /// No description provided for @chooseProjectQualityLevelHint.
  ///
  /// In en, this message translates to:
  /// **'Choose the level that matches your project needs'**
  String get chooseProjectQualityLevelHint;

  /// No description provided for @upgradeAiChatbotTitle.
  ///
  /// In en, this message translates to:
  /// **'AI Chatbot Assistant 🤖'**
  String get upgradeAiChatbotTitle;

  /// No description provided for @upgradeAiChatbotSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Automate replies, support users 24/7, and reduce manual support.'**
  String get upgradeAiChatbotSubtitle;

  /// No description provided for @upgradeSmartNotificationsTitle.
  ///
  /// In en, this message translates to:
  /// **'Smart Notifications 🔔'**
  String get upgradeSmartNotificationsTitle;

  /// No description provided for @upgradeSmartNotificationsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Increase engagement with push and in-app notifications.'**
  String get upgradeSmartNotificationsSubtitle;

  /// No description provided for @upgradeAnalyticsTitle.
  ///
  /// In en, this message translates to:
  /// **'Analytics & Reporting 📊'**
  String get upgradeAnalyticsTitle;

  /// No description provided for @upgradeAnalyticsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Understand user behavior and improve decision-making.'**
  String get upgradeAnalyticsSubtitle;

  /// No description provided for @upgradeAdvancedSearchTitle.
  ///
  /// In en, this message translates to:
  /// **'Advanced Search & Filtering 🔍'**
  String get upgradeAdvancedSearchTitle;

  /// No description provided for @upgradeAdvancedSearchSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Help users find content faster with smart filtering.'**
  String get upgradeAdvancedSearchSubtitle;

  /// No description provided for @upgradeOfflineModeTitle.
  ///
  /// In en, this message translates to:
  /// **'Offline Mode 🌐'**
  String get upgradeOfflineModeTitle;

  /// No description provided for @upgradeOfflineModeSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Allow users to access core features without internet.'**
  String get upgradeOfflineModeSubtitle;

  /// No description provided for @upgradeMultiLanguageTitle.
  ///
  /// In en, this message translates to:
  /// **'Multi-language Support 🌍'**
  String get upgradeMultiLanguageTitle;

  /// No description provided for @upgradeMultiLanguageSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Reach more users by supporting multiple languages.'**
  String get upgradeMultiLanguageSubtitle;

  /// No description provided for @upgradeOnlinePaymentsTitle.
  ///
  /// In en, this message translates to:
  /// **'Online Payments 💳'**
  String get upgradeOnlinePaymentsTitle;

  /// No description provided for @upgradeOnlinePaymentsSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Accept secure payments directly inside your product.'**
  String get upgradeOnlinePaymentsSubtitle;

  /// No description provided for @blogProductJourney.
  ///
  /// In en, this message translates to:
  /// **'Product Journey'**
  String get blogProductJourney;

  /// No description provided for @blogUxDesign.
  ///
  /// In en, this message translates to:
  /// **'UX Design'**
  String get blogUxDesign;

  /// No description provided for @blogAppBusiness.
  ///
  /// In en, this message translates to:
  /// **'App Business'**
  String get blogAppBusiness;

  /// No description provided for @blogPerformance.
  ///
  /// In en, this message translates to:
  /// **'Performance'**
  String get blogPerformance;

  /// No description provided for @blogFlutter.
  ///
  /// In en, this message translates to:
  /// **'Flutter'**
  String get blogFlutter;

  /// No description provided for @blogIdeaToAppTitle.
  ///
  /// In en, this message translates to:
  /// **'From Idea to App'**
  String get blogIdeaToAppTitle;

  /// No description provided for @blogIdeaToAppDate.
  ///
  /// In en, this message translates to:
  /// **'March 12, 2024'**
  String get blogIdeaToAppDate;

  /// No description provided for @blogIdeaToAppSummary.
  ///
  /// In en, this message translates to:
  /// **'A practical walkthrough of turning a raw idea into a real, scalable app. Learn how to validate your concept, define your MVP, and avoid the most common early-stage mistakes.'**
  String get blogIdeaToAppSummary;

  /// No description provided for @blogIdeaToAppContent.
  ///
  /// In en, this message translates to:
  /// **'Turning a raw idea into a functional app requires clear planning, validation, and execution. Many early-stage startups fail because they jump into development without understanding their users or prioritizing features.\n\n1. Idea Validation:\nStart by researching your target market, understanding user pain points, and testing the core concept. Conduct surveys, interviews, and gather feedback before writing a single line of code.\n\n2. Defining the MVP:\nIdentify the minimum set of features needed to solve the user problem. Avoid overbuilding — focus on the core functionality that delivers value and can be tested quickly.\n\n3. Design & User Experience:\nCreate wireframes and low-fidelity mockups to outline the user flow. Iterate based on user feedback to ensure usability and engagement.\n\n4. Development & Testing:\nBuild the MVP using the most appropriate technology stack. Test early and often, fixing bugs and refining features based on real user interactions.\n\n5. Launch & Iterate:\nDeploy the app to a small group or pilot audience. Monitor usage, collect analytics, and plan improvements for subsequent releases.\n\nConclusion:\nBy following a structured approach from idea validation to MVP launch, teams can reduce risk, save resources, and create apps that solve real problems while being scalable for future growth.'**
  String get blogIdeaToAppContent;

  /// No description provided for @blogUxPsychologyTitle.
  ///
  /// In en, this message translates to:
  /// **'UX Psychology Basics'**
  String get blogUxPsychologyTitle;

  /// No description provided for @blogUxPsychologyDate.
  ///
  /// In en, this message translates to:
  /// **'April 2, 2024'**
  String get blogUxPsychologyDate;

  /// No description provided for @blogUxPsychologySummary.
  ///
  /// In en, this message translates to:
  /// **'An introduction to the psychology behind great user experiences. Understand how users think, decide, and react — and how design choices directly affect engagement and retention.'**
  String get blogUxPsychologySummary;

  /// No description provided for @blogUxPsychologyContent.
  ///
  /// In en, this message translates to:
  /// **'Understanding UX psychology is crucial for creating digital products that users not only use but enjoy. At its core, UX psychology explores how people perceive, interpret, and respond to interfaces, interactions, and information. By applying these principles, designers can predict user behavior and craft experiences that feel intuitive and satisfying.\n\n1. Cognitive Load:\nHumans have limited mental resources. Interfaces that are cluttered or require too many steps overwhelm users, leading to frustration or abandonment. To reduce cognitive load, designers should prioritize simplicity, clear visual hierarchy, and minimal decision points. Breaking complex tasks into smaller, digestible steps helps users complete actions efficiently.\n\n2. Visual Hierarchy:\nVisual hierarchy guides users’ attention to the most important elements. Using size, color, contrast, and placement strategically ensures users understand what to focus on first. For example, call-to-action buttons should stand out clearly, while secondary information should be visually subdued.\n\n3. Consistency & Familiarity:\nPeople rely on patterns they recognize. Consistent layouts, familiar icons, and standard interactions reduce learning curves and make users feel confident navigating your product. Inconsistent design forces users to relearn interactions, which can lead to errors or disengagement.\n\n4. Feedback & Affordances:\nUsers need clear indications of how their actions affect the system. Buttons should provide visual feedback on tap, forms should highlight errors clearly, and interactive elements should signal their behavior. Feedback reassures users, reinforces correct actions, and reduces mistakes.\n\n5. Emotional Design:\nUX psychology isn’t only about efficiency — emotions play a critical role. Pleasant visuals, micro-interactions, and subtle animations can create positive emotional responses, increasing engagement and retention. Conversely, frustrating or confusing experiences generate negative emotions and discourage continued use.\n\n6. Behavioral Triggers & Motivation:\nUnderstanding what motivates users enables designers to create experiences that encourage desired actions. This includes reward systems, notifications, and progress indicators that guide users without feeling manipulative. Behavioral psychology concepts such as habit formation and loss aversion can inform design decisions.\n\n7. Accessibility & Inclusivity:\nDesign must account for diverse cognitive and sensory abilities. Colors, fonts, contrast ratios, and alternative text for images ensure all users can interact successfully. Inclusive design enhances user satisfaction and broadens the potential audience.\n\nConclusion:\nUX psychology provides the framework for designing products that align with human behavior. By understanding cognitive processes, emotional responses, and behavioral tendencies, designers can create intuitive, engaging, and effective experiences. Good UX is invisible when it works seamlessly, but it is deeply appreciated when it resonates with users on both functional and emotional levels.'**
  String get blogUxPsychologyContent;

  /// No description provided for @blogRealAppCostsTitle.
  ///
  /// In en, this message translates to:
  /// **'Real App Costs'**
  String get blogRealAppCostsTitle;

  /// No description provided for @blogRealAppCostsDate.
  ///
  /// In en, this message translates to:
  /// **'April 18, 2024'**
  String get blogRealAppCostsDate;

  /// No description provided for @blogRealAppCostsSummary.
  ///
  /// In en, this message translates to:
  /// **'A clear breakdown of what really drives app development costs — and why similar ideas can end up with very different budgets.'**
  String get blogRealAppCostsSummary;

  /// No description provided for @blogRealAppCostsContent.
  ///
  /// In en, this message translates to:
  /// **'Understanding the true costs of app development is essential for planning and budgeting effectively. Several factors influence the final budget, including feature complexity, platform choice, design depth, backend infrastructure, integrations, and long-term maintenance.\n\n1. Feature Complexity:\nMore complex features like real-time chat, AI recommendations, or multimedia streaming significantly increase development time and cost. Simpler MVP features reduce expenses and allow faster launch.\n\n2. Platform Choice:\niOS, Android, or cross-platform solutions each have different cost implications. Native apps often require separate development teams for each platform, while cross-platform tools like Flutter can reduce development effort.\n\n3. Design & UX:\nHigh-fidelity designs, custom animations, and detailed user flows improve user satisfaction but require more design and development time. Balancing quality with budget is key.\n\n4. Backend & Infrastructure:\nApps with real-time databases, cloud storage, or complex server logic need robust backend architecture, which can add to costs.\n\n5. Integrations & APIs:\nConnecting with third-party services like payment gateways, analytics tools, or social platforms requires additional implementation and testing effort.\n\n6. Long-term Maintenance:\nPost-launch updates, bug fixes, and feature expansions also contribute to total cost. Planning for maintenance avoids unexpected expenses.\n\nBy understanding these factors, founders and product teams can make informed decisions, prioritize features, and set realistic budgets to achieve their vision without surprises.'**
  String get blogRealAppCostsContent;

  /// No description provided for @blogDesignVsPerformanceTitle.
  ///
  /// In en, this message translates to:
  /// **'Design vs Performance'**
  String get blogDesignVsPerformanceTitle;

  /// No description provided for @blogDesignVsPerformanceDate.
  ///
  /// In en, this message translates to:
  /// **'May 1, 2024'**
  String get blogDesignVsPerformanceDate;

  /// No description provided for @blogDesignVsPerformanceSummary.
  ///
  /// In en, this message translates to:
  /// **'An exploration of the trade-off between visual design and performance — and how to create apps that feel both beautiful and fast.'**
  String get blogDesignVsPerformanceSummary;

  /// No description provided for @blogDesignVsPerformanceContent.
  ///
  /// In en, this message translates to:
  /// **'Design and performance are two critical aspects of app development that often conflict with each other. Striking the right balance ensures users have a visually appealing experience without sacrificing speed and responsiveness.\n\n1. Visual Design Considerations:\nComplex layouts, custom animations, and high-resolution graphics enhance the app\'s aesthetics but can significantly impact load times and responsiveness. Designers should prioritize key visuals while minimizing unnecessary elements.\n\n2. Optimizing Performance:\nPerformance optimization includes efficient coding practices, proper memory management, and minimizing heavy assets. Techniques such as lazy loading, caching, and asynchronous data fetching help maintain smooth app behavior.\n\n3. Platform and Device Constraints:\nApps must perform well across multiple devices and platforms. High-end devices may handle rich visuals with ease, but mid-range or older devices require careful optimization to prevent slowdowns.\n\n4. Testing and Monitoring:\nRegular performance testing using metrics like frame rates, CPU/GPU usage, and memory consumption ensures the app meets speed expectations. Monitoring helps identify bottlenecks and allows iterative improvements.\n\n5. Progressive Enhancement:\nBegin with a lightweight core experience for all users and progressively enhance it with advanced visuals or features for capable devices. This ensures accessibility while maintaining performance standards.\n\n6. User-Centered Trade-offs:\nSome trade-offs may be acceptable depending on user expectations and priorities. For example, subtle animations may enhance delight without noticeable performance loss.\n\nConclusion:\nBalancing design and performance requires intentional planning and testing. By optimizing assets, code, and interactions, developers and designers can create apps that are both visually stunning and fast, offering users a seamless and enjoyable experience.'**
  String get blogDesignVsPerformanceContent;

  /// No description provided for @blogFlutterDesignSystemsTitle.
  ///
  /// In en, this message translates to:
  /// **'Flutter Design Systems'**
  String get blogFlutterDesignSystemsTitle;

  /// No description provided for @blogFlutterDesignSystemsDate.
  ///
  /// In en, this message translates to:
  /// **'May 20, 2024'**
  String get blogFlutterDesignSystemsDate;

  /// No description provided for @blogFlutterDesignSystemsSummary.
  ///
  /// In en, this message translates to:
  /// **'A practical guide to building scalable Flutter apps using design systems that improve consistency, speed, and team collaboration.'**
  String get blogFlutterDesignSystemsSummary;

  /// No description provided for @blogFlutterDesignSystemsContent.
  ///
  /// In en, this message translates to:
  /// **'As Flutter applications grow, inconsistent UI can become a serious problem, slowing development and reducing user trust. Design systems provide a structured approach to creating reusable, consistent components and patterns across the app.\n\n1. What is a Design System?\nA design system is a collection of reusable components, styles, and guidelines that ensure consistency and efficiency in app development. It includes color palettes, typography, UI components, and interaction patterns.\n\n2. Benefits of Using a Design System:\n- Consistency: Uniform look and feel across the entire app.\n- Speed: Developers can reuse components instead of recreating them.\n- Collaboration: Designers and developers share a common language and assets.\n- Scalability: Easier to maintain and expand the app as features grow.\n\n3. Implementing in Flutter:\nFlutter’s widget-based architecture makes it ideal for design systems. Reusable widgets, custom themes, and shared style guides allow teams to implement consistent UI quickly.\n\n4. Best Practices:\n- Define clear guidelines for colors, typography, and spacing.\n- Build reusable widgets with flexibility for different contexts.\n- Maintain documentation for both developers and designers.\n- Regularly review and update the system to accommodate new features.\n\nConclusion:\nUsing a design system in Flutter ensures your app scales efficiently while maintaining a consistent, polished experience for users. Teams save time, reduce errors, and can focus on creating features rather than reinventing the UI repeatedly.'**
  String get blogFlutterDesignSystemsContent;

  /// No description provided for @blogReadTime.
  ///
  /// In en, this message translates to:
  /// **'• 5 min read'**
  String get blogReadTime;

  /// No description provided for @blogEnjoyedArticle.
  ///
  /// In en, this message translates to:
  /// **'Enjoyed this article?'**
  String get blogEnjoyedArticle;

  /// No description provided for @blogDiscoverMore.
  ///
  /// In en, this message translates to:
  /// **'Discover more insights and ideas in our blog.'**
  String get blogDiscoverMore;

  /// No description provided for @blogApplyIdea.
  ///
  /// In en, this message translates to:
  /// **'Want to apply this idea to your own app?'**
  String get blogApplyIdea;

  /// No description provided for @blogLetsDiscuss.
  ///
  /// In en, this message translates to:
  /// **'Let’s discuss how this concept could work for your project, timeline, and budget.'**
  String get blogLetsDiscuss;

  /// No description provided for @blogDiscussOnWhatsapp.
  ///
  /// In en, this message translates to:
  /// **'Discuss on WhatsApp'**
  String get blogDiscussOnWhatsapp;

  /// No description provided for @blogWhatsappMessage.
  ///
  /// In en, this message translates to:
  /// **'Hi 👋 I just read your article \"\$articleTitle\" and would like to discuss how this idea could work for my app.'**
  String get blogWhatsappMessage;

  /// No description provided for @discoverMyStory.
  ///
  /// In en, this message translates to:
  /// **'DISCOVER MY STORY'**
  String get discoverMyStory;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
