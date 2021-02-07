import 'package:init_app/data/network/model/IpModel.dart';

abstract class IApiHelper {
  Future<IpModel> getData();
}
