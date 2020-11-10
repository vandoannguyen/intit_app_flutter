import 'package:flutter/cupertino.dart';
import 'package:init_app/utils/BaseView.dart';
import 'HomePresenter.dart';
import 'HomePresenter.dart';
import 'HomeView.dart';
import 'HomeViewModel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> implements HomeView {
  HomeViewModel viewModel;
  HomePresenter _presenter;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewModel = new HomeViewModel();
    _presenter = new HomePresenter(viewModel);
    _presenter.intiView(this);
  }

  @override
  void dispose() {
    super.dispose();
    if (_presenter != null) {
      _presenter.onDispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  void showDialog() {
    // TODO: implement showDialog
  }
}
