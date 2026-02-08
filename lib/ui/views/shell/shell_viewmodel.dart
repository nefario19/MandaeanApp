import 'package:bushido/ui/common/ui_helpers.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class ShellViewModel extends BaseViewModel {
  final ValueNotifier<int> _index = ValueNotifier<int>(0);
  ValueListenable<int> get index => _index;

  final ValueNotifier<String> _appBarTitle = ValueNotifier<String>('Mandi');
  ValueListenable<String> get appBarTitle => _appBarTitle;

  void setIndex(int index) {
    _index.value = index;
    notifyListeners();
  }

  String getCurrentTitle(BuildContext context) {
    switch (_index.value) {
      case 0:
        return L(context).newsTitle;
      default:
        return 'Mandi';
    }
  }
}
