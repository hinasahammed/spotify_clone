import 'package:flutter/material.dart';
import 'package:spotify_clone/view/start/start_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Spotify Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff1ED760),
          brightness: Brightness.dark,
          primary: const Color(0xff1ED760),
        ),
        useMaterial3: true,
      ),
      home: const StartView(),
    );
  }
}
