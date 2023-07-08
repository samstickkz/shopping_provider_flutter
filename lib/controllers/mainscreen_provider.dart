

import 'package:flutter/cupertino.dart';

class MainscreenProvider extends ChangeNotifier {
  int _pageIndex = 0;
  int get pageIndex => _pageIndex;

  set setCurrentIndex(int newIndex) {
    _pageIndex = newIndex;
    notifyListeners();
  }
}
