/*
* Author:       Arsalan Radhu
* Date:         2022-12-08  
* Course Code:  MODE4201
* File:         new_inst.dart
* Description:
*               This is the new institution widget used
*               when creating new institution reviews  
**/
//          Imports         //
import 'package:flutter/material.dart';

///**************************************** */
///         New Institution Widget
///**************************************** */
//          Widget          //
class NewInst extends StatefulWidget {
  final Function addInst;

  const NewInst(this.addInst, {super.key});

  @override
  State<NewInst> createState() => _NewInstState();
}

//TODO: BUG? - When typing into the text fields, the screen doesn't scroll and you can't see what you're typing after rating.
//          State         //
class _NewInstState extends State<NewInst> {
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

    widget.addInst(enteredName, enteredRating, enteredType, enteredReview);

    Navigator.of(context).pop();
  }

  //          Build New Inst          //
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
                      labelText: 'Institution Name: ',
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
                      labelText: 'Type: ',
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
                    child: const Text('Add Institution'),
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
