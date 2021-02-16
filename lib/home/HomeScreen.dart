import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:init_app/base/BaseController.dart';
import 'package:init_app/base/BaseWidget.dart';
import 'package:init_app/common/Images.dart';
import 'package:init_app/home/HomeController.dart';
import 'package:init_app/utils/IntentAnimation.dart';

class Home extends BaseWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    initState(controller: Get.put(HomeController()));
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Card(
              child: ic_demo,
            ),
            GetBuilder<HomeController>(
              builder: (_) => controller.a is BaseStatusLoading
                  ? CircularProgressIndicator()
                  : controller.a is BaseStatusFailed
                      ? Container()
                      : Text(_ != null ? "${_.a}" : "null"),
            ),
            // Obx(() => Text(controller != null ? "${controller.a}" : "null")),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                controller.getData();
              },
              child: Card(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Text("Click me"),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                print("okok");
                IntentAnimation.intentNomal(
                        context: context,
                        screen: Child(),
                        option: IntentAnimationOption.RIGHT_TO_LEFT,
                        duration: Duration(milliseconds: 500))
                    .then((value) {
                  if (value != null) controller.changeValue(value);
                });
              },
              child: Card(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Text("Click page"),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                controller.showMess("mess", TypeMess.WARNING);
              },
              child: Card(
                child: Container(
                  padding: EdgeInsets.all(20),
                  child: Text("Click toast"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Child extends BaseWidget {
  String valueeee;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.backspace_outlined),
          onPressed: () =>
              IntentAnimation.intentBack(context: context, result: valueeee),
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: TextField(
          textAlign: TextAlign.center,
          onChanged: (value) {
            valueeee = value;
          },
        ),
      ),
    );
  }
}
