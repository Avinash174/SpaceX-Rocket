import 'package:http/http.dart' as http;

class RocketRepo {
  Future fetchRocketData() async {
    String url = 'https://api.spacexdata.com/v4/rockets';
    final response = http.get(Uri.parse(url));
  }
}
