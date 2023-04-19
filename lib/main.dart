import 'package:flutter/material.dart';
import 'package:permissions/screens/view/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(p0) =>HomeScreen(),
      },
    ),
  );
}
