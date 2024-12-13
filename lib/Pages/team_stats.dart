import 'package:flutter/material.dart';

Widget teamStats(String team, String logourl, String teamName) {
  return Expanded(
    child: Column(
      children: [
        Text(
          team,
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Expanded(
          child: Image.network(logourl, width: 54.0),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          teamName,
          style: TextStyle(fontSize: 18.0),
        )
      ],
    ),
  );
}
