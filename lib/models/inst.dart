/*
* Author:       Arsalan Radhu
* Date:         2022-12-08  
* Course Code:  MODE4201
* File:         inst.dart
* Description:
*               This is the institution class file.
**/
//          Imports         //
import 'package:flutter/foundation.dart';

///**************************************** */
///         Inst Class
///**************************************** */
class Inst {
  //         Attributes         //
  final String id; // Id of review
  final String name; // Institution name
  final double rating; // Numeric rating for review
  final DateTime date; // Date of review
  final String type; // Type of institution (College or Uni)
  final String review; // Text Review

  //          Validation         //
  Inst(
      {required this.id,
      required this.name,
      required this.rating,
      required this.date,
      required this.type,
      required this.review});
}
