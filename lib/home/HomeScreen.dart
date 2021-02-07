import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:init_app/base/BasePresenter.dart';
import 'package:init_app/base/BaseState.dart';

import 'HomePresenter.dart';
import 'HomeViewModel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends BaseState<HomeScreen, HomePresenter> {
  HomeViewModel viewModel;
  IHomePresenter _presenter;

  @override
  void initState({HomePresenter presenter}) {
    // TODO: implement initState
    _presenter = new HomePresenter(viewModel);
    super.initState(presenter: _presenter);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                StreamBuilder(
                  stream: _presenter.stream(HomePresenter.E),
                  builder: (_, snap) {
                    print("snap    $snap");
                    print("snap1 ${snap.data}");
                    return snap.data == null || snap.data is BlocLoading
                        ? CircularProgressIndicator(
                            strokeWidth: 3,
                          )
                        : snap.data is BlocLoaded
                            ? Text(snap.data.value)
                            : Container();
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                FlatButton(
                  onPressed: () {
                    _presenter.click();
                  },
                  child: Card(
                    elevation: 4,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text("Click Me"),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
