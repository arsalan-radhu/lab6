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
import '../models/prof.dart';
import 'new_prof.dart';
import 'prof_list.dart';

///**************************************** */
///         View Prof Widget
///**************************************** */
//          Widget          //
class ViewProf extends StatefulWidget {
  const ViewProf({super.key});

  @override
  State<ViewProf> createState() => _ViewProfState();
}

//          State         //
class _ViewProfState extends State<ViewProf> {
  // final nameController = TextEditingController();
  // final costController = TextEditingController();
  // final typeController = TextEditingController();

  //          Default List of Profs         //
  final List<Prof> _profReviews = [
    Prof(
      id: 'm1',
      name: 'Alexander',
      rating: 5,
      date: DateTime.now(),
      type: 'WEBD 5201',
      review: "He was pretty good.",
    ),
    Prof(
      id: 'm2',
      name: 'Caeser',
      rating: 1,
      date: DateTime.now(),
      type: 'COMP 1000',
      review: "He sucked!",
    ),
  ];
  //          View Profs Methods          /
  // Adds a new prof review
  void _addNewProf(String name, double rating, String type, String review) {
    if (review == "") {
      review = "No Review";
    }
  
    final newProf = Prof(
      name: name,
      rating: rating,
      type: type,
      review: review,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _profReviews.add(newProf);
    });
  }

  // Starts adding a new prof review
  void _startAddNewProf(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          behavior: HitTestBehavior.opaque,
          child: NewProf(_addNewProf),
        );
      },
    );
  }
//          Build View Prof         //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text('Professors Reviews Home'),
        backgroundColor: color,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_box_outlined),
            onPressed: () => _startAddNewProf(context),
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
            ProfList(_profReviews),
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
        onPressed: () => _startAddNewProf(context),
      ),
    );
  }
}