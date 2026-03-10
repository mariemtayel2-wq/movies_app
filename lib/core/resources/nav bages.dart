import 'package:flutter/material.dart';
import 'package:movies_app/features/homescreen/tabapages/BrowesPage.dart';
import 'package:movies_app/features/homescreen/tabapages/FavoritesPage.dart';
import 'package:movies_app/features/homescreen/tabapages/HomePage.dart';
import 'package:movies_app/features/homescreen/tabapages/ProfilePage.dart';

class NavRoutes {
  static final List<Widget> pages = [
    Homepage(),
    Browespage(),
    Favoritespage(),
    Profilepage(),
  ];
}