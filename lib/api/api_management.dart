import 'dart:convert';

import 'package:http/http.dart';
import 'package:score_app/model.dart';

class ScoreApi {
  final String apiUrl = "https://v3.football.api-sports.io/fixtures?live=all";

  static const headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': "0dfa6fedb6447a78adc15d2097efa42b",
  };

  Future<List<ScoreMatch>> getAllMatches() async {
    Response res = await get(apiUrl, headers: headers);
    var body;

    if (res.statusCode == 200) {
      body = jsonDecode(res.body);
      List<dynamic> matchList = body['response'];
      print('Api service:${body}');
      List<ScoreMatch> matches =
          matchList.map((dynamic item) => ScoreMatch.fromJson(item)).toList();

      return matches;
    }
  }
}
