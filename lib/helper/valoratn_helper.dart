import 'package:http/http.dart' as http;
import 'package:animation_app/headers.dart';

class Apihepler {
  Apihepler._();
  static final Apihepler apihepler = Apihepler._();
  Future<List> getCharacters() async {
    List data = [];
    String url = "https://valorant-api.com/v1/agents";
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      data = json.decode(response.body)['data'];
    }
    return data;
  }
}
