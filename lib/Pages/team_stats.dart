import 'package:flutter/material.dart';

Widget teamStats(String team, String logourl, String teamName) {
  return Expanded(
    child: Column(
      children: [
        Text(
          team,
          style: const TextStyle(
            fontSize: 20.0,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Expanded(
          child: Image.network(logourl, width: 54.0),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Text(
          teamName,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18.0,
          ),
        ),
      ],
    ),
  );
}
