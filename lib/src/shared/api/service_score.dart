import 'dart:convert';
import 'package:http/http.dart' as http;

import '../lib/deviceId/device_id.dart';
import '../lib/interface/i_repository_score.dart';

class ServiceScore implements IRepositoryScore{

    @override
      Future<int> getScore() async {
    String? deviceId = await DeviceId.getId();

    var response = await http.get(Uri.parse('http://10.0.2.2:8876/api/score/$deviceId'));

    if (response.statusCode == 200) {
      var responseBody = json.decode(response.body);
      var score = responseBody['score'];
      return score;
    } else {
      return 0;
    }
  }

  @override
  void setScore(int value) async {
    String? deviceId = await DeviceId.getId();

    var response = await http.patch(Uri.parse('http://10.0.2.2:8876/api/score'),
      body: json.encode({'id_phone': deviceId, 'score': value}),
      headers: {'Content-Type': 'application/json'});

    if (response.statusCode != 200) {
      throw Exception('Failed to add best score. Error code: ${response.statusCode}');
    }
  }
}