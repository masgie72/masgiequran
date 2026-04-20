import 'package:flutter/cupertino.dart';

class AppConfigProvider extends ChangeNotifier {
  String applanguage = 'en';

  void changeLanguage(String newlanguage) {
    if (applanguage == newlanguage) {
      return;
    }
    applanguage = newlanguage;
    notifyListeners();
  }
}
