import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:world_guide/core/components/custom_scaffold.dart';
import 'package:world_guide/core/constants/app_color.dart';
import 'package:world_guide/core/constants/app_text_style.dart';
import 'package:world_guide/core/language/local_keys.g.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
      title: Text(LocaleKeys.home_page_title.tr()),
      actions: [
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextButton(onPressed: (){
context.setLocale(const Locale('tr', 'TR'));  // Türkçeye geçiş yapar


      }, child: Text("TR",
      style: AppTextStyle.headlineSmall.copyWith(
        color: AppColor.primaryColor
      ),
      )),
    )
      ],

      ),
      
      body: Container(),
    );
  }
}