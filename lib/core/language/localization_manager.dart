import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:world_guide/core/constants/enum/local.dart';

@immutable
final class LocalizationManager extends EasyLocalization {
  LocalizationManager({
    required super.child,
    super.key,
  }) : super(
          supportedLocales: _supportedItems,
          path: _translationPath,
          useOnlyLangCode: true,
          startLocale: Locales.en.locale,
          fallbackLocale: Locales.en.locale,
        );

  static final List<Locale> _supportedItems = [
    Locales.en.locale,
    Locales.tr.locale
  ];

  static const String _translationPath = 'assets/translations';

  static Future<void> updateLanguage(
          {required BuildContext context, required Locales value}) =>
      context.setLocale(value.locale);
}