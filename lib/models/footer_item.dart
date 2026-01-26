import 'package:flutter/material.dart';

enum FooterActionType {
  address,
  phone,
  email,
  whatsapp,
}

class FooterItem {
  final String? iconPath;
  final String? title;
  final String? text1;
  final String? text2;
  final FooterActionType actionType;

  FooterItem({
    required this.iconPath,
    required this.title,
    required this.text1,
    required this.text2,
    required this.actionType,
  });
}
