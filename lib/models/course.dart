/*
* Author:       Arsalan Radhu
* Date:         2022-12-08  
* Course Code:  MODE4201
* File:         course.dart
* Description:
*               This is the course class file.
**/
//          Imports         //
import 'package:flutter/foundation.dart';

///**************************************** */
///         Course Class
///**************************************** */
class Course {
  //          Attributes          //
  final String id; // Id of review
  final String name; // Name of the course
  final double rating; // Rating for review
  final DateTime date; // Date of review
  final String type; // Difficulty
  final String review; // Text review

  //         Validation         //
  Course(
      {required this.id,
      required this.name,
      required this.rating,
      required this.date,
      required this.type,
      required this.review});
}
