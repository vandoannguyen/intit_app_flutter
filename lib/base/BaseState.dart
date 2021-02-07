import 'package:flutter/material.dart';
import 'package:init_app/base/BasePresenter.dart';

abstract class BaseState<T extends StatefulWidget, P extends BasePresenter>
    extends State<T> {
  P presenter;

  @override
  void dispose() {
    // TODO: implement dispose
    if (presenter != null) presenter.onDispose();
    super.dispose();
  }

  @override
  void initState({P basePresenter}) {
    super.initState();
    this.presenter = basePresenter;
  }
}
