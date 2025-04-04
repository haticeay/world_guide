import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:world_guide/assets.dart';
import 'package:world_guide/core/components/custom_scaffold.dart';
import 'package:world_guide/core/constants/app_space.dart';
import 'package:world_guide/core/constants/app_text_style.dart';
import 'package:world_guide/core/language/local_keys.g.dart';
import 'package:world_guide/features/home/presantation/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // 3 saniye bekledikten sonra Home sayfasına yönlendir
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Image.asset(Assets.image.imLogoJPG),
           AppSpace.vertical.space24,
             Text(
             LocaleKeys.hello_text.tr(),
              style: AppTextStyle.bodyMedium
            ),
          ],
        ),
      ),
    );
  }
}