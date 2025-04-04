import 'package:flutter/material.dart';
import 'package:world_guide/core/constants/app_color.dart';

class CustomScaffold extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;
  const CustomScaffold({super.key, required this.body, this.appBar});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:appBar,
      backgroundColor: AppColor.lightBackgroundColor,
      body: body
    );
  }
}