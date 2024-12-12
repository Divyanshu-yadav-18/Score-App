import 'package:flutter/material.dart';
import 'package:score_app/api/api_management.dart';

class ScoreApp extends StatefulWidget {
  const ScoreApp({super.key});

  @override
  State<ScoreApp> createState() => _ScoreAppState();
}

class _ScoreAppState extends State<ScoreApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: const Text(
          "SCORING APP",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: ScoreApi().getAllMatches(), //getdata
        builder: (context, snapshot) {
          if (snapshot.hasData) {
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        }, //layout
      ),
    );
  }
}
