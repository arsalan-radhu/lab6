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
// Flutter
import 'package:flutter/material.dart';
// Widgets
import 'widgets/new_prof.dart';
import 'widgets/prof_list.dart';
import 'widgets/new_course.dart';
import 'widgets/course_list.dart';
import 'widgets/new_inst.dart';
import 'widgets/inst_list.dart';
import 'widgets/home.dart';
// Models
import 'models/prof.dart';
import 'models/course.dart';
import 'models/inst.dart';

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
