import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../utils/constants.dart';

class SocialHandleItem extends StatefulWidget {
  final String socialHandleUrl;
  final String assetName;

  SocialHandleItem({
    required this.assetName,
    required this.socialHandleUrl,
  });

  @override
  _SocialHandleItemState createState() => _SocialHandleItemState();
}

class _SocialHandleItemState extends State<SocialHandleItem> {
  // Color _iconColor = kAccentColor;
  Color _iconColor = Colors.white;
  double _iconSize = 28;
  double _animatedPaddingValueBottom = 0;
  double _animatedPaddingValueTop = 24;

  @override
  void initState() {
    super.initState();
    // _iconColor = kPrimaryColor;
    // _iconSize = 32;
    // _animatedPaddingValueBottom = 0;
    // _animatedPaddingValueTop = 24;
  }
  bool _isHovered = false;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      // splashColor: Colors.transparent,
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      // onTap: () async {
      //   // CommonFunction.openFromUrl(widget.socialHandleUrl);
      //   print('01250');
      //   launchUrl(
      //     Uri.parse('https://www.facebook.com/profile.php?id=100007001370894'),
      //     mode: LaunchMode.externalApplication,
      //   );
      //   print('01251');
      // },
        onTap: () async {
          final uri = Uri.parse(
            widget.socialHandleUrl,
          );

          await launchUrl(
            uri,
            webOnlyWindowName: '_blank',
          );
        },
      // onHover: (value) {
      //   if (value) {
      //     setState(() {
      //       _iconColor = Constants.green;
      //       _animatedPaddingValueTop = 18;
      //       _animatedPaddingValueBottom = 6;
      //     });
      //   } else {
      //     setState(() {
      //       // _iconColor = kPrimaryColor;
      //       _iconColor = Colors.white;
      //       _animatedPaddingValueTop = 24;
      //       _animatedPaddingValueBottom = 0;
      //     });
      //   }
      // },

      // onHover: (value) {
      //   setState(() {
      //     isHovered = value;
      //     if (value) {
      //       _iconColor = Constants.green;
      //       _animatedPaddingValueTop = 18;
      //       _animatedPaddingValueBottom = 6;
      //     } else {
      //       _iconColor = Colors.white;
      //       _animatedPaddingValueTop = 24;
      //       _animatedPaddingValueBottom = 0;
      //     }
      //   });
      // },
      onHover: (value) {
        setState(() {
          _isHovered = value;
          _iconColor = value ? kPrimaryColor : Colors.white;
          _animatedPaddingValueTop = value ? 18 : 24;
          _animatedPaddingValueBottom = value ? 6 : 0;
        });
      },

      // child: Column(
      //   mainAxisSize: MainAxisSize.min,
      //   children: [
      //     AnimatedPadding(
      //       curve: Curves.easeIn,
      //       padding: EdgeInsets.only(
      //         top: _animatedPaddingValueTop,
      //         bottom: _animatedPaddingValueBottom,
      //       ),
      //       duration: const Duration(milliseconds: 200),
      //       child: Container(
      //         padding: const EdgeInsets.all(4),
      //         decoration: const BoxDecoration(
      //           shape: BoxShape.circle,
      //           color: kBackgroundColor,
      //         ),
      //         child: Center(
      //           child: widget.assetName == 'mostaql'
      //               ? Image.asset(
      //             'assets/${widget.assetName}.png',
      //             width: _iconSize,
      //             height: _iconSize,
      //             color: _iconColor,
      //           )
      //               : SvgPicture.asset(
      //             'assets/${widget.assetName}.svg',
      //             width: _iconSize,
      //             height: _iconSize,
      //             color: _iconColor,
      //           ),
      //         ),
      //       ),
      //     ),
      //
      //     // ⭐ اسم الموقع
      //     AnimatedOpacity(
      //       opacity: isHovered ? 1.0 : 0.0,
      //       duration: const Duration(milliseconds: 200),
      //       child: Padding(
      //         padding: const EdgeInsets.only(top: 4),
      //         child: Text(
      //           widget.assetName, // مثال: Facebook, LinkedIn
      //           style: const TextStyle(
      //             fontSize: 11,
      //             color: Colors.white,
      //             fontWeight: FontWeight.w500,
      //           ),
      //         ),
      //       ),
      //     ),
      //   ],
      // ),

      child: Stack(
        clipBehavior: Clip.none,
        children: [
          AnimatedPadding(
            curve: Curves.easeIn,
            padding: EdgeInsets.only(
              top: _animatedPaddingValueTop,
              bottom: _animatedPaddingValueBottom,
            ),
            duration: const Duration(milliseconds: 200),
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: kBackgroundColor,
              ),
              child: Center(
                child: widget.assetName == 'mostaql'
                    ? Image.asset(
                  'assets/${widget.assetName}.png',
                  width: _iconSize,
                  height: _iconSize,
                  color: _iconColor,
                )
                    : SvgPicture.asset(
                  'assets/${widget.assetName}.svg',
                  width: _iconSize,
                  height: _iconSize,
                  color: _iconColor,
                ),
              ),
            ),
          ),


          Positioned(
            right: -70,
            top: 8,
            child: AnimatedOpacity(
              opacity: _isHovered ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 200),
              child: AnimatedSlide(
                duration: const Duration(milliseconds: 200),
                offset: _isHovered ? Offset.zero : const Offset(-0.1, 0),
                child: Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.85),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    widget.assetName, // Facebook, LinkedIn...
                    style: const TextStyle(
                      fontSize: 11,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      // AnimatedPadding(
      //   curve: Curves.easeIn,
      //   padding: EdgeInsets.only(
      //     top: _animatedPaddingValueTop,
      //     bottom: _animatedPaddingValueBottom,
      //   ),
      //   duration: Duration(milliseconds: 200),
      //   child: Container(
      //     padding: const EdgeInsets.all(4),
      //     decoration: BoxDecoration(
      //       shape: BoxShape.circle,
      //       color: kBackgroundColor,
      //     ),
      //     child: Center(
      //       child: widget.assetName == 'mostaql'?
      //       Image.asset(
      //         'assets/${widget.assetName}.png',
      //         // 'assets/upWork.svg',
      //         width: _iconSize,
      //         height: _iconSize,
      //         color: _iconColor,
      //       ):
      //       SvgPicture.asset(
      //         'assets/${widget.assetName}.svg',
      //         // 'assets/upWork.svg',
      //         width: _iconSize,
      //         height: _iconSize,
      //         color: _iconColor,
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
