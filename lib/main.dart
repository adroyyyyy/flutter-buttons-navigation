import 'package:flutter/material.dart';
import 'package:flutter_button_navigation/profile_screen.dart';
import 'package:flutter_button_navigation/settings_screen.dart';

import 'add_screen.dart';
import 'button_gallery.dart';
import 'details_screen.dart';
import 'login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/buttons': (context) => const ButtonGallery(),
        '/profile': (context) => const ProfileScreen(),
        '/details': (context) => const DetailsScreen(),
        '/settings': (context) => const SettingsScreen(),
        '/add': (context) => const AddScreen(),
      },
    );
  }
}