import 'package:fluttertoast/fluttertoast.dart';

abstract class BaseView {
  // void updateUI(dynamic);
  void showMess(String mess) {
    Fluttertoast.showToast(msg: mess);
  }
}
