import 'package:bloc_crypto/src/models/item_model.dart';
import 'package:bloc_crypto/src/resources/repository.dart';
import 'package:rxdart/rxdart.dart';

class CryptoBloc {
  final _repository = Repository();
  final _coinFetcher = PublishSubject<ItemModel>();

  Stream<ItemModel> get allCoins => _coinFetcher.stream;

  fetchAllCoins() async {
    ItemModel itemModel = await _repository.fetchAllCoins();
    _coinFetcher.sink.add(itemModel);
  }

  dispose() {
    _coinFetcher.close();
  }
}

final bloc = CryptoBloc();
