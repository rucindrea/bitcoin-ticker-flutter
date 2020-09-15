import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHandler {
  final String url;

  NetworkHandler({this.url});

  Future<dynamic> getMarketData() async {
    try {
      http.Response response = await http.get(url);
      return jsonDecode(response.body);
    } catch (e) {
      print(e);
    }
  }
}
