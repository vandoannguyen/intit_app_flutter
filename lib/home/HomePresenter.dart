//class to handle event of user from screen and excution
import 'dart:async';

import 'package:init_app/base/BasePresenter.dart';

import 'HomeViewModel.dart';

abstract class IHomePresenter extends BasePresenter {
  void click();
}

class HomePresenter extends BasePresenter implements IHomePresenter {
  HomeViewModel viewModel;
  static final String E = "E";

  HomePresenter(this.viewModel) : super() {
    // khởi tạo một sự kiện update màn hình
    addStream(E);
    // chạy 1 sự kiện update màn hình
    sink(E, new BlocLoading());
  }

  @override
  void click() {
    sink(E, new BlocLoading());
    Timer timer;
    timer = Timer(Duration(seconds: 3), () {
      timer.cancel();
      sink(E, new BlocLoaded("OKOKOKOK"));
    });
  }
}
