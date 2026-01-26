import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_portfolio/pages/home/home.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'l10n/app_localizations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = const Locale('en');

  void _toggleLocale() {
    setState(() {
      if (_locale.languageCode == 'en') {
        _locale = const Locale('ar');
      } else {
        _locale = const Locale('en');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 844), // المقاس المرجعي (مثل iPhone 13)
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          // locale: _locale,
          // supportedLocales: AppLocalizations.delegate.supportedLocales,
          // localizationsDelegates: const [
          //   AppLocalizations.delegate,
          //   GlobalMaterialLocalizations.delegate,
          //   GlobalWidgetsLocalizations.delegate,
          //   GlobalCupertinoLocalizations.delegate,
          // ],
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: _locale,
          title: "Flutter Portfolio",
          debugShowCheckedModeBanner: false,
          themeMode: ThemeMode.dark,
          darkTheme: ThemeData.dark().copyWith(
            platform: TargetPlatform.android,
            scaffoldBackgroundColor: kBackgroundColor,
            primaryColor: kPrimaryColor,
            canvasColor: kBackgroundColor,
            textTheme: GoogleFonts.latoTextTheme(),
          ),
          // home: child,
          home: Stack(
            children: [
              child!, // المحتوى الأصلي للصفحة
              Positioned(
                bottom: 20,
                right: 20,
                child: FloatingActionButton(
                  onPressed: _toggleLocale,
                  backgroundColor: kPrimaryColor,
                  // foregroundColor: Colors.white,
                  shape: CircleBorder(),
                  child: Icon(
                    Icons.language,
                    color: Colors.white,
                  ),
                  tooltip: _locale.languageCode == 'en'
                      ? "Switch to Arabic"
                      : "التبديل للإنجليزية",
                ),

              ),
            ],
          ),
        );
      },
      child: Home(),
    );
  }
}
