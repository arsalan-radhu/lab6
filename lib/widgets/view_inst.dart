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
import '../models/inst.dart';
import 'new_inst.dart';
import 'inst_list.dart';

///**************************************** */
///         View Institution Widget
///**************************************** */
// Widget
class ViewInst extends StatefulWidget {
  const ViewInst({super.key});

  @override
  State<ViewInst> createState() => _ViewInstState();
}

// State
class _ViewInstState extends State<ViewInst> {
  // final nameController = TextEditingController();
  // final costController = TextEditingController();
  // final typeController = TextEditingController();

  //          Default List of Institutions          //
  final List<Inst> _instReviews = [
    Inst(
      id: 'm1',
      name: 'Durham College',
      rating: 4,
      date: DateTime.now(),
      type: 'College',
      review: "Pretty good!",
    ),
    Inst(
      id: 'm2',
      name: 'Ontario Tech',
      rating: 3,
      date: DateTime.now(),
      type: 'University',
      review: "Don't know much about it",
    ),
  ];

  //          View Institutions Methods         //
  // Adds a new institution review
  void _addNewInst(String name, double rating, String type, String review) {
    if (review == "") {
      review = "No Review";
    }

    final newInst = Inst(
      name: name,
      rating: rating,
      type: type,
      review: review,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _instReviews.add(newInst);
    });
  }

  // Starts adding a new instatution review
  void _startAddNewInst(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) {
        return GestureDetector(
          onTap: () {},
          behavior: HitTestBehavior.opaque,
          child: NewInst(_addNewInst),
        );
      },
    );
  }

  //          Build View Instatution          //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text('Institutions Reviews Home'),
        backgroundColor:  color,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_box_outlined),
            onPressed: () => _startAddNewInst(context),
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
            InstList(_instReviews),
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
        onPressed: () => _startAddNewInst(context),
      ),
    );
  }
}