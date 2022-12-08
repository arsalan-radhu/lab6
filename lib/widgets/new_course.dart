/*
* Author:       Arsalan Radhu
* Date:         2022-12-08  
* Course Code:  MODE4201
* File:         new_course.dart
* Description: 
*              This file is the widget for adding a new course review 
**/
//          Imports         //
import 'package:flutter/material.dart';

///**************************************** */
///         New Course Widget
///**************************************** */
//          Widget         //
class NewCourse extends StatefulWidget {
  final Function addCourse;

  const NewCourse(this.addCourse, {super.key});

  @override
  State<NewCourse> createState() => _NewCourseState();
}

//TODO: BUG? - When typing into the text fields, the screen doesn't scroll and you can't see what you're typing after rating.
//          State         //
class _NewCourseState extends State<NewCourse> {
  //          Controllers for Create Screen         //
  final nameController = TextEditingController();
  final ratingController = TextEditingController();
  final typeController = TextEditingController();
  final reviewController = TextEditingController();

  //          Methods         //
  void submitData() {
    final enteredName = nameController.text;
    final enteredRating = double.parse(ratingController.text);
    final enteredType = typeController.text;
    final enteredReview = reviewController.text;

    if (enteredName.isEmpty || enteredType.isEmpty || enteredRating < 1) {
      return;
    }

    widget.addCourse(enteredName, enteredRating, enteredType, enteredReview);

    Navigator.of(context).pop();
  }

  //          Build New Course         //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          //elevation: 5,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Course Name: ',
                    ),
                    controller: nameController,
                    onSubmitted: (_) => submitData(),
                  ),
                  TextField(
                      decoration: const InputDecoration(
                        labelText: 'Rating: ',
                      ),
                      controller: ratingController,
                      keyboardType: TextInputType.number,
                      onSubmitted: (_) => submitData()),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Difficulty: ',
                    ),
                    controller: typeController,
                    onSubmitted: (_) => submitData(),
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      labelText: 'Review: ',
                    ),
                    controller: reviewController,
                    onSubmitted: (_) => submitData(),
                  ),
                  ElevatedButton(
                    onPressed: submitData,
                    child: const Text('Add Course'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
