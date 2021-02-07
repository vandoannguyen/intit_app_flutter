import 'package:flutter/cupertino.dart';

class BaseViewModel<P extends BaseProvider> {
  P _p;

  BaseViewModel(this._p);

  P getProvider() {
    return _p;
  }
}

class BaseProvider extends ChangeNotifier {
  BaseProvider() {
    print("okok");
  }
}
