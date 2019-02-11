import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'l10n/messages_all.dart';

class AppLocalizations {
  static Future<AppLocalizations> load(Locale locale) {
    final String name =
    locale.countryCode == null ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return new AppLocalizations();
    });
  }

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  String get dashboardTitle {
    return Intl.message('Dashboard',
        name: 'dashboardTitle', desc: 'Dashboard title');
  }

  String get dashboardHello {
    return Intl.message('Hello', name: 'dashboardHello');
  }

  String get dashboardDetails {
    return Intl.message('Details', name: 'dashboardDetails');
  }

  String get detailsTitle {
    return Intl.message('Details', name: 'detailsTitle', desc: 'Screen title');
  }

  String get detailsText {
    return Intl.message('Some text', name: 'detailsText');
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  static const supportedLocales = [Locale("en"), Locale("es"), Locale("pl")];

  const AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return AppLocalizationsDelegate.supportedLocales.map((locale) => locale.languageCode).contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) {
    return AppLocalizations.load(locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }
}