import 'package:flutter/material.dart';
import 'package:score_app/model.dart';

Widget matchTitle(ScoreMatch match) {
  var homegoal = match.goal.home;
  var awaygoal = match.goal.away;
  if (homegoal == null) homegoal = 0;
  if (awaygoal == null) awaygoal = 0;
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            match.home.name,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontSize: 16.0),
          ),
        ),
        Image.network(
          match.home.logoUrl,
          width: 36.0,
        ),
        Expanded(
          child: Text(
            '$homegoal-$awaygoal',
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontSize: 16.0),
          ),
        ),
        Image.network(
          match.away.logoUrl,
          width: 36.0,
        ),
        Expanded(
            child: Text(
          match.away.name,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
        ))
      ],
    ),
  );
}
