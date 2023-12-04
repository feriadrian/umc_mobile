import 'package:flutter/material.dart';
import 'package:umc_mobile/constant/color.dart';
import 'package:umc_mobile/constant/image_assets.dart';

class DokterModel {
  final String image;
  final String name;
  final String role;
  final Color color;

  DokterModel(
      {required this.image,
      required this.name,
      required this.role,
      required this.color});
}
