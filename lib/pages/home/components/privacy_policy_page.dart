import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../l10n/app_localizations.dart';
import '../../../utils/constants.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        elevation: 0,
        title: Text(
          AppLocalizations.of(context)!.privacyPolicy,
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
            // 'AppLocalizations.of(context)!.privacyPolicyContent',
            'نحن نحترم خصوصيتك ونلتزم بحماية أي معلومات شخصية قد يتم جمعها عند استخدامك لهذا الموقع. لا نقوم بجمع أي معلومات شخصية دون علمك أو موافقتك، ولا يتم مشاركة أي بيانات مع أطراف ثالثة إلا إذا كان ذلك مطلوبًا قانونيًا أو ضروريًا لتقديم الخدمة. قد يحتوي الموقع على روابط لمواقع خارجية (مثل منصات التواصل الاجتماعي)، ولسنا مسؤولين عن سياسات الخصوصية أو محتوى تلك المواقع. يتم استخدام هذا الموقع لأغراض عرض الأعمال والتواصل فقط، ولا يتم تخزين أو معالجة بيانات حساسة. في حال كان لديك أي استفسار بخصوص سياسة الخصوصية، يمكنك التواصل معنا عبر البريد الإلكتروني الموضح في الموقع.',
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
