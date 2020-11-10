//class to handle event of user from screen and excution
import 'package:init_app/home/HomeView.dart';
import 'package:init_app/utils/BasePresenter.dart';
import 'package:init_app/utils/BaseView.dart';

import 'HomeViewModel.dart';

class HomePresenter<V extends HomeView> extends BasePresenter<V> {
  HomeView view;
  HomeViewModel viewModel;
  static final String E = "E";
  HomePresenter(this.viewModel) : super() {
    addStreamController(E);
    getSink(E).add(new BlocLoading());
  }

  @override
  void intiView(HomeView baseView) {
    this.view = baseView;
    // view.showMess(mess)
  }
}
