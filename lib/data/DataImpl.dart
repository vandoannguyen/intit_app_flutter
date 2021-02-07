import 'package:init_app/data/network/ApiImpl.dart';
import 'package:init_app/data/network/IApiHelper.dart';

import 'IDataHelper.dart';
import 'network/model/IpModel.dart';

class DataImpl implements IDataHelper {
  static IDataHelper _dataImpl;
  IApiHelper _apiHelper;

  DataImpl() {
    _apiHelper = ApiImpl();
  }

  DataImpl getInstance() {
    if (_dataImpl == null) _dataImpl = new DataImpl();
    return _dataImpl;
  }

  @override
  Future<IpModel> getData() {
    return _apiHelper.getData();
  }
}
