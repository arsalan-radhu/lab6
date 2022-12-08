/*
* Author:       Arsalan Radhu & Tyler Osborne
* Date:         2022-12-08  
* Course Code:  MODE4201
* File:         main.dart
* Description:
*               This is a Rate my prof app where users can
*               review profs, courses, and institutions.
**/
//          Imports         //
import 'package:flutter/material.dart';
import 'widgets/home.dart';

//          App Start         //
void main() => runApp(const MyApp()); // Runs the app

//          Global Settings Variables          //
var color = Colors.blue; // Color of the app bar
var backgroundColor = Colors.white; // Color of the background of the app
var textColor = Colors.white; // Color of text

///**************************************** */
///         Main App
///**************************************** */
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // Main Build
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'MODE4201 Project',
      home: MyHomePage(),
    );
  }
}
