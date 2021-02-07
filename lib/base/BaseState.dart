import 'package:flutter/widgets.dart';
import 'package:init_app/base/BasePresenter.dart';

abstract class BaseState<V extends StatefulWidget, P extends BasePresenter>
    extends State<V> {
  P presenter;

  @override
  void initState({@required P presenter}) {
    // TODO: implement initState
    this.presenter = presenter;
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    if (presenter != null) presenter.onDispose();
    super.dispose();
  }
}
