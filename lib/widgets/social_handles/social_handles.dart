import 'package:flutter/material.dart';

import '../../utils/constants.dart';
import 'social_handle_item.dart';

class SocialHandles extends StatefulWidget {
  @override
  _SocialHandlesState createState() => _SocialHandlesState();
}

class _SocialHandlesState extends State<SocialHandles> {
  @override
  Widget build(BuildContext context) {
    return
      // CommonFunction.isApp(context)
      //   ? Row(
      //       mainAxisSize: MainAxisSize.max,
      //       children: _socialList(),
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //     )
      //   :
    Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: _socialList(),
          );
  }

  List<Widget> _socialList() {
    return [
      SocialHandleItem(
        assetName: 'github',
        socialHandleUrl: Constants.githubUrl,
      ),
      SocialHandleItem(
        assetName: 'freelancer',
        socialHandleUrl: Constants.freelancerUrl,
      ),
      SocialHandleItem(
        assetName: 'mostaql',
        socialHandleUrl: Constants.mostaqlUrl,
      ),
      SocialHandleItem(
        assetName: 'upWork',
        socialHandleUrl: Constants.upWorkUrl,
      ),
      SocialHandleItem(
        assetName: 'behance',
        socialHandleUrl: Constants.behanceUrl,
      ),
      SocialHandleItem(
        assetName: 'linkedin',
        socialHandleUrl: Constants.linkedinUrl,
      ),
      SocialHandleItem(
        assetName: 'twitter',
        socialHandleUrl: Constants.twitterUrl,
      ),
      SocialHandleItem(
        assetName: 'instagram',
        socialHandleUrl: Constants.instagramUrl,
      ),
      SocialHandleItem(
        assetName: 'facebook',
        socialHandleUrl: Constants.facebookUrl,
      ),
      // CommonFunction.isApp(context)
      //     ?
      // InkWell(
      //         // onTap: () {
      //         //   CommonFunction.openMail();
      //         // },
      //         child: Padding(
      //           padding: EdgeInsets.only(top: 22),
      //           child: Icon(
      //             Icons.email_outlined,
      //             size: 24,
      //             color: Constants.lightestSlate,
      //           ),
      //         ),
      //       )
      //     // : Container(),
      // ,
      SizedBox(height: 24,),
      Container(
        padding: const EdgeInsets.only(top: 4,left: 4,right: 4),
        decoration: BoxDecoration(
          // shape: BoxShape.circle,
          borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),
          color: kBackgroundColor,
        ),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25)),color: Colors.white,),
          height: 120,
          width: 6,
        ),
      )
    ];
  }
}
