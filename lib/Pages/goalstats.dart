import 'package:flutter/material.dart';

Widget goalStats(int expandedTime, int homegoal, int awaygoal) {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '${expandedTime}',
          style: const TextStyle(fontSize: 30.0),
        ),
        Expanded(
            child: Center(
          child: Text(
            '${homegoal}-${awaygoal}',
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 36.0),
          ),
        ))
      ],
    ),
  );
}
