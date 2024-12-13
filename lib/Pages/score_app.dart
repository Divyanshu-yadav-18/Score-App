import 'package:flutter/material.dart';
import 'package:score_app/Pages/page_body.dart';
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
            return pageBody(snapshot.data);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        }, //layout
      ),
    );
  }
}
