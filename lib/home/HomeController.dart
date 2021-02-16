//class to handle event of user from screen and excution

import 'dart:math';

import 'package:init_app/base/BaseController.dart';
import 'package:init_app/data/Repository.dart';

class HomeController extends BaseController {
  int count = 0;
  dynamic a = "0";

  void incleasement() {
    count++;
    update();
  }

  void getData() {
    a = BaseStatusLoading();
    update();
    RepositoryImpl.getInstance().getSharePref().then((value) {
      a = value;
      update();
    }).catchError((err) {
      a = BaseStatusFailed(err.toString());
      update();
    });
  }

  void ranDom() {
    a = Random().nextInt(100);
    update();
  }

  void changeValue(value) {
    a = value;
    update();
  }

  @override
  void click() {
    // TODO: implement click
  }
}
