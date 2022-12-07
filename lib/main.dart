import 'package:flutter/material.dart';

import 'widgets/new_prof.dart';
import 'widgets/prof_list.dart';
import 'widgets/new_course.dart';
import '../models/course.dart';
import '../models/inst.dart';
import 'widgets/course_list.dart';
import 'widgets/new_inst.dart';
import 'widgets/inst_list.dart';


import 'models/prof.dart';

void main() => runApp(const MyApp());

// Global Colors
var color = Colors.blue;
var backgroundColor = Colors.white;
var textColor = Colors.white;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'MODE4201 Project',
      home: MyHomePage(),
    );
  }
}

class MySettingsPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return MySettingsPageState();
  } 
}

class MySettingsPageState extends State {

  // Methods
  // App Bar and content Color Changes
  void red()
  {
    setState(() 
    {
      color = Colors.red;
      backgroundColor = Colors.white;
    });
  }
  void blue()
  {
    setState(() 
    {
      color = Colors.blue;
      backgroundColor = Colors.white;
    });
  }
  void green()
  {
    setState(() 
    {
      color = Colors.green;
      backgroundColor = Colors.white;
    });
  }
  void dark()
  {
    setState(()
    {
      color = Colors.blueGrey;
      backgroundColor = const Color.fromRGBO(0, 0, 0, 1);
    });
  }


  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text('Settings Page'),
        backgroundColor: color,
      ),
      body: 
      Center(
        child: 
        Column
        (
          children: <Widget>
          [
            // Change Color button red
            Container
            (
              child:
              ElevatedButton(onPressed: red, style: ElevatedButton.styleFrom(backgroundColor: color), child: const Text("Red")),
            ),
            // Change Color button blue
            Container
            (
              child:
              ElevatedButton(onPressed: blue, style: ElevatedButton.styleFrom(backgroundColor: color), child: const Text("Blue")),
            ),
            // Change Color button green
            Container
            (
              child:
              ElevatedButton(onPressed: green, style: ElevatedButton.styleFrom(backgroundColor: color), child: const Text("Green")),
            ),  
            // Change Color button dark
            Container
            (
              child:
              ElevatedButton(onPressed: dark, style: ElevatedButton.styleFrom(backgroundColor: color), child: const Text("Dark")),
            ),               
            // Home Button
            Container
            (
              child: ElevatedButton
              (
                child: const Text('Home Page'),
                style: ElevatedButton.styleFrom(backgroundColor: color),
                onPressed:() 
                {
                    //Navigate Back Home
                    Navigator.pushAndRemoveUntil
                    (context,
                    MaterialPageRoute
                    (
                      builder: (context) => MyHomePage()
                    ),
                    ModalRoute.withName("/MySettingsPage")
                    );
                },
              ),

            ),

          ]
        )

      ),
    );
  }
}

class MyHomePage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

// ignore: todo
//TODO: Change this to HOME Screen
class MyHomePageState extends State {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
        backgroundColor: color,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: color,
              elevation: 5,
              child: const Text(
                'Welcome to our Final Project!',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50.0, //Provides height for the RaisedButton
              child: FractionallySizedBox(
                widthFactor: 0.4, ////Provides 40% width for the RaisedButton
                child: ElevatedButton(
                  child: const Text('Rate Profs'),
                  style: ElevatedButton.styleFrom(backgroundColor: color,),
                  onPressed: () {
                    //Navigate to Settings
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ViewProf()),
                    );
                  }, //Settings Page Navigation
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50.0, //Provides height for the RaisedButton
              child: FractionallySizedBox(
                widthFactor: 0.4, ////Provides 40% width for the RaisedButton
                child: ElevatedButton(
                  child: const Text('Rate Courses'),
                  style: ElevatedButton.styleFrom(backgroundColor: color),
                  onPressed: () {
                    //Navigate to Settings
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ViewCourse()),
                    );
                  }, //Settings Page Navigation
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 70.0, //Provides height for the RaisedButton
              child: FractionallySizedBox(
                widthFactor: 0.45, ////Provides 40% width for the RaisedButton
                child: ElevatedButton(
                  child: const Text('Rate Colleges/Universities'),
                  style: ElevatedButton.styleFrom(backgroundColor: color),
                  onPressed: () {
                    //Navigate to Settings
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ViewInst()),
                    );
                  }, //Settings Page Navigation
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50.0, //Provides height for the RaisedButton
              child: FractionallySizedBox(
                widthFactor: 0.4, ////Provides 40% width for the RaisedButton
                child: ElevatedButton(
                  child: const Text('Settings Page'),
                  style: ElevatedButton.styleFrom(backgroundColor: color),
                  onPressed: () {
                    //Navigate to Settings
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute
                      (builder: (context) => MySettingsPage()
                      ),
                      ModalRoute.withName("/home")
                    );
                  }, //Settings Page Navigation
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//TODO: Update this page to be the VIEW page
class ViewProf extends StatefulWidget {
  const ViewProf({super.key});

  @override
  State<ViewProf> createState() => _ViewProfState();
}

class ViewCourse extends StatefulWidget {
  const ViewCourse({super.key});

  @override
  State<ViewCourse> createState() => _ViewCourseState();
}

class ViewInst extends StatefulWidget {
  const ViewInst({super.key});

  @override
  State<ViewInst> createState() => _ViewInstState();
}

class _ViewProfState extends State<ViewProf> {
  // final nameController = TextEditingController();

  // final costController = TextEditingController();

  // final typeController = TextEditingController();

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
              child: Card(
                color: color,
                elevation: 5,
                child: const Text(
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
        onPressed: () => _startAddNewProf(context),
      ),
    );
  }
}

class _ViewCourseState extends State<ViewCourse> {
  // final nameController = TextEditingController();

  // final costController = TextEditingController();

  // final typeController = TextEditingController();

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
              child: Card(
                color: color,
                elevation: 5,
                child: const Text(
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
        onPressed: () => _startAddNewCourse(context),
      ),
    );
  }
}

class _ViewInstState extends State<ViewInst> {
  // final nameController = TextEditingController();

  // final costController = TextEditingController();

  // final typeController = TextEditingController();

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
              child: Card(
                color: color,
                elevation: 5,
                child: const Text(
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
        onPressed: () => _startAddNewInst(context),
      ),
    );
  }
}
