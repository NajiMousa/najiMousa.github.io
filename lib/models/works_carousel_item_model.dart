import 'package:flutter/material.dart';

class WorksCarouselItemModel {
  final String workName;
  final String workBio;
  final String workDescription;
  final String imagePath;
  final List<String> skills;
  final String behanceUrl;
  final String behanceImagePath;


  WorksCarouselItemModel({
    required this.workName,
    required this.workBio,
    required this.workDescription,
    required this.imagePath,
    required this.skills,
    required this.behanceUrl,
    required this.behanceImagePath,

  });
}
