import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:particles_fly/particles_fly.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../l10n/app_localizations.dart';
import '../../../utils/constants.dart';
import '../../../utils/screen_helper.dart';

class ProjectEstimatorPage extends StatefulWidget {
  const ProjectEstimatorPage({super.key});

  @override
  State<ProjectEstimatorPage> createState() => _ProjectEstimatorPageState();
}

class _ProjectEstimatorPageState extends State<ProjectEstimatorPage> {
  int currentStep = 0;
  double estimatedPrice = 2000;

  final Map<String, double> features = {
    'Chat': 1000,
    'Multi-language': 400,
    'Admin Dashboard': 800,
    'AI Feature': 1500,
    'Hosting': 600,
  };

  final Set<String> selectedFeatures = {};

  void calculatePrice() {
    double total = 2000;
    for (var f in selectedFeatures) {
      total += features[f]!;
    }
    setState(() {
      estimatedPrice = total;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text('Project Cost Estimator',style: GoogleFonts.ibmPlexSansArabic(),),
        title: Text(
          AppLocalizations.of(context)!.projectCostEstimator,
          style: GoogleFonts.ibmPlexSansArabic(),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
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
      alignment: AlignmentDirectional.center,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),

                /// 🔹 Title
                Text(
                  // "Turn your idea into numbers before investing a single dollar 💡",
                  AppLocalizations.of(context)!.projectCostEstimatorSubtitle,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.ibmPlexSansArabic(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                const SizedBox(height: 6),

                /// 🔹 Subtitle
                Container(
                  constraints: const BoxConstraints(maxWidth: 720),
                  child: Text(
                    // "Select your project requirements and get an instant estimate with smart suggestions ✨",
                    AppLocalizations.of(context)!
                        .projectCostEstimatorDescription,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.ibmPlexSansArabic(
                      fontSize: 16,
                      color: kCaptionColor,
                      height: 1.6,
                    ),
                  ),
                ),

                const SizedBox(height: 6),

                /// 🔹 Trust indicators
                TrustIndicators(),

                // const SizedBox(height: 24),

                /// 🔹 Estimator Stepper
                EstimatorStepper(
                  selectedFeatures: selectedFeatures,
                  onFeatureToggle: (feature) {
                    setState(() {
                      if (selectedFeatures.contains(feature)) {
                        selectedFeatures.remove(feature);
                      } else {
                        selectedFeatures.add(feature);
                      }
                      calculatePrice();
                    });
                  },
                ),

                // const SizedBox(height: 40),

                /// 🔹 Price Box
                // EstimatedPriceBox(price: estimatedPrice),

                // const SizedBox(height: 30),

                /// 🔹 Smart Offers
                // SmartOffersSection(),
                // SmartOffersSection(
                //   selectedFeatures: selectedFeatures,
                //   currentPrice: estimatedPrice,
                // ),

                SizedBox(
                  height: 80,
                ),

                /// 🔹 CTA
                // DetailedStudyCTA(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

// Trust Indicators
class TrustIndicators extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Wrap(
        spacing: 12,
        runSpacing: 8,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // _Indicator("❌ No commitment"),
          _Indicator(AppLocalizations.of(context)!.noCommitment),
          // _Indicator("💰 Approximate pricing"),
          _Indicator(AppLocalizations.of(context)!.approximatePricing),
          // _Indicator("📊 Request a detailed study"),
          _Indicator(AppLocalizations.of(context)!.requestDetailedStudy),
        ],
      ),
    );
  }

  Widget _Indicator(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        text,
        style: GoogleFonts.ibmPlexSansArabic(color: Colors.white),
      ),
    );
  }
}

// class EstimatorStepper extends StatelessWidget {
class EstimatorStepper extends StatefulWidget {
  final Set<String> selectedFeatures;
  final Function(String) onFeatureToggle;

  const EstimatorStepper({
    required this.selectedFeatures,
    required this.onFeatureToggle,
  });

  @override
  State<EstimatorStepper> createState() => EstimatorStepperState();
}

enum EstimatedPriceVariant { compact, highlighted }

enum ServiceOption {
  design,
  development,
  // designAndDevelopment,
}

enum PlatformOption {
  mobileApp,
  website,
  dashboard,
}

enum FeatureOption {
  chat,
  multiLanguage,
  payment,
  aiFeature,
  adminDashboard,
  notifications,
  forms,
  analytics,
  search,
  auth,
  socialIntegration,
  offlineMode,
  geolocation,
  fileHandling,
  calendar,
  chatbot,
  streaming,
  ecommerceCart,
  apiIntegration,
  darkMode,
}

enum ProjectQuality { mvp, standard, premium }

enum DeliverableOption {
  uxResearch,
  styleGuide,
  mockups,
  wireframes,
  uiDesign,
  prototypes,
  sourceCode,
  documentation,
  deployment,
  testing,
  adminDashboardConfig,
  landingPage,
  devStyleGuide,
}

class EstimatorStepperState extends State<EstimatorStepper> {
  int currentStep = 0;
  int serviceType = 0;
  List<ServiceOption> selectedServices = [ServiceOption.design];

  List<PlatformOption> selectedPlatforms = [PlatformOption.mobileApp];
  final List<FeatureOption> selectedFeatures = [];
  ProjectQuality? selectedQuality = ProjectQuality.mvp;
  List<DeliverableOption> selectedDeliverables = [];

  void toggleDeliverable(DeliverableOption option) {
    if (selectedDeliverables.contains(option)) {
      selectedDeliverables.remove(option);
    } else {
      selectedDeliverables.add(option);
    }
  }

  void toggleFeature(FeatureOption feature) {
    if (selectedFeatures.contains(feature)) {
      selectedFeatures.remove(feature);
    } else {
      selectedFeatures.add(feature);
    }
  }

  void toggleService(ServiceOption option) {
    if (selectedServices.contains(option)) {
      selectedServices.remove(option);
    } else {
      selectedServices.add(option);
    }
  }

  void togglePlatform(PlatformOption option) {
    if (selectedPlatforms.contains(option)) {
      selectedPlatforms.remove(option);
    } else {
      selectedPlatforms.add(option);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: kDesktopMaxWidth,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EstimatedPriceBox(
            price: '\$${calculateTotalPriceSafe(
              selectedServices: selectedServices,
              selectedPlatforms: selectedPlatforms,
              selectedFeatures: selectedFeatures,
              selectedDeliverables: selectedDeliverables,
              selectedQuality: selectedQuality!,
            ).toStringAsFixed(2)}',
          ),
          SizedBox(
            height: 12,
          ),
          Stepper(
            currentStep: currentStep,
            controlsBuilder: (context, details) {
              return Padding(
                padding: EdgeInsetsGeometry.only(top: 24),
                child: Row(
                  children: [
                    currentStep == 4
                        ? SizedBox()
                        : ElevatedButton(
                            onPressed:
                                canGoNextStep() ? details.onStepContinue : null,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: kPrimaryColor,
                              foregroundColor: Colors.white,
                            ),
                            child: Text(
                              // "Next Step",
                              AppLocalizations.of(context)!.nextStep,
                              style: GoogleFonts.ibmPlexSansArabic(
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                    const SizedBox(width: 12),
                    if (currentStep > 0)
                      TextButton(
                        onPressed: details.onStepCancel,
                        child: currentStep == 4
                            ? ElevatedButton(
                                onPressed: details.onStepCancel,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: kPrimaryColor,
                                  foregroundColor: Colors.white,
                                ),
                                child: Text(
                                  AppLocalizations.of(context)!.backStep,
                                  style: GoogleFonts.ibmPlexSansArabic(
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            : Text(
                                AppLocalizations.of(context)!.backStep,
                                style: GoogleFonts.ibmPlexSansArabic(
                                    fontWeight: FontWeight.bold,
                                    color: kSecondaryColor),
                              ),
                      ),
                  ],
                ),
              );
            },

            // currentStep: currentStep,
            // onStepContinue: () {
            //   if (currentStep < 4) {
            //     setState(() => currentStep++);
            //   }
            // },
            onStepContinue: () {
              if (!canGoNextStep()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      // currentStep == 0
                      //     ? "من فضلك اختر نوع الخدمة أولاً"
                      //     : "من فضلك اختر منصة واحدة على الأقل",
                      currentStep == 0
                          ? AppLocalizations.of(context)!
                              .validationSelectService
                          : AppLocalizations.of(context)!
                              .validationSelectPlatform,
                    ),
                  ),
                );
                return;
              }

              if (currentStep < 4) {
                setState(() => currentStep++);
              }
            },

            onStepCancel: () {
              if (currentStep > 0) {
                setState(() => currentStep--);
              }
            },
            steps: [
              Step(
                title: Text(
                  // "What kind of help are you looking for?",
                  AppLocalizations.of(context)!.whatKindOfHelp,
                  style: GoogleFonts.ibmPlexSansArabic(color: Colors.white),
                ),
                subtitle: Text(
                  // "You can choose more than one option",
                  AppLocalizations.of(context)!.multipleOptionsHint,
                  style: GoogleFonts.ibmPlexSansArabic(
                    color: kCaptionColor,
                    fontSize: 13,
                  ),
                ),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Wrap(
                      spacing: 12,
                      runSpacing: 8,
                      children: [
                        _ServiceChip(
                          // title: "Design 🎨",
                          title:
                              AppLocalizations.of(context)!.serviceDesignTitle,
                          // subtitle: "UI/UX, wireframes, branding",
                          subtitle: AppLocalizations.of(context)!
                              .serviceDesignSubtitle,
                          selected:
                              selectedServices.contains(ServiceOption.design),
                          onTap: () {
                            setState(() {
                              toggleService(ServiceOption.design);
                            });
                          },
                        ),
                        _ServiceChip(
                          // title: "Development 💻",
                          title: AppLocalizations.of(context)!
                              .serviceDevelopmentTitle,
                          // subtitle: "I already have the design",
                          subtitle: AppLocalizations.of(context)!
                              .serviceDevelopmentSubtitle,
                          selected: selectedServices
                              .contains(ServiceOption.development),
                          onTap: () {
                            setState(() {
                              toggleService(ServiceOption.development);
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Step(
                title: Text(
                  // "What do you want to build?",
                  AppLocalizations.of(context)!.whatDoYouWantToBuild,
                  style: GoogleFonts.ibmPlexSansArabic(color: Colors.white),
                ),
                subtitle: Padding(
                  padding: EdgeInsetsGeometry.only(bottom: 24),
                  child: Text(
                    // "You can choose more than one option 👇\nFor example: Mobile App + Website",
                    AppLocalizations.of(context)!.buildExamples,
                    style: GoogleFonts.ibmPlexSansArabic(
                      color: kCaptionColor,
                      fontSize: 13,
                      height: 1.5,
                    ),
                  ),
                ),
                content: Wrap(
                  spacing: 12,
                  runSpacing: 8,
                  children: [
                    _ServiceChip(
                      // title: "Mobile App 📱",
                      title: AppLocalizations.of(context)!.platformMobileApp,
                      // subtitle: "iOS, Android, or both",
                      subtitle: AppLocalizations.of(context)!
                          .platformMobileAppSubtitle,
                      selected:
                          selectedPlatforms.contains(PlatformOption.mobileApp),
                      onTap: () {
                        setState(() {
                          togglePlatform(PlatformOption.mobileApp);
                        });
                      },
                    ),
                    _ServiceChip(
                      // title: "Website 🌍",
                      title: AppLocalizations.of(context)!.platformWebsite,
                      // subtitle: "Landing page or full platform",
                      subtitle:
                          AppLocalizations.of(context)!.platformWebsiteSubtitle,
                      selected:
                          selectedPlatforms.contains(PlatformOption.website),
                      onTap: () {
                        setState(() {
                          togglePlatform(PlatformOption.website);
                        });
                      },
                    ),
                    _ServiceChip(
                      // title: "Admin Dashboard 🧩",
                      title:
                          AppLocalizations.of(context)!.platformAdminDashboard,
                      // subtitle: "Manage users, content & data",
                      subtitle: AppLocalizations.of(context)!
                          .platformAdminDashboardSubtitle,
                      selected:
                          selectedPlatforms.contains(PlatformOption.dashboard),
                      onTap: () {
                        setState(() {
                          togglePlatform(PlatformOption.dashboard);
                        });
                      },
                    ),
                  ],
                ),
              ),
              Step(
                title: Text(
                  // "What features do you need?",
                  AppLocalizations.of(context)!.featuresTitle,
                  style: GoogleFonts.ibmPlexSansArabic(color: Colors.white),
                ),
                subtitle: Text(
                  // "Select everything your idea needs – you can always refine it later ✨",
                  AppLocalizations.of(context)!.featuresSubtitle,
                  style: GoogleFonts.ibmPlexSansArabic(
                    color: kCaptionColor,
                    fontSize: 13,
                    height: 1.5,
                  ),
                ),
                content: Wrap(
                  spacing: 12,
                  runSpacing: 8,
                  children: [
                    _ServiceChip(
                      // title: "Dark Mode 🌙",
                      title: AppLocalizations.of(context)!.featureDarkMode,
                      subtitle:
                          // "Allow users to switch between light and dark theme",
                          AppLocalizations.of(context)!.featureDarkModeSubtitle,
                      selected:
                          selectedFeatures.contains(FeatureOption.darkMode),
                      onTap: () {
                        setState(() {
                          toggleFeature(FeatureOption.darkMode);
                        });
                      },
                    ),
                    _ServiceChip(
                      title: AppLocalizations.of(context)!.featureChat,
                      // title: "Chat 💬",
                      // subtitle: "Real-time messaging between users",
                      subtitle:
                          AppLocalizations.of(context)!.featureChatSubtitle,
                      selected: selectedFeatures.contains(FeatureOption.chat),
                      onTap: () {
                        setState(() {
                          toggleFeature(FeatureOption.chat);
                        });
                      },
                    ),
                    _ServiceChip(
                      // title: "Multi-language 🌍",
                      title: AppLocalizations.of(context)!.featureMultiLanguage,
                      // subtitle: "Support multiple languages",
                      subtitle: AppLocalizations.of(context)!
                          .featureMultiLanguageSubtitle,
                      selected: selectedFeatures
                          .contains(FeatureOption.multiLanguage),
                      onTap: () {
                        setState(() {
                          toggleFeature(FeatureOption.multiLanguage);
                        });
                      },
                    ),
                    _ServiceChip(
                      // title: "Online Payments 💳",
                      title:
                          AppLocalizations.of(context)!.featureOnlinePayments,
                      // subtitle: "Accept payments securely",
                      subtitle: AppLocalizations.of(context)!
                          .featureOnlinePaymentsSubtitle,
                      selected:
                          selectedFeatures.contains(FeatureOption.payment),
                      onTap: () {
                        setState(() {
                          toggleFeature(FeatureOption.payment);
                        });
                      },
                    ),
                    _ServiceChip(
                      title: AppLocalizations.of(context)!.featureAi,
                      // title: "AI Features 🤖",
                      subtitle: AppLocalizations.of(context)!.featureAiSubtitle,
                      // subtitle: "Smart recommendations or automation",
                      selected:
                          selectedFeatures.contains(FeatureOption.aiFeature),
                      onTap: () {
                        setState(() {
                          toggleFeature(FeatureOption.aiFeature);
                        });
                      },
                    ),
                    _ServiceChip(
                      // title: "Admin Dashboard 🧩",
                      title:
                          AppLocalizations.of(context)!.featureAdminDashboard,
                      // subtitle: "Manage users, content & settings",
                      subtitle: AppLocalizations.of(context)!
                          .featureAdminDashboardSubtitle,
                      selected: selectedFeatures
                          .contains(FeatureOption.adminDashboard),
                      onTap: () {
                        setState(() {
                          toggleFeature(FeatureOption.adminDashboard);
                        });
                      },
                    ),
                    _ServiceChip(
                      title: AppLocalizations.of(context)!.featureNotifications,
                      // title: "Notifications 🔔",
                      // subtitle: "Push or in-app notifications",
                      subtitle: AppLocalizations.of(context)!
                          .featureNotificationsSubtitle,
                      selected: selectedFeatures
                          .contains(FeatureOption.notifications),
                      onTap: () {
                        setState(() {
                          toggleFeature(FeatureOption.notifications);
                        });
                      },
                    ),
                    _ServiceChip(
                      title: AppLocalizations.of(context)!.featureFormsSurveys,
                      // title: "Forms & Surveys 📝",
                      // subtitle: "Collect user input",
                      subtitle: AppLocalizations.of(context)!
                          .featureFormsSurveysSubtitle,
                      selected: selectedFeatures.contains(FeatureOption.forms),
                      onTap: () {
                        setState(() {
                          toggleFeature(FeatureOption.forms);
                        });
                      },
                    ),
                    _ServiceChip(
                      // title: "Analytics & Reporting 📊",
                      title: AppLocalizations.of(context)!.featureAnalytics,
                      // subtitle: "Track user behavior and metrics",
                      subtitle: AppLocalizations.of(context)!
                          .featureAnalyticsSubtitle,
                      selected:
                          selectedFeatures.contains(FeatureOption.analytics),
                      onTap: () {
                        setState(() {
                          toggleFeature(FeatureOption.analytics);
                        });
                      },
                    ),
                    _ServiceChip(
                      title:
                          AppLocalizations.of(context)!.featureSearchFiltering,
                      // title: "Search / Filtering 🔍",
                      // subtitle: "Find and filter content",
                      subtitle: AppLocalizations.of(context)!
                          .featureSearchFilteringSubtitle,
                      selected: selectedFeatures.contains(FeatureOption.search),
                      onTap: () {
                        setState(() {
                          toggleFeature(FeatureOption.search);
                        });
                      },
                    ),
                    _ServiceChip(
                      title:
                          AppLocalizations.of(context)!.featureAuthentication,
                      // title: "User Authentication 🔑",
                      // subtitle: "Login, signup & social login",
                      subtitle: AppLocalizations.of(context)!
                          .featureAuthenticationSubtitle,
                      selected: selectedFeatures.contains(FeatureOption.auth),
                      onTap: () {
                        setState(() {
                          toggleFeature(FeatureOption.auth);
                        });
                      },
                    ),
                    _ServiceChip(
                      title: AppLocalizations.of(context)!
                          .featureSocialIntegration,
                      // title: "Social Media Integration 📱",
                      // subtitle: "Connect with social platforms",
                      subtitle: AppLocalizations.of(context)!
                          .featureSocialIntegrationSubtitle,
                      selected: selectedFeatures
                          .contains(FeatureOption.socialIntegration),
                      onTap: () {
                        setState(() {
                          toggleFeature(FeatureOption.socialIntegration);
                        });
                      },
                    ),
                    _ServiceChip(
                      title: AppLocalizations.of(context)!.featureOfflineMode,
                      // title: "Offline Mode 🌐",
                      // subtitle: "Access features without internet",
                      subtitle: AppLocalizations.of(context)!
                          .featureOfflineModeSubtitle,
                      selected:
                          selectedFeatures.contains(FeatureOption.offlineMode),
                      onTap: () {
                        setState(() {
                          toggleFeature(FeatureOption.offlineMode);
                        });
                      },
                    ),
                    _ServiceChip(
                      title: AppLocalizations.of(context)!.featureGeolocation,
                      // title: "Geolocation 📍",
                      // subtitle: "Track user location",
                      subtitle: AppLocalizations.of(context)!
                          .featureGeolocationSubtitle,
                      selected:
                          selectedFeatures.contains(FeatureOption.geolocation),
                      onTap: () {
                        setState(() {
                          toggleFeature(FeatureOption.geolocation);
                        });
                      },
                    ),
                    _ServiceChip(
                      title: AppLocalizations.of(context)!.featureFileUpload,
                      // title: "File Upload / Download 📁",
                      // subtitle: "Upload and download files",
                      subtitle: AppLocalizations.of(context)!
                          .featureFileUploadSubtitle,
                      selected:
                          selectedFeatures.contains(FeatureOption.fileHandling),
                      onTap: () {
                        setState(() {
                          toggleFeature(FeatureOption.fileHandling);
                        });
                      },
                    ),
                    _ServiceChip(
                      title: AppLocalizations.of(context)!.featureCalendar,
                      // title: "Calendar / Scheduling 📅",
                      // subtitle: "Manage events and schedules",
                      subtitle:
                          AppLocalizations.of(context)!.featureCalendarSubtitle,
                      selected:
                          selectedFeatures.contains(FeatureOption.calendar),
                      onTap: () {
                        setState(() {
                          toggleFeature(FeatureOption.calendar);
                        });
                      },
                    ),
                    _ServiceChip(
                      title: AppLocalizations.of(context)!.featureChatbot,
                      // title: "Chatbot / FAQ 🤖",
                      // subtitle: "Automated assistance or FAQs",
                      subtitle:
                          AppLocalizations.of(context)!.featureChatbotSubtitle,
                      selected:
                          selectedFeatures.contains(FeatureOption.chatbot),
                      onTap: () {
                        setState(() {
                          toggleFeature(FeatureOption.chatbot);
                        });
                      },
                    ),
                    _ServiceChip(
                      title: AppLocalizations.of(context)!.featureStreaming,
                      // title: "Audio / Video Streaming 🎥",
                      // subtitle: "Stream audio or video content",
                      subtitle: AppLocalizations.of(context)!
                          .featureStreamingSubtitle,
                      selected:
                          selectedFeatures.contains(FeatureOption.streaming),
                      onTap: () {
                        setState(() {
                          toggleFeature(FeatureOption.streaming);
                        });
                      },
                    ),
                    _ServiceChip(
                      title: AppLocalizations.of(context)!.featureEcommerceCart,
                      // title: "E-commerce Cart 🛒",
                      // subtitle: "Shopping cart & checkout",
                      subtitle: AppLocalizations.of(context)!
                          .featureEcommerceCartSubtitle,
                      selected: selectedFeatures
                          .contains(FeatureOption.ecommerceCart),
                      onTap: () {
                        setState(() {
                          toggleFeature(FeatureOption.ecommerceCart);
                        });
                      },
                    ),
                    _ServiceChip(
                      title:
                          AppLocalizations.of(context)!.featureApiIntegration,
                      // title: "API Integration 🌐",
                      // subtitle: "Connect to third-party APIs",
                      subtitle: AppLocalizations.of(context)!
                          .featureApiIntegrationSubtitle,
                      selected: selectedFeatures
                          .contains(FeatureOption.apiIntegration),
                      onTap: () {
                        setState(() {
                          toggleFeature(FeatureOption.apiIntegration);
                        });
                      },
                    ),
                  ],
                ),
              ),
              Step(
                title: Text(
                  // "What deliverables do you expect?",
                  AppLocalizations.of(context)!.deliverablesTitle,
                  style: GoogleFonts.ibmPlexSansArabic(color: Colors.white),
                ),
                subtitle: Text(
                  AppLocalizations.of(context)!.deliverablesSelectionTitle,
                  // "Select everything you want to receive at the end of the project ✨",
                  style: GoogleFonts.ibmPlexSansArabic(
                    color: kCaptionColor,
                    fontSize: 13,
                    height: 1.5,
                  ),
                ),
                content: Wrap(
                  spacing: 12,
                  runSpacing: 8,
                  children: [
                    // Design Deliverables
                    _ServiceChip(
                      title:
                          AppLocalizations.of(context)!.deliverableUxResearch,
                      // title: "UX Research Document 📋",
                      // subtitle: "User research, surveys, and personas",
                      subtitle: AppLocalizations.of(context)!
                          .deliverableUxResearchSubtitle,
                      selected: selectedDeliverables
                          .contains(DeliverableOption.uxResearch),
                      onTap: () {
                        setState(() {
                          toggleDeliverable(DeliverableOption.uxResearch);
                        });
                      },
                    ),
                    _ServiceChip(
                      title:
                          AppLocalizations.of(context)!.deliverableStyleGuide,
                      // title: "Style Guide 🎨",
                      // subtitle: "Brand colors, fonts, and design rules",
                      subtitle: AppLocalizations.of(context)!
                          .deliverableStyleGuideSubtitle,
                      selected: selectedDeliverables
                          .contains(DeliverableOption.styleGuide),
                      onTap: () {
                        setState(() {
                          toggleDeliverable(DeliverableOption.styleGuide);
                        });
                      },
                    ),
                    _ServiceChip(
                      title: AppLocalizations.of(context)!.deliverableMockups,
                      // title: "Mockups 🖼️",
                      subtitle: AppLocalizations.of(context)!
                          .deliverableMockupsSubtitle,
                      // "High-fidelity visual representation of screens",
                      selected: selectedDeliverables
                          .contains(DeliverableOption.mockups),
                      onTap: () {
                        setState(() {
                          toggleDeliverable(DeliverableOption.mockups);
                        });
                      },
                    ),
                    _ServiceChip(
                      title:
                          AppLocalizations.of(context)!.deliverableWireframes,
                      // title: "Wireframes / Mockups 📝",
                      // subtitle: "Low-fidelity layout and flow of the app",
                      subtitle: AppLocalizations.of(context)!
                          .deliverableWireframesSubtitle,
                      selected: selectedDeliverables
                          .contains(DeliverableOption.wireframes),
                      onTap: () {
                        setState(() {
                          toggleDeliverable(DeliverableOption.wireframes);
                        });
                      },
                    ),
                    _ServiceChip(
                      title: AppLocalizations.of(context)!.deliverableUiDesign,
                      // title: "UI Design 🎨",
                      // subtitle: "Design of user interface elements",
                      subtitle: AppLocalizations.of(context)!
                          .deliverableUiDesignSubtitle,
                      selected: selectedDeliverables
                          .contains(DeliverableOption.uiDesign),
                      onTap: () {
                        setState(() {
                          toggleDeliverable(DeliverableOption.uiDesign);
                        });
                      },
                    ),
                    _ServiceChip(
                      title:
                          AppLocalizations.of(context)!.deliverablePrototypes,
                      // title: "Prototypes 🔗",
                      // subtitle: "Clickable or interactive demo of the design",
                      subtitle: AppLocalizations.of(context)!
                          .deliverablePrototypesSubtitle,
                      selected: selectedDeliverables
                          .contains(DeliverableOption.prototypes),
                      onTap: () {
                        setState(() {
                          toggleDeliverable(DeliverableOption.prototypes);
                        });
                      },
                    ),

                    // Development Deliverables
                    _ServiceChip(
                      title:
                          AppLocalizations.of(context)!.deliverableSourceCode,
                      // title: "Source Code Handover 🖥️",
                      // subtitle: "Full code handover for the project",
                      subtitle: AppLocalizations.of(context)!
                          .deliverableSourceCodeSubtitle,
                      selected: selectedDeliverables
                          .contains(DeliverableOption.sourceCode),
                      onTap: () {
                        setState(() {
                          toggleDeliverable(DeliverableOption.sourceCode);
                        });
                      },
                    ),
                    _ServiceChip(
                      title: AppLocalizations.of(context)!
                          .deliverableDocumentation,
                      // title: "Documentation / Guides 📄",
                      // subtitle: "User manuals, API docs, technical guides",
                      subtitle: AppLocalizations.of(context)!
                          .deliverableDocumentationSubtitle,
                      selected: selectedDeliverables
                          .contains(DeliverableOption.documentation),
                      onTap: () {
                        setState(() {
                          toggleDeliverable(DeliverableOption.documentation);
                        });
                      },
                    ),
                    _ServiceChip(
                      title:
                          AppLocalizations.of(context)!.deliverableDeployment,
                      // title: "Deployment Setup ⚙️",
                      // subtitle: "Ready-to-deploy package or instructions",
                      subtitle: AppLocalizations.of(context)!
                          .deliverableDeploymentSubtitle,
                      selected: selectedDeliverables
                          .contains(DeliverableOption.deployment),
                      onTap: () {
                        setState(() {
                          toggleDeliverable(DeliverableOption.deployment);
                        });
                      },
                    ),
                    _ServiceChip(
                      title: AppLocalizations.of(context)!.deliverableTesting,
                      // title: "Testing / QA Reports 🧪",
                      // subtitle: "Functional and performance testing results",
                      subtitle: AppLocalizations.of(context)!
                          .deliverableTestingSubtitle,
                      selected: selectedDeliverables
                          .contains(DeliverableOption.testing),
                      onTap: () {
                        setState(() {
                          toggleDeliverable(DeliverableOption.testing);
                        });
                      },
                    ),
                    _ServiceChip(
                      title:
                          AppLocalizations.of(context)!.deliverableAdminPanel,
                      // title: "Admin Panel Config 🧩",
                      // subtitle: "Setup of roles, permissions, and dashboard",
                      subtitle: AppLocalizations.of(context)!
                          .deliverableAdminPanelSubtitle,
                      selected: selectedDeliverables
                          .contains(DeliverableOption.adminDashboardConfig),
                      onTap: () {
                        setState(() {
                          toggleDeliverable(
                              DeliverableOption.adminDashboardConfig);
                        });
                      },
                    ),

                    // Landing Page
                    _ServiceChip(
                      title:
                          AppLocalizations.of(context)!.deliverableLandingPage,
                      // title: "Landing Page Copy & Layout 🏷️",
                      subtitle:
                          // "Content, images, and structure for landing pages",
                          AppLocalizations.of(context)!
                              .deliverableLandingPageSubtitle,
                      selected: selectedDeliverables
                          .contains(DeliverableOption.landingPage),
                      onTap: () {
                        setState(() {
                          toggleDeliverable(DeliverableOption.landingPage);
                        });
                      },
                    ),
                    _ServiceChip(
                      title: AppLocalizations.of(context)!
                          .deliverableDevStyleGuide,
                      // title: "Style Guide for Developers 🖌️",
                      // subtitle: "Reference guide for implementing UI in code",
                      subtitle: AppLocalizations.of(context)!
                          .deliverableDevStyleGuideSubtitle,
                      selected: selectedDeliverables
                          .contains(DeliverableOption.devStyleGuide),
                      onTap: () {
                        setState(() {
                          toggleDeliverable(DeliverableOption.devStyleGuide);
                        });
                      },
                    ),
                  ],
                ),
              ),
              Step(
                title: Text(AppLocalizations.of(context)!.projectQualityLevel,
                    // title: Text("Project Quality Level",
                    style: GoogleFonts.ibmPlexSansArabic(color: Colors.white)),
                subtitle: Text(
                  AppLocalizations.of(context)!.chooseProjectQualityLevelHint,
                  // "Choose the level that matches your project needs",
                  style: GoogleFonts.ibmPlexSansArabic(
                      color: kCaptionColor, fontSize: 13, height: 1.5),
                ),
                content: Column(
                  children: [
                    Wrap(
                      spacing: 12,
                      runSpacing: 8,
                      children: [
                        _ServiceChip(
                          title: AppLocalizations.of(context)!.qualityMvp,
                          // title: "MVP – Proof of Concept 💡",
                          subtitle:
                              AppLocalizations.of(context)!.qualityMvpSubtitle,
                          // "Essential features only, basic deliverables",
                          selected: selectedQuality == ProjectQuality.mvp,
                          onTap: () => setState(
                              () => selectedQuality = ProjectQuality.mvp),
                        ),
                        _ServiceChip(
                          title: AppLocalizations.of(context)!.qualityStandard,
                          // title: "Standard 🔧",
                          subtitle: AppLocalizations.of(context)!
                              .qualityStandardSubtitle,
                          // "Balanced features and deliverables, partial enhancements",
                          selected: selectedQuality == ProjectQuality.standard,
                          onTap: () => setState(
                              () => selectedQuality = ProjectQuality.standard),
                        ),
                        _ServiceChip(
                          // title: "Premium – Ready to Launch 🚀",
                          title: AppLocalizations.of(context)!.qualityPremium,
                          subtitle: AppLocalizations.of(context)!
                              .qualityPremiumSubtitle,
                          // "All selected features + full deliverables + extra polish",
                          selected: selectedQuality == ProjectQuality.premium,
                          onTap: () => setState(
                              () => selectedQuality = ProjectQuality.premium),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          EstimatedPriceBox(
            price: '\$${calculateTotalPriceSafe(
              selectedServices: selectedServices,
              selectedPlatforms: selectedPlatforms,
              selectedFeatures: selectedFeatures,
              selectedDeliverables: selectedDeliverables,
              selectedQuality: selectedQuality!,
            ).toStringAsFixed(2)}',
            variant: EstimatedPriceVariant.highlighted,
          ),
          if (currentStep >= 2 && selectedFeatures.isNotEmpty)
            SmartOffersSection(
              selectedFeatures: selectedFeatures,
              currentPrice: calculateTotalPriceSafe(
                selectedServices: selectedServices,
                selectedPlatforms: selectedPlatforms,
                selectedFeatures: selectedFeatures,
                selectedDeliverables: selectedDeliverables,
                selectedQuality: selectedQuality!,
              ),
            ),
          const SizedBox(height: 24),
          if (currentStep == 4)
            DetailedStudyCTA(
              services: selectedServices.toSet(),
              platforms: selectedPlatforms.toSet(),
              features: selectedFeatures.toSet(),
              deliverables: selectedDeliverables.toSet(),
              quality: selectedQuality!,
              estimatedPrice: calculateTotalPriceSafe(
                selectedServices: selectedServices,
                selectedPlatforms: selectedPlatforms,
                selectedFeatures: selectedFeatures,
                selectedDeliverables: selectedDeliverables,
                selectedQuality: selectedQuality!,
              ),
            ),
        ],
      ),
    );
  }

  bool canGoNextStep() {
    switch (currentStep) {
      case 0:
        return selectedServices.isNotEmpty;
      case 1:
        return selectedPlatforms.isNotEmpty;
      default:
        return true;
    }
  }
}

class _ServiceChip extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool selected;
  final VoidCallback onTap;

  const _ServiceChip({
    required this.title,
    required this.subtitle,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      selected: selected,
      selectedColor: kPrimaryColor.withOpacity(0.2),
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: BorderSide(
          color: selected ? kPrimaryColor : Colors.white24,
        ),
      ),
      label: SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.ibmPlexSansArabic(
                color: selected ? kPrimaryColor : Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              subtitle,
              style: GoogleFonts.ibmPlexSansArabic(
                fontSize: 12,
                color: kCaptionColor,
              ),
            ),
          ],
        ),
      ),
      onSelected: (_) => onTap(),
    );
  }
}

class EstimatedPriceBox extends StatelessWidget {
  final String price;
  final EstimatedPriceVariant variant;

  const EstimatedPriceBox({
    super.key,
    required this.price,
    this.variant = EstimatedPriceVariant.compact,
  });

  bool get isHighlighted => variant == EstimatedPriceVariant.highlighted;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: isHighlighted ? 32 : 16),
      padding: EdgeInsets.symmetric(
        horizontal: isHighlighted ? 32 : 24,
        vertical: isHighlighted ? 28 : 20,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            kPrimaryColor.withOpacity(isHighlighted ? 0.35 : 0.18),
            kPrimaryColor.withOpacity(isHighlighted ? 0.15 : 0.06),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: kPrimaryColor.withOpacity(isHighlighted ? 0.8 : 0.5),
          width: isHighlighted ? 1.4 : 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Title
          Text(
            // isHighlighted ? "Final Estimated Cost" : "Estimated Cost",
            isHighlighted
                ? AppLocalizations.of(context)!.finalEstimatedCost
                : AppLocalizations.of(context)!.estimatedCost,
            style: GoogleFonts.ibmPlexSansArabic(
              color: Colors.white60,
              fontSize: isHighlighted ? 15 : 13,
              letterSpacing: 1.1,
            ),
          ),

          const SizedBox(height: 12),

          /// Price
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                price.replaceAll(" USD", ""),
                style: GoogleFonts.ibmPlexSansArabic(
                  fontSize: isHighlighted ? 46 : 34,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                  height: 1,
                ),
              ),
              const SizedBox(width: 8),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  AppLocalizations.of(context)!.currencyUsd,
                  // "USD",
                  style: GoogleFonts.ibmPlexSansArabic(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          /// Description
          Text(
            // isHighlighted
            //     ? "This is the final estimate based on all your selections"
            //     : "Price updates automatically as you choose options",
            isHighlighted
                ? AppLocalizations.of(context)!.finalEstimateDescription
                : AppLocalizations.of(context)!.priceAutoUpdateHint,
            style: GoogleFonts.ibmPlexSansArabic(
              color: Colors.white54,
              fontSize: 13,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}

class SmartOffer {
  final String title;
  final String description;
  final double extraPrice;
  final FeatureOption feature;

  SmartOffer({
    required this.title,
    required this.description,
    required this.extraPrice,
    required this.feature,
  });
}

List<SmartOffer> generateSmartOffers({
  required Set<FeatureOption> selectedFeatures,
  required double basePrice,
  required BuildContext context,
}) {
  final List<SmartOffer> offers = [];

  bool has(FeatureOption f) => selectedFeatures.contains(f);

  // ===============================
  // Communication & Engagement
  // ===============================

  if (has(FeatureOption.chat) && !has(FeatureOption.chatbot)) {
    offers.add(
      SmartOffer(
        title: AppLocalizations.of(context)!.featureChatbot,
        // title: "AI Chatbot Assistant 🤖",
        description:
            // "Automate replies, support users 24/7, and reduce manual support.",
        AppLocalizations.of(context)!.upgradeAiChatbotSubtitle,
        extraPrice: 350,
        feature: FeatureOption.chatbot,
      ),
    );
  }

  if (!has(FeatureOption.notifications)) {
    offers.add(
      SmartOffer(
        title: AppLocalizations.of(context)!.upgradeSmartNotificationsTitle,
        // title: "Smart Notifications 🔔",
        // description: "Increase engagement with push and in-app notifications.",
        description: AppLocalizations.of(context)!.upgradeSmartNotificationsSubtitle,
        extraPrice: 200,
        feature: FeatureOption.notifications,
      ),
    );
  }

  // ===============================
  // Product Intelligence
  // ===============================

  if (!has(FeatureOption.analytics)) {
    offers.add(
      SmartOffer(
        title: AppLocalizations.of(context)!.upgradeAnalyticsTitle,
        // title: "Analytics & Reporting 📊",
        // description: "Understand user behavior and improve decision-making.",
        description: AppLocalizations.of(context)!.upgradeAnalyticsSubtitle,
        extraPrice: 280,
        feature: FeatureOption.analytics,
      ),
    );
  }

  if (!has(FeatureOption.search)) {
    offers.add(
      SmartOffer(
        title: AppLocalizations.of(context)!.upgradeAdvancedSearchTitle,
        // title: "Advanced Search & Filtering 🔍",
        // description: "Help users find content faster with smart filtering.",
        description: AppLocalizations.of(context)!.upgradeAdvancedSearchSubtitle,
        extraPrice: 220,
        feature: FeatureOption.search,
      ),
    );
  }

  // ===============================
  // Platform Enhancements
  // ===============================

  if (!has(FeatureOption.offlineMode)) {
    offers.add(
      SmartOffer(
        title: AppLocalizations.of(context)!.upgradeOfflineModeTitle,
        // title: "Offline Mode 🌐",
        // description: "Allow users to access core features without internet.",
        description: AppLocalizations.of(context)!.upgradeOfflineModeSubtitle,
        extraPrice: 260,
        feature: FeatureOption.offlineMode,
      ),
    );
  }

  if (!has(FeatureOption.multiLanguage)) {
    offers.add(
      SmartOffer(
        title: AppLocalizations.of(context)!.upgradeMultiLanguageTitle,
        // title: "Multi-language Support 🌍",
        // description: "Reach more users by supporting multiple languages.",
        description: AppLocalizations.of(context)!.upgradeMultiLanguageSubtitle,
        extraPrice: 300,
        feature: FeatureOption.multiLanguage,
      ),
    );
  }

  if (!has(FeatureOption.payment)) {
    offers.add(
      SmartOffer(
        title: AppLocalizations.of(context)!.upgradeOnlinePaymentsTitle,
        // title: "Online Payments 💳",
        // description: "Accept secure payments directly inside your product.",
        description: AppLocalizations.of(context)!.upgradeOnlinePaymentsSubtitle,
        extraPrice: 320,
        feature: FeatureOption.payment,
      ),
    );
  }

  return offers.take(4).toList();
}

class OfferCard extends StatelessWidget {
  final SmartOffer offer;
  final double basePrice;

  const OfferCard({
    super.key,
    required this.offer,
    required this.basePrice,
  });

  @override
  Widget build(BuildContext context) {
    final total = basePrice + offer.extraPrice;

    return Container(
      width: 300,
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: [
            kPrimaryColor.withOpacity(0.18),
            kPrimaryColor.withOpacity(0.06),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(
          color: kPrimaryColor.withOpacity(0.4),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            offer.title,
            style: GoogleFonts.ibmPlexSansArabic(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            offer.description,
            style: GoogleFonts.ibmPlexSansArabic(
              fontSize: 13,
              color: Colors.white70,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "+\$${offer.extraPrice.toStringAsFixed(0)}",
                style: GoogleFonts.ibmPlexSansArabic(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
              Text(
                // "Total: \$${total.toStringAsFixed(0)}",
                AppLocalizations.of(context)!.total + total.toStringAsFixed(0),
                style: GoogleFonts.ibmPlexSansArabic(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: kSecondaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SmartOffersSection extends StatelessWidget {
  final List<FeatureOption> selectedFeatures;
  final double currentPrice;

  const SmartOffersSection({
    super.key,
    required this.selectedFeatures,
    required this.currentPrice,
  });

  @override
  Widget build(BuildContext context) {
    final offers = generateSmartOffers(
      selectedFeatures: selectedFeatures.toSet(),
      basePrice: currentPrice,
      context: context
    );

    if (offers.isEmpty) return const SizedBox();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocalizations.of(context)!.recommendedUpgrades,
          // "Recommended upgrades for your project 🚀",
          style: GoogleFonts.ibmPlexSansArabic(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          AppLocalizations.of(context)!.recommendedUpgradesDescription,
          // "Based on your current selections, these additions can increase value and impact.",
          style: GoogleFonts.ibmPlexSansArabic(
            fontSize: 14,
            color: Colors.white60,
            height: 1.5,
          ),
        ),
        const SizedBox(height: 20),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: offers.map((offer) {
            return OfferCard(
              offer: offer,
              basePrice: currentPrice,
            );
          }).toList(),
        ),
      ],
    );
  }
}

void openWhatsApp(String phoneNumber, String message) {
  print(phoneNumber);
  final encodedMessage = Uri.encodeComponent(message);
  print(phoneNumber);
  final url = Uri.parse("https://wa.me/$phoneNumber?text=$encodedMessage");
  print(phoneNumber);
  launchUrl(url, mode: LaunchMode.externalApplication);
  print(phoneNumber);
}

String prettify(String value) {
  return value
      .replaceAllMapped(
        RegExp(r'([a-z])([A-Z])'),
        (m) => '${m[1]} ${m[2]}',
      )
      .replaceFirstMapped(
        RegExp(r'^[a-z]'),
        (m) => m[0]!.toUpperCase(),
      );
}

String formatEnum(dynamic e) {
  return prettify(e.toString().split('.').last);
}

String buildWhatsAppMessage({
  required Set<ServiceOption> services,
  required Set<PlatformOption> platforms,
  required Set<FeatureOption> features,
  required Set<DeliverableOption> deliverables,
  required ProjectQuality quality,
  required double estimatedPrice,
}) {
  String list(Set items) {
    if (items.isEmpty) return "• None";
    return items.map((e) => "• ${formatEnum(e)}").join("\n");
  }

  return '''
Hello 👋  
I’ve just completed the project estimator and would like a detailed study.

🛠 Services:
${list(services)}

📱 Platforms:  
${list(platforms)}

🔔 Features:  
${list(features)}

📦 Deliverables:  
${list(deliverables)}

✅ Quality Level:  
• ${formatEnum(quality)}

💵 Estimated Budget:  
\$${estimatedPrice.toStringAsFixed(2)}

Looking forward to discussing the next steps.
''';
}

class DetailedStudyCTA extends StatelessWidget {
  final Set<ServiceOption> services;
  final Set<PlatformOption> platforms;
  final Set<FeatureOption> features;
  final Set<DeliverableOption> deliverables;
  final ProjectQuality quality;
  final double estimatedPrice;

  const DetailedStudyCTA({
    super.key,
    required this.services,
    required this.platforms,
    required this.features,
    required this.deliverables,
    required this.quality,
    required this.estimatedPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // النصوص خارج المستطيل
        Text(
          AppLocalizations.of(context)!.needPreciseEstimate,
          // "Need a precise estimate & execution plan?",
          style: GoogleFonts.ibmPlexSansArabic(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 12),
        Text(
          AppLocalizations.of(context)!.preciseEstimateDescription,
          // "Based on your selections, we can prepare a detailed scope, timeline, and final pricing — tailored exactly to your idea.",
          style: GoogleFonts.ibmPlexSansArabic(
            color: Colors.white70,
            height: 1.6,
          ),
        ),
        const SizedBox(height: 24),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 12),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                kSecondaryColor.withOpacity(0.5),
                Colors.grey,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white12),
          ),
          child: InkWell(
            onTap: () {
              final message = buildWhatsAppMessage(
                services: services,
                platforms: platforms,
                features: features,
                deliverables: deliverables,
                quality: quality,
                estimatedPrice: estimatedPrice,
              );

              openWhatsApp("972595192140", message);
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  AppLocalizations.of(context)!.continueOnWhatsapp,
                  // "Continue on WhatsApp",
                  style: GoogleFonts.ibmPlexSansArabic(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  AppLocalizations.of(context)!.whatsappHint,
                  // "Takes less than 2 minutes · No commitment",
                  style: GoogleFonts.ibmPlexSansArabic(
                    fontSize: 10,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class FeatureChip extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback? onTap;

  const FeatureChip(
    this.label, {
    this.selected = false,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(
          color: selected ? kPrimaryColor.withOpacity(0.2) : Colors.black,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: selected ? kPrimaryColor : Colors.white24,
          ),
        ),
        child: Text(
          label,
          style: GoogleFonts.ibmPlexSansArabic(
            color: selected ? kPrimaryColor : Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}

////////////////////
Map<DeliverableOption, Map<ServiceOption, Map<PlatformOption, double>>>
    deliverablePrices = {
  DeliverableOption.uxResearch: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 80,
      PlatformOption.website: 70,
      PlatformOption.dashboard: 90,
    },
  },
  DeliverableOption.styleGuide: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 50,
      PlatformOption.website: 40,
      PlatformOption.dashboard: 60,
    },
  },
  DeliverableOption.mockups: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 70,
      PlatformOption.website: 60,
      PlatformOption.dashboard: 80,
    },
  },
  DeliverableOption.wireframes: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 60,
      PlatformOption.website: 50,
      PlatformOption.dashboard: 70,
    },
  },
  DeliverableOption.uiDesign: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 80,
      PlatformOption.website: 70,
      PlatformOption.dashboard: 100,
    },
  },
  DeliverableOption.prototypes: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 70,
      PlatformOption.website: 60,
      PlatformOption.dashboard: 80,
    },
  },
  DeliverableOption.sourceCode: {
    ServiceOption.development: {
      PlatformOption.mobileApp: 150,
      PlatformOption.website: 120,
      PlatformOption.dashboard: 200,
    },
  },
  DeliverableOption.documentation: {
    ServiceOption.development: {
      PlatformOption.mobileApp: 50,
      PlatformOption.website: 40,
      PlatformOption.dashboard: 60,
    },
  },
  DeliverableOption.deployment: {
    ServiceOption.development: {
      PlatformOption.mobileApp: 40,
      PlatformOption.website: 30,
      PlatformOption.dashboard: 50,
    },
  },
  DeliverableOption.testing: {
    ServiceOption.development: {
      PlatformOption.mobileApp: 50,
      PlatformOption.website: 40,
      PlatformOption.dashboard: 60,
    },
  },
  DeliverableOption.adminDashboardConfig: {
    ServiceOption.development: {
      PlatformOption.dashboard: 100,
    },
  },
  DeliverableOption.landingPage: {
    ServiceOption.design: {
      PlatformOption.website: 60,
    },
  },
  DeliverableOption.devStyleGuide: {
    ServiceOption.development: {
      PlatformOption.website: 40,
    },
  },
};

Map<ServiceOption, Map<PlatformOption, double>> basePrices = {
  ServiceOption.design: {
    PlatformOption.mobileApp: 200,
    PlatformOption.website: 150,
    PlatformOption.dashboard: 100,
  },
  ServiceOption.development: {
    PlatformOption.mobileApp: 300,
    PlatformOption.website: 250,
    PlatformOption.dashboard: 200,
  },
};
Map<FeatureOption, Map<ServiceOption, Map<PlatformOption, double>>>
    featurePrices = {
  FeatureOption.chat: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 50,
      PlatformOption.website: 40,
      PlatformOption.dashboard: 30,
    },
    ServiceOption.development: {
      PlatformOption.mobileApp: 100,
      PlatformOption.website: 80,
      PlatformOption.dashboard: 60,
    },
  },
  FeatureOption.multiLanguage: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 30,
      PlatformOption.website: 20,
      PlatformOption.dashboard: 20,
    },
    ServiceOption.development: {
      PlatformOption.mobileApp: 60,
      PlatformOption.website: 40,
      PlatformOption.dashboard: 30,
    },
  },
  FeatureOption.payment: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 40,
      PlatformOption.website: 30,
      PlatformOption.dashboard: 20,
    },
    ServiceOption.development: {
      PlatformOption.mobileApp: 80,
      PlatformOption.website: 60,
      PlatformOption.dashboard: 40,
    },
  },
  FeatureOption.aiFeature: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 50,
      PlatformOption.website: 40,
      PlatformOption.dashboard: 30,
    },
    ServiceOption.development: {
      PlatformOption.mobileApp: 100,
      PlatformOption.website: 80,
      PlatformOption.dashboard: 60,
    },
  },
  FeatureOption.adminDashboard: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 30,
      PlatformOption.website: 20,
      PlatformOption.dashboard: 50,
    },
    ServiceOption.development: {
      PlatformOption.mobileApp: 60,
      PlatformOption.website: 40,
      PlatformOption.dashboard: 100,
    },
  },
  FeatureOption.notifications: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 20,
      PlatformOption.website: 15,
      PlatformOption.dashboard: 10,
    },
    ServiceOption.development: {
      PlatformOption.mobileApp: 40,
      PlatformOption.website: 30,
      PlatformOption.dashboard: 20,
    },
  },
  FeatureOption.forms: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 15,
      PlatformOption.website: 10,
      PlatformOption.dashboard: 10,
    },
    ServiceOption.development: {
      PlatformOption.mobileApp: 30,
      PlatformOption.website: 20,
      PlatformOption.dashboard: 20,
    },
  },
  FeatureOption.analytics: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 20,
      PlatformOption.website: 15,
      PlatformOption.dashboard: 15,
    },
    ServiceOption.development: {
      PlatformOption.mobileApp: 50,
      PlatformOption.website: 40,
      PlatformOption.dashboard: 40,
    },
  },
  FeatureOption.search: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 15,
      PlatformOption.website: 10,
      PlatformOption.dashboard: 10,
    },
    ServiceOption.development: {
      PlatformOption.mobileApp: 30,
      PlatformOption.website: 20,
      PlatformOption.dashboard: 20,
    },
  },
  FeatureOption.auth: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 20,
      PlatformOption.website: 15,
      PlatformOption.dashboard: 10,
    },
    ServiceOption.development: {
      PlatformOption.mobileApp: 50,
      PlatformOption.website: 40,
      PlatformOption.dashboard: 30,
    },
  },
  FeatureOption.socialIntegration: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 15,
      PlatformOption.website: 10,
      PlatformOption.dashboard: 5,
    },
    ServiceOption.development: {
      PlatformOption.mobileApp: 40,
      PlatformOption.website: 30,
      PlatformOption.dashboard: 20,
    },
  },
  FeatureOption.offlineMode: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 10,
      PlatformOption.website: 0,
      PlatformOption.dashboard: 0,
    },
    ServiceOption.development: {
      PlatformOption.mobileApp: 40,
      PlatformOption.website: 20,
      PlatformOption.dashboard: 20,
    },
  },
  FeatureOption.geolocation: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 20,
      PlatformOption.website: 15,
      PlatformOption.dashboard: 10,
    },
    ServiceOption.development: {
      PlatformOption.mobileApp: 50,
      PlatformOption.website: 40,
      PlatformOption.dashboard: 30,
    },
  },
  FeatureOption.fileHandling: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 10,
      PlatformOption.website: 10,
      PlatformOption.dashboard: 10,
    },
    ServiceOption.development: {
      PlatformOption.mobileApp: 30,
      PlatformOption.website: 30,
      PlatformOption.dashboard: 30,
    },
  },
  FeatureOption.calendar: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 15,
      PlatformOption.website: 10,
      PlatformOption.dashboard: 10,
    },
    ServiceOption.development: {
      PlatformOption.mobileApp: 35,
      PlatformOption.website: 25,
      PlatformOption.dashboard: 25,
    },
  },
  FeatureOption.chatbot: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 20,
      PlatformOption.website: 15,
      PlatformOption.dashboard: 15,
    },
    ServiceOption.development: {
      PlatformOption.mobileApp: 60,
      PlatformOption.website: 50,
      PlatformOption.dashboard: 40,
    },
  },
  FeatureOption.streaming: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 30,
      PlatformOption.website: 25,
      PlatformOption.dashboard: 20,
    },
    ServiceOption.development: {
      PlatformOption.mobileApp: 80,
      PlatformOption.website: 70,
      PlatformOption.dashboard: 50,
    },
  },
  FeatureOption.ecommerceCart: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 40,
      PlatformOption.website: 35,
      PlatformOption.dashboard: 30,
    },
    ServiceOption.development: {
      PlatformOption.mobileApp: 90,
      PlatformOption.website: 80,
      PlatformOption.dashboard: 60,
    },
  },
  FeatureOption.apiIntegration: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 30,
      PlatformOption.website: 25,
      PlatformOption.dashboard: 20,
    },
    ServiceOption.development: {
      PlatformOption.mobileApp: 70,
      PlatformOption.website: 60,
      PlatformOption.dashboard: 50,
    },
  },
  FeatureOption.darkMode: {
    ServiceOption.design: {
      PlatformOption.mobileApp: 20,
      PlatformOption.website: 15,
      PlatformOption.dashboard: 10,
    },
    ServiceOption.development: {
      PlatformOption.mobileApp: 40,
      PlatformOption.website: 30,
      PlatformOption.dashboard: 20,
    },
  },
};
Map<ProjectQuality, double> qualityMultiplier = {
  ProjectQuality.mvp: 1.0,
  ProjectQuality.standard: 1.3,
  ProjectQuality.premium: 1.5,
};

// double calculateTotalPrice({
//   required List<ServiceOption> selectedServices,
//   required List<PlatformOption> selectedPlatforms,
//   required List<FeatureOption> selectedFeatures,
//   required List<DeliverableOption> selectedDeliverables,
//   required ProjectQuality selectedQuality,
// }) {
//   double total = 0;
//
//   // Base Price
//   for (var service in selectedServices) {
//     for (var platform in selectedPlatforms) {
//       total += basePrices[service]?[platform] ?? 0;
//     }
//   }
//
//   // Features Price
//   for (var feature in selectedFeatures) {
//     for (var service in selectedServices) {
//       for (var platform in selectedPlatforms) {
//         total += featurePrices[feature]?[service]?[platform] ?? 0;
//       }
//     }
//   }
//
//   // Deliverables Price
//   for (var deliverable in selectedDeliverables) {
//     for (var service in selectedServices) {
//       for (var platform in selectedPlatforms) {
//         total += deliverablePrices[deliverable]?[service]?[platform] ?? 0;
//       }
//     }
//   }
//
//   // Apply Quality Multiplier
//   total *= qualityMultiplier[selectedQuality] ?? 1.0;
//
//   return total;
// }
double calculateTotalPriceSafe({
  required List<ServiceOption> selectedServices,
  required List<PlatformOption> selectedPlatforms,
  required List<FeatureOption> selectedFeatures,
  required List<DeliverableOption> selectedDeliverables,
  required ProjectQuality selectedQuality,
}) {
  double total = 0;
  double tTotal = 0;
  double present = 1.5;

  // Fallback defaults إذا كانت القوائم فارغة
  final services = selectedServices.isNotEmpty ? selectedServices : [];
  final platforms = selectedPlatforms.isNotEmpty ? selectedPlatforms : [];

  // Base Price
  for (var service in services) {
    for (var platform in platforms) {
      total += basePrices[service]?[platform] ?? 0;
    }
  }

  // Features Price
  for (var feature in selectedFeatures) {
    for (var service in services) {
      for (var platform in platforms) {
        total += featurePrices[feature]?[service]?[platform] ?? 0;
      }
    }
  }

  // Deliverables Price
  for (var deliverable in selectedDeliverables) {
    for (var service in services) {
      for (var platform in platforms) {
        total += deliverablePrices[deliverable]?[service]?[platform] ?? 0;
      }
    }
  }

  // Apply Quality Multiplier
  total *= qualityMultiplier[selectedQuality] ?? 1.0;
  tTotal = total * present;
  return tTotal;
}
