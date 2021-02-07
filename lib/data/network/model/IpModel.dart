class IpModel {
  String _status;
  String _country;
  String _countryCode;
  String _region;
  String _regionName;
  String _city;
  String _zip;
  double _lat;
  double _lon;
  String _timezone;
  String _isp;
  String _org;
  String _as;
  String _query;

  IpModel(
      {String status,
      String country,
      String countryCode,
      String region,
      String regionName,
      String city,
      String zip,
      double lat,
      double lon,
      String timezone,
      String isp,
      String org,
      String as,
      String query}) {
    this._status = status;
    this._country = country;
    this._countryCode = countryCode;
    this._region = region;
    this._regionName = regionName;
    this._city = city;
    this._zip = zip;
    this._lat = lat;
    this._lon = lon;
    this._timezone = timezone;
    this._isp = isp;
    this._org = org;
    this._as = as;
    this._query = query;
  }

  String get status => _status;
  set status(String status) => _status = status;
  String get country => _country;
  set country(String country) => _country = country;
  String get countryCode => _countryCode;
  set countryCode(String countryCode) => _countryCode = countryCode;
  String get region => _region;
  set region(String region) => _region = region;
  String get regionName => _regionName;
  set regionName(String regionName) => _regionName = regionName;
  String get city => _city;
  set city(String city) => _city = city;
  String get zip => _zip;
  set zip(String zip) => _zip = zip;
  double get lat => _lat;
  set lat(double lat) => _lat = lat;
  double get lon => _lon;
  set lon(double lon) => _lon = lon;
  String get timezone => _timezone;
  set timezone(String timezone) => _timezone = timezone;
  String get isp => _isp;
  set isp(String isp) => _isp = isp;
  String get org => _org;
  set org(String org) => _org = org;
  String get as => _as;
  set as(String as) => _as = as;
  String get query => _query;
  set query(String query) => _query = query;

  IpModel.fromJson(Map<String, dynamic> json) {
    _status = json['status'];
    _country = json['country'];
    _countryCode = json['countryCode'];
    _region = json['region'];
    _regionName = json['regionName'];
    _city = json['city'];
    _zip = json['zip'];
    _lat = json['lat'];
    _lon = json['lon'];
    _timezone = json['timezone'];
    _isp = json['isp'];
    _org = json['org'];
    _as = json['as'];
    _query = json['query'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this._status;
    data['country'] = this._country;
    data['countryCode'] = this._countryCode;
    data['region'] = this._region;
    data['regionName'] = this._regionName;
    data['city'] = this._city;
    data['zip'] = this._zip;
    data['lat'] = this._lat;
    data['lon'] = this._lon;
    data['timezone'] = this._timezone;
    data['isp'] = this._isp;
    data['org'] = this._org;
    data['as'] = this._as;
    data['query'] = this._query;
    return data;
  }
}
