import 'dart:async';
import 'dart:collection';

abstract class BasePresenter {
  HashMap<String, StreamController<BlocEvent>> streamController;

  BasePresenter() {
    streamController = new HashMap();
  }

  addStreamControllerBroadcast(k) {
    streamController.putIfAbsent(
        k, () => StreamController<BlocEvent>.broadcast());
  }

  void addStream(k) {
    streamController.putIfAbsent(
        k, () => StreamController<BlocEvent>.broadcast());
  }

  void addStreamController(k) {
    streamController.putIfAbsent(k, () => StreamController<BlocEvent>());
  }

  void sink(k, BlocEvent event) {
    return streamController[k].sink.add(event);
  }

  Stream stream(k) {
    return streamController[k].stream;
  }

  void onDispose() {
    streamController.forEach((f, v) {
      v.close();
    });
    streamController.clear();
  }
}

abstract class BlocEvent {}

class BlocLoading extends BlocEvent {}

class BlocLoaded extends BlocEvent {
  dynamic value;

  BlocLoaded(this.value);
}

class BlocFailed extends BlocEvent {
  String mess;

  BlocFailed(this.mess);
}
