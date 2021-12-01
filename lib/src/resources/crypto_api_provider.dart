import 'dart:async';
import 'package:bloc_crypto/src/models/item_model.dart';
import 'package:http/http.dart' show Client;
import 'dart:convert';
import 'package:flutter_config/flutter_config.dart';

class CryptoApiProvider {
  Client client = Client();
  final _apiKey = FlutterConfig.get('API_KEY');
  Uri uri = Uri.parse(
      'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest');

  Future<ItemModel> fetchCoinList() async {
    print('entered');
    final response = await client.get(
      uri,
      headers: {
        'X-CMC_PRO_API_KEY': _apiKey,
      },
    );
    print(response.body.toString());
    if (response.statusCode == 200) {
      return ItemModel.fromJson(
        json.decode(response.body),
      );
    } else {
      throw Exception('Failed to load');
    }
  }
}
