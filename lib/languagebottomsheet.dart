import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quran_indon/l10n/app_localizations.dart';
import 'package:quran_indon/provider/addconfigprovider.dart';
import 'package:quran_indon/warnanyong.dart';

class LanguageBottomSheet extends StatefulWidget {
  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage('en');
            },
            child: provider.applanguage == 'en'
                ? getSelectedItemWidget(AppLocalizations.of(context)!.indon)
                : getUnselectedItemWidget(AppLocalizations.of(context)!.indon),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              provider.changeLanguage('ar');
            },
            child: provider.applanguage == 'ar'
                ? getSelectedItemWidget(AppLocalizations.of(context)!.arabic)
                : getUnselectedItemWidget(AppLocalizations.of(context)!.arabic),
          ),
        ],
      ),
    );
  }

  Widget getSelectedItemWidget(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(
            context,
          ).textTheme.bodySmall?.copyWith(color: WarnaNyong.warnadasarterang),
        ),
        Icon(Icons.check, color: WarnaNyong.warnadasarterang, size: 35),
      ],
    );
  }

  Widget getUnselectedItemWidget(String text) {
    return Text(text, style: Theme.of(context).textTheme.bodySmall);
  }
}
