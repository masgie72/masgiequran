import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_indon/l10n/app_localizations.dart';
import 'package:quran_indon/languagebottomsheet.dart';
import 'package:quran_indon/provider/addconfigprovider.dart';
import 'package:quran_indon/warnanyong.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            provider.applanguage == 'en'
                ? AppLocalizations.of(context)!.language
                : AppLocalizations.of(context)!.arabic,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(height: 15),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: WarnaNyong.warnadasarterang,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(AppLocalizations.of(context)!.indon),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => LanguageBottomSheet(),
    );
  }
}
