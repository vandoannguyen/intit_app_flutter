import 'dart:math';

import 'package:init_app/base/BaseViewModel.dart';

abstract class IHomeViewModel<V extends BaseProvider> {
  void changeCity();
}

class HomeViewModel extends BaseViewModel<HomeProvider>
    implements IHomeViewModel {
  HomeViewModel() : super(HomeProvider()) {
    getProvider().city = "hanoi";
    getProvider().region = "region";
    getProvider().ip = "ip";
    getProvider().countryCode = "countryCode";
  }

  HomeProvider getProvider() {
    return super.getProvider();
  }

  changeRegion() {
    getProvider().region = "";
  }

  changeCity() {
    if (getProvider() != null) {
      getProvider().setCity("City random   ${getRandomText()}");
    }
  }

  getRandomText() {
    String text = "";
    text += "";
    for (int i = 0; i < 5; i++) {
      text += Random().nextInt(9).toString();
    }
    return text;
  }
}

class HomeProvider extends BaseProvider {
  String ip;
  String countryCode;
  String city;
  String region;

  setCity(city) {
    print(city);
    this.city = city;
    notifyListeners();
  }
}
