import 'dart:async';

import 'package:flutter/material.dart';
import 'package:responsive_media/responsive_media.dart';
import 'package:savesure/core/theme/app_colors.dart';

class SsTextField extends StatelessWidget {
  dynamic rm;
  String? hintText;
  IconData? icon;
  EdgeInsetsGeometry? contentPadding;
  TextEditingController? Controller;

  SsTextField(
      {required this.rm,
      this.contentPadding,
      required this.hintText,
      required this.icon,
      this.Controller});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: Controller,
      style: TextStyle(fontSize: rm.h1, color: AppColors.primaryOrange),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: rm.h1),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(color: AppColors.primaryOrange)),
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(vertical: rm.shortestSide * 0.05),
        prefixIcon: Padding(
          padding: rm.paddingHorizontal(3),
          child: Icon(
            icon,
            color: AppColors.primaryOrange,
            size: rm.shortestSide * 0.08,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
