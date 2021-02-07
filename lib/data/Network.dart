abstract class IApi {
  Future getData();
  Future<String> getDb();
}

class ApiImpl implements IApi {
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
}
