import 'package:bitcoin_ticker/network_service.dart';

import 'constants.dart';
import 'main.dart';

const List<String> currenciesList = [
  'AUD',
  'BRL',
  'CAD',
  'CNY',
  'EUR',
  'GBP',
  'HKD',
  'IDR',
  'ILS',
  'INR',
  'JPY',
  'MXN',
  'NOK',
  'NZD',
  'PLN',
  'RON',
  'RUB',
  'SEK',
  'SGD',
  'USD',
  'ZAR'
];

const List<String> cryptoList = [
  'BTC',
  'ETH',
  'LTC',
];

class CoinData {
  String coinName;

  CoinData({this.coinName});

  Future<double> getCoinData(String convertedCoin) async {
    var url = '$kCoinApiMainUrl/$coinName/$convertedCoin?apiKey=$kCoinApiKey';
    print(url);
    NetworkHandler networkHandler = NetworkHandler(url: url);
    var coinData = await networkHandler.getMarketData();
    double rate = coinData['rate'];
    print('$convertedCoin: $rate');
    return rate;
  }
}
