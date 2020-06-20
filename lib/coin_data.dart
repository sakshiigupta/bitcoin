import 'package:http/http.dart';
import 'dart:convert';

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

  Future getResult(String country)async {
    String url = 'https://apiv2.bitcoinaverage.com/indices/global/ticker/BTC$country';
    //last
    Response resp = await get(url);
    var temp= jsonDecode(resp.body);
    double val = temp['last'];
    //print(val);
    return val;
  }
}
