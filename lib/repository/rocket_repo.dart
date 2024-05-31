import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:spacex_rocket/model/rocket_model.dart';

class RocketRepo {
  Future<RocketData> fetchRocketData() async {
    String url = 'https://api.spacexdata.com/v4/rockets';
    final response = await http.get(Uri.parse(url));
    if (kDebugMode) {
      print(response.body);
    }
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return RocketData.fromJson(body);
    }
    throw Exception('Error');
  }
}
