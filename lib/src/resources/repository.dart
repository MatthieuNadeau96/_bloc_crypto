import 'package:bloc_crypto/src/models/item_model.dart';
import 'package:bloc_crypto/src/resources/crypto_api_provider.dart';

class Repository {
  final cryptoApiProvider = CryptoApiProvider();

  Future<ItemModel> fetchAllCoins() => cryptoApiProvider.fetchCoinList();
}
