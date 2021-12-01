import 'package:bloc_crypto/src/blocs/crypto_bloc.dart';
import 'package:bloc_crypto/src/models/item_model.dart';
import 'package:flutter/material.dart';

class CrytpoList extends StatelessWidget {
  const CrytpoList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bloc.fetchAllCoins();
    return Scaffold(
      body: StreamBuilder(
        stream: bloc.allCoins,
        builder: (context, AsyncSnapshot<ItemModel> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
            case ConnectionState.none:
              return Center(
                child: CircularProgressIndicator(),
              );
              break;

            case ConnectionState.active:
              if (snapshot.hasData) {
                return buildList(snapshot);
              } else if (snapshot.hasError) {
                return Center(
                  child: Text(
                    snapshot.error.toString(),
                  ),
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );

              break;
            case ConnectionState.done:
              if (snapshot.hasData) {
                return Center(
                  child: Text('DONE'),
                );
              }
              break;
            default:
              return Center(
                child: Container(),
              );
          }
          return Container();
        },
      ),
    );
  }

  Widget buildList(AsyncSnapshot<ItemModel> snapshot) {
    return Center(
      child: Text('Build List'),
    );
  }
}
