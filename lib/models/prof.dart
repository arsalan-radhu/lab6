/*
* Author:       Arsalan Radhu
* Date:         2022-12-08  
* Course Code:  MODE4201
* File:         prof.dart
* Description:
*               This is the prof class file.
**/
//          Imports         //
import 'package:flutter/foundation.dart';

///**************************************** */
///         Prof Class
///**************************************** */
class Prof {
  //          Attributes          //
  final String id; // Id of the review
  final String name; // name of the prof
  final double rating; // Numeric review
  final DateTime date; // Date of review
  final String type; // Type of review
  final String review; // Text Review
 
  //         Validation         //
  Prof(
      {required this.id,
      required this.name,
      required this.rating,
      required this.date,
      required this.type,
      required this.review});
}
