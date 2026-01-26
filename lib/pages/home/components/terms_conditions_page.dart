

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../l10n/app_localizations.dart';
import '../../../utils/constants.dart';

class TermsConditionsPage extends StatelessWidget {
  const TermsConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        title: Text(
          AppLocalizations.of(context)!.termsConditions,
          style: GoogleFonts.ibmPlexSansArabic(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 900),
          padding: const EdgeInsets.all(24),
          child: Text(
            // AppLocalizations.of(context)!.termsConditionsContent,
            'باستخدامك لهذا الموقع، فإنك توافق على الالتزام بالشروط والأحكام التالية: يتم تقديم جميع المحتويات والخدمات المعروضة في هذا الموقع لأغراض شخصية ومهنية فقط، ولا يجوز نسخها أو إعادة استخدامها دون إذن مسبق. جميع الأعمال المعروضة هي ملك لصاحب الموقع، ولا يجوز استخدامها أو إعادة نشرها دون موافقة خطية. نحتفظ بحق تعديل أو تحديث محتوى الموقع أو هذه الشروط في أي وقت دون إشعار مسبق. لا نتحمل أي مسؤولية عن أي أضرار مباشرة أو غير مباشرة ناتجة عن استخدام هذا الموقع أو الاعتماد على محتواه. في حال عدم موافقتك على هذه الشروط، يرجى التوقف عن استخدام الموقع.',
            style: GoogleFonts.ibmPlexSansArabic(
              fontSize: 18,
              height: 1.8,
              color: kCaptionColor,
            ),
          ),
        ),
      ),
    );
  }
}

