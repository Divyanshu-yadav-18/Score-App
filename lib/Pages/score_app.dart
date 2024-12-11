import 'package:flutter/material.dart';

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
        title:const Text("SCORING APP", style: TextStyle(color: Colors.black),),
        centerTitle: true,
      ),
      
        body: FutureBuilder(
          future: ,//getdata
          builder: ,//layout
        ), ,
    );
  }
}