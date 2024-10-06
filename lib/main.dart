import 'package:flutter/material.dart';
import 'package:music_player_app/models/playlist_provider.dart';
import 'package:music_player_app/theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'pages/home_screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => themeProvider()),
        ChangeNotifierProvider(create: (Context) => PlaylistProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: Provider.of<themeProvider>(context).themeData,
    );
  }
}
