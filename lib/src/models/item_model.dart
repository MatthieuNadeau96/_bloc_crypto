// ignore_for_file: non_constant_identifier_names

class ItemModel {
  DateTime _timestamp;
  int _errorCode;
  String _error_message;
  int _elapsed;
  int _credit_count;
  int _total_count;
  List<_Data> _data = [];

  ItemModel.fromJson(Map<String, dynamic> parsedJson) {
    print(parsedJson['status'].length);
    _timestamp = parsedJson['timestamp'];
    _errorCode = parsedJson['error_code'];
    _error_message = parsedJson['error_message'];
    _elapsed = parsedJson['elapsed'];
    _credit_count = parsedJson['credit_count'];
    _total_count = parsedJson['total_count'];
    List<_Data> temp = [];
    for (int i = 0; i < parsedJson['data'].length; i++) {
      _Data data = _Data(parsedJson['data'][i]);
      temp.add(data);
    }
    _data = temp;
  }

  List<_Data> get data => _data;
  DateTime get timestamp => _timestamp;
  int get error_code => _errorCode;
  String get error_message => _error_message;
  int get elapsed => _elapsed;
  int get credit_count => _credit_count;
  int get total_count => _total_count;
}

class _Data {
  int _id;
  String _name;
  String _symbol;
  String _slug;
  int _num_market_pairs;
  DateTime _date_added;
  List<String> _tags;
  int _max_supply;
  int _circulating_supply;
  int _total_supply;
  int _cmc_rank;
  DateTime _last_updated;
  List<_Quote> _quote = [];

  _Data(data) {
    _id = data['_id'];
    _name = data['_name'];
    _symbol = data['_symbol'];
    _slug = data['_slug'];
    _num_market_pairs = data['_num_market_pairs'];
    _date_added = data['_date_added'];
    _tags = data['_tags'];
    _max_supply = data['_max_supply'];
    _circulating_supply = data['_circulating_supply'];
    _total_supply = data['_total_supply'];
    _cmc_rank = data['_cmc_rank'];
    _last_updated = data['_last_updated'];
    List<_Quote> temp = [];
    for (int i = 0; i < data['quote'].length; i++) {
      _Quote quote = _Quote(data['quote'][i]);
      temp.add(quote);
    }
    _quote = temp;
  }

  int get id => _id;
  String get name => _name;
  String get symbol => _symbol;
  String get slug => _slug;
  int get num_market_pairs => _num_market_pairs;
  DateTime get date_added => _date_added;
  List<String> get tags => _tags;
  int get max_supply => _max_supply;
  int get circulating_supply => _circulating_supply;
  int get total_supply => _total_supply;
  int get cmc_rank => _cmc_rank;
  DateTime get last_updated => _last_updated;
  List<_Quote> get quote => _quote;
}

class _Quote {
  int _price;
  int _volume_24h;
  int _volume_change_24h;
  int _percent_change_1h;
  int _percent_change_24h;
  int _percent_change_7d;
  int _percent_change_30d;
  int _percent_change_60d;
  int _percent_change_90d;
  int _market_cap;
  int _market_cap_dominance;
  int _fully_diluted_market_cap;
  DateTime _last_updated;

  _Quote(quote) {
    _price = quote['_price;'];
    _volume_24h = quote['_volume_24h;'];
    _volume_change_24h = quote['_volume_change_24h;'];
    _percent_change_1h = quote['_percent_change_1h;'];
    _percent_change_24h = quote['_percent_change_24h;'];
    _percent_change_7d = quote['_percent_change_7d;'];
    _percent_change_30d = quote['_percent_change_30d;'];
    _percent_change_60d = quote['_percent_change_60d;'];
    _percent_change_90d = quote['_percent_change_90d;'];
    _market_cap = quote['_market_cap;'];
    _market_cap_dominance = quote['_market_cap_dominance;'];
    _fully_diluted_market_cap = quote['_fully_diluted_market_cap;'];
    _last_updated = quote['_last_updated'];
  }

  int get price => _price;
  int get volume_24h => _volume_24h;
  int get volume_change_24h => _volume_change_24h;
  int get percent_change_1h => _percent_change_1h;
  int get percent_change_24h => _percent_change_24h;
  int get percent_change_7d => _percent_change_7d;
  int get percent_change_30d => _percent_change_30d;
  int get percent_change_60d => _percent_change_60d;
  int get percent_change_90d => _percent_change_90d;
  int get market_cap => _market_cap;
  int get market_cap_dominance => _market_cap_dominance;
  int get fully_diluted_market_cap => _fully_diluted_market_cap;
  DateTime get last_updated => _last_updated;
}
