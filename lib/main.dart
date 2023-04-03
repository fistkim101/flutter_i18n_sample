import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:i18n_sample/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Localizations Sample App',
      // localizationsDelegates: [
      //   AppLocalizations.delegate,
      //   GlobalMaterialLocalizations.delegate, // GlobalMaterialLocalizations.delegate provides localized strings and other values for the Material Components library.
      //   GlobalWidgetsLocalizations.delegate, // GlobalWidgetsLocalizations.delegate defines the default text direction, either left-to-right or right-to-left, for the widgets library.
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: [
      //   Locale('en'), // English
      //   Locale('es'), // Spanish
      // ],
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale('es', ''),
      home: HomeScreen(),
    );
  }
}
