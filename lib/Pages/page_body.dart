import 'package:flutter/material.dart';
import 'package:score_app/model.dart';

Widget pageBody(List<ScoreMatch> allmatches) {
  return Column(
    children: [
      Expanded(
        flex: 2,
        child: Container(),
      ),
      Expanded(
          flex: 5,
          child: Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40.0),
                topRight: Radius.circular(40.0),
              ),
            ),
          ))
    ],
  );
}
