import 'package:flutter/material.dart';

class NewProf extends StatefulWidget {
  final Function addProf;

  const NewProf(this.addProf, {super.key});

  @override
  State<NewProf> createState() => _NewProfState();
}

//TODO: BUG? - When typing into the text fields, the screen doesn't scroll and you can't see what you're typing after rating.

class _NewProfState extends State<NewProf> {
  //Controllers for Create Screen
  final nameController = TextEditingController();
  final ratingController = TextEditingController();
  final typeController = TextEditingController();
  final reviewController = TextEditingController();

  void submitData() {
    final enteredName = nameController.text;
    final enteredRating = double.parse(ratingController.text);
    final enteredType = typeController.text;
    final enteredReview = reviewController.text;

    if (enteredName.isEmpty || enteredType.isEmpty || enteredRating < 1) {
      return;
    }

    widget.addProf(enteredName, enteredRating, enteredType, enteredReview);

    Navigator.of(context).pop();
  }

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
                      labelText: 'Prof Name: ',
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
                      labelText: 'Course: ',
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
                    child: const Text('Add Professor'),
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
