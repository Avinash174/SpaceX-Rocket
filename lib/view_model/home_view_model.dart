import 'package:spacex_rocket/model/rocket_model.dart';
import 'package:spacex_rocket/repository/rocket_repo.dart';

class HomeViewModel {
  final _repo = RocketRepo();

  Future<RocketData> fetchRocketDataApi() async {
    final response = await _repo.fetchRocketData();
    print(response);
    return response;
  }
}
