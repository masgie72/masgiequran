import 'package:flutter/material.dart';
import 'package:quran_indon/detailsuratscreen.dart';
import 'package:quran_indon/homescreen.dart';
import 'package:quran_indon/provider/addconfigprovider.dart';
import 'package:quran_indon/themenyong.dart';
import 'package:provider/provider.dart';
import 'detailhadistscreen.dart';
import 'l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        DetailSuratScreen.routeName: (context) => DetailSuratScreen(),
        DetailHadistScreen.routeName: (context) => DetailHadistScreen(),
      },
      theme: ThemeNyong.lightmode,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.applanguage),
    );
  }
}
