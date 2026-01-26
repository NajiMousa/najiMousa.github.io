import 'package:flutter/material.dart';

class HeaderItem {
  final String? title;
  final VoidCallback? onTap;
  final bool isButton;
  final bool isMobile;
  final List<HeaderItem>? children;

  HeaderItem({
    this.title,
    this.onTap,
    this.isButton = false,
    this.isMobile = false,
    this.children
  });
}
