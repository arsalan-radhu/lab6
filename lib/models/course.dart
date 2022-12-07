import 'package:flutter/foundation.dart';

class Course {
  final String id;
  final String name;
  final double rating;
  final DateTime date;
  final String type;
  final String review;

  Course(
      {required this.id,
      required this.name,
      required this.rating,
      required this.date,
      required this.type,
      required this.review});
}
