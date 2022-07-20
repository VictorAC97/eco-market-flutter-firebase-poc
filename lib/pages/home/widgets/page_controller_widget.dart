import 'package:flutter/cupertino.dart';

class PageControllerNotifier extends ChangeNotifier {
  int _currentPage = 0;

  get currentPage => _currentPage;

  changePage(int newPage) {
    _currentPage = newPage;
    notifyListeners();
  }
}
