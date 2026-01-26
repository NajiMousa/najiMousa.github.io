import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/constants.dart';

class BlogCardData {
  final String category;
  final String date;
  final String title;
  final String content;
  final String summary;
  final String buttonText;
  final String imageUrl;

  BlogCardData({
    required this.category,
    required this.title,
    required this.content,
    required this.summary,
    required this.date,
    required this.buttonText,
    required this.imageUrl,
  });
}

class BlogCard extends StatefulWidget {
  BlogCard({
    required this.category,
    required this.title,
    required this.date,
    required this.buttonText,
    required this.imageUrl,
    required this.content,
    required this.summary,
    this.dateStyle,
    this.titleStyle,
    this.categoryStyle,
    this.buttonTextStyle,
    this.width,
    this.imageWidth,
    this.imageHeight,
    this.buttonColor = kPrimaryColor,
    this.buttonIcon = Icons.chevron_right,
    this.dateIcon = Icons.date_range,
    this.onPressed,
  });

  final String category;
  final String date;
  final String title;
  final String content;
  final String summary;
  final String buttonText;
  final String imageUrl;
  final double? width;
  final double? imageWidth;
  final double? imageHeight;
  final TextStyle? dateStyle;
  final TextStyle? titleStyle;
  final TextStyle? categoryStyle;
  final TextStyle? buttonTextStyle;
  final IconData dateIcon;
  final IconData buttonIcon;
  final Color buttonColor;
  final VoidCallback? onPressed;

  @override
  _BlogCardState createState() => _BlogCardState();
}

class _BlogCardState extends State<BlogCard> {
  bool _isHoveringOnImage = false;

  Color startValue = Colors.black.withOpacity(0.5);
  Color targetValue = Colors.black.withOpacity(0);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        width: widget.width,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  // margin: const EdgeInsets.only(left: 16),
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        MouseRegion(
                          onEnter: (e) => _onImageHover(true),
                          onExit: (e) => _onImageHover(false),
                          child: AnimatedOpacity(
                            opacity: _isHoveringOnImage ? 1.0 : 0.85,
                            duration: Duration(milliseconds: 300),
                            child: ClipRRect(
                              borderRadius: BorderRadius.all(
                                Radius.circular(16),
                              ),
                              child: Image.asset(
                                widget.imageUrl,
                                height: heightOfImage(),
                                width: widthOfImage(),
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 8,
                  ),
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                  child: Text(
                    widget.category,
                    style: GoogleFonts.ibmPlexSansArabic(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                    // style: widget.categoryStyle ??
                    //     textTheme.titleMedium?.copyWith(
                    //       fontSize: 15,
                    //       color: kPrimaryColor,
                    //     ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      Text(
                        widget.date,
                        style: GoogleFonts.ibmPlexSansArabic(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 13),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    widget.title,
                    style: GoogleFonts.ibmPlexSansArabic(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                    // style: widget.dateStyle ?? textTheme.titleSmall,
                  ),
                  // AnimatedLineThrough(
                  //   text: widget.title,
                  //   textStyle: widget.titleStyle ?? textTheme.headline5,
                  // ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    widget.title,
                    // style: widget.dateStyle ?? textTheme.titleSmall,
                    style: GoogleFonts.ibmPlexSansArabic(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13),
                  )
                  // SpaceH16(),
                  // AnimatedNimbusButton(
                  //   title: widget.buttonText,
                  //   iconData: Icons.arrow_forward_ios,
                  //   leadingButtonColor: widget.buttonColor,
                  //   onTap: widget.onPressed,
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void _onImageHover(bool hovering) {
    setState(() {
      _isHoveringOnImage = hovering;
    });
  }

  double heightOfImage() {
    return widget.imageHeight ?? 50;
  }

  double widthOfImage() {
    return widget.imageWidth ?? 40;
  }
}

class NimbusInfoSection2 extends StatelessWidget {
  final String sectionTitle;
  final String title1;
  final String title2;
  final bool hasTitle2;
  final String body;
  final TextStyle? sectionTitleStyle;
  final TextStyle? title1Style;
  final TextStyle? title2Style;
  final TextStyle? bodyStyle;
  final Color dividerColor;
  final double? thickness;
  final double dividerWidth;
  final Widget? child;

  NimbusInfoSection2({
    required this.sectionTitle,
    required this.title1,
    required this.body,
    this.title2 = "",
    this.sectionTitleStyle,
    this.title1Style,
    this.hasTitle2 = true,
    this.title2Style,
    this.bodyStyle,
    this.thickness = 1.15,
    this.dividerColor = Colors.grey,
    this.dividerWidth = 64,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    TextStyle:
    GoogleFonts.ibmPlexSansArabic(
        color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15);
    // TextStyle? titleStyle = textTheme.headline3?.copyWith(
    //   fontSize: responsiveSize(context, 26, 48, md: 32),
    // );
    // double fontSize = responsiveSize(context, 16, 18);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: dividerWidth,
                child: Divider(
                  color: dividerColor,
                  thickness: thickness,
                ),
              ),
              // SpaceW16(),
              SizedBox(
                height: 16,
              ),
              Text(
                sectionTitle,
                // style: textTheme.bodyText2?.copyWith(
                //   fontSize: fontSize,
                //   fontWeight: FontWeight.w400,
                //   color: AppColors.grey250,
                // ),
                style: GoogleFonts.ibmPlexSansArabic(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          // SpaceH16(),
          Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title1,
                style: GoogleFonts.ibmPlexSansArabic(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
              hasTitle2
                  ? SizedBox(
                      height: 16,
                    )
                  : SizedBox(
                      height: 0,
                    ),
              hasTitle2
                  ? Text(
                      title2,
                      style: GoogleFonts.ibmPlexSansArabic(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    )
                  : SizedBox(
                      height: 0,
                    ),
              // SpaceH20(),
              SizedBox(
                height: 16,
              ),
              Text(
                body,
                style: GoogleFonts.ibmPlexSansArabic(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 17)
                    ?.copyWith(fontSize: 16, height: 1.8),
              ),
              child != null
                  ? SizedBox(
                      height: 16,
                    )
                  : SizedBox(),
              child ?? SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}
