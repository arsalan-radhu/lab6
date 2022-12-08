/*
* Author:       Arsalan Radhu & Tyler Osborne
* Date:         2022-12-08  
* Course Code:  MODE4201
* File:         settings.dart
* Description:
*               This is the settings page widget.           
**/
//          Imports         //
import 'package:flutter/material.dart';
import '../main.dart';
import '../models/course.dart';
import 'new_course.dart';
import 'course_list.dart';

///**************************************** */
///         View Course Widget
///**************************************** */
// Widget
class ViewCourse extends StatefulWidget {
  const ViewCourse({super.key});

  @override
  State<ViewCourse> createState() => _ViewCourseState();
}

// State
class _ViewCourseState extends State<ViewCourse> {
  // final nameController = TextEditingController();
  // final costController = TextEditingController();
  // final typeController = TextEditingController();

  //          Default List of Courses         //  
  final List<Course> _courseReviews = [
    Course(
      id: 'm1',
      name: 'WEBD5201',
      rating: 0,
      date: DateTime.now(),
      type: 'Hard',
      review: "It is the worst course I have ever had.",
    ),
    Course(
      id: 'm2',
      name: 'MAFD5202',
      rating: 1,
      date: DateTime.now(),
      type: 'Easy',
      review: "Suprisingly simple and easy!",
    ),
  ];
  //          View Courses Methods
  // Adds a new course
  void _addNewCourse(String name, double rating, String type, String review) {
    if (review == "") {
      review = "No Review";
    }

    final newCourse = Course(
      name: name,
      rating: rating,
      type: type,
      review: review,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _courseReviews.add(newCourse);
    });
  }

  //          Starts adding a new course review         //
  void _startAddNewCourse(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          behavior: HitTestBehavior.opaque,
          child: NewCourse(_addNewCourse),
        );
      },
    );
  }

  //          Build View Course         //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text('Courses Reviews Home'),
        backgroundColor: color,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_box_outlined),
            onPressed: () => _startAddNewCourse(context),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: const Card(
                elevation: 5,
                child: Text(
                  'View the reviews here:',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            CourseList(_courseReviews),
            ElevatedButton(
              child: const Text('Home'),
              style: ElevatedButton.styleFrom(backgroundColor: color),
              onPressed: () {
                //Navigate Back Home
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add_box_outlined),
        backgroundColor: color,
        onPressed: () => _startAddNewCourse(context),
      ),
    );
  }
}