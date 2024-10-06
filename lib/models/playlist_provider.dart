import 'package:flutter/material.dart';
import 'package:music_player_app/models/song.dart';

class PlaylistProvider extends ChangeNotifier {
  final List<Song> _playlist = [
    Song(
        songName: "FollowMyLead",
        artistName: "ExB",
        albumImagePath: "assets/images/followmylead.jpg",
        audioPath: "audio/followmylead.mp3"),
    Song(
        songName: "Karera",
        artistName: " B I N I",
        albumImagePath: "assets/images/Karera.jpg",
        audioPath: "audio/noname.mp3"),
    Song(
        songName: "Rapstar",
        artistName: "Flow G",
        albumImagePath: "assets/images/rapstar.jpg",
        audioPath: "audio/Rapstar.mp3"),
    Song(
        songName: "Toy",
        artistName: "N e t t a",
        albumImagePath: "assets/images/toy.jpg",
        audioPath: "audio/toy.mp3"),
    Song(
        songName: "WhatDoYouMean",
        artistName: "Justin Bieber",
        albumImagePath: "assets/images/whatdoyoumean.jpg",
        audioPath: "audio/whatdoyoumean.mp3"),
  ];

  int? _currentSongIndex;

  //getters

  List<Song> get playlist => _playlist;
  int? get currentSongIndex => _currentSongIndex;

  //Setters

  set currentSongIndex(int? newIndex) {
    _currentSongIndex = newIndex;

    notifyListeners();
  }
}
