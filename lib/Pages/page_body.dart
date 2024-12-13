import 'package:flutter/material.dart';
import 'package:score_app/Pages/goalstats.dart';
import 'package:score_app/Pages/match_title.dart';
import 'package:score_app/Pages/team_stats.dart';
import 'package:score_app/model.dart';

Widget pageBody(List<ScoreMatch> allmatches) {
  return Column(
    children: [
      Expanded(
        flex: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 18.0,
            vertical: 24.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              teamStats('Local Team', allmatches[0].home.logoUrl,
                  allmatches[0].home.name),
              goalStats(allmatches[0].fixture.status.elapsedTime,
                  allmatches[0].goal.home, allmatches[0].goal.away),
              teamStats('Visitor Team', allmatches[0].away.logoUrl,
                  allmatches[0].away.name),
            ],
          ),
        ),
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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "MATCHES",
                  style: TextStyle(color: Colors.white, fontSize: 24.0),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: allmatches.length,
                    itemBuilder: (context, index) {
                      return matchTitle(
                        allmatches[index],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
