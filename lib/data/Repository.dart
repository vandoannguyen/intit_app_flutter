import 'Network.dart';
import 'SharePref.dart';

abstract class IRepository implements IApi, ISharePref {}

class RepositoryImpl implements IRepository {
  @override
  Future getData() {
    // TODO: implement getData
    throw UnimplementedError();
  }

  @override
  Future<String> getDb() {
    // TODO: implement getDb
    throw UnimplementedError();
  }

  @override
  Future<void> getSharePref() {
    // TODO: implement getSharePref
    throw UnimplementedError();
  }
}
