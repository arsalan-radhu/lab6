/*
* Author:       Tyler Osborne
* Date:         2022-11-24  
* Course Code:  MODE4201
* Description:
*               This is a Rate my prof app where users can
*               review profs, courses, and insatutions.
**/

//          Imports         //
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

//          App Start         //
void main() => runApp(const MyApp()); // Runs the app

//          Global Color Variables          //
var color = Colors.blue; // Color of the app bar
var backgroundColor = Colors.white; // Color of the background of the app
var textColor = Colors.white; // Color of text

///**************************************** */
///         Main App
///**************************************** */
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // Main Build
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      title: 'MODE4201 Project',
      home: MyHomePage(),
    );
  }
}
///**************************************** */
///         Settings widget
///**************************************** */
//          Widget          //
class MySettingsPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return MySettingsPageState();
  } 
}

//          State         //
class MySettingsPageState extends State {

  //          Settings Methods          //
  // Changes the color of the app to red
  void red()
  {
    setState(() 
    {
      color = Colors.red;
      backgroundColor = Colors.white;
    });
  }

  // Changes the color of the app to blue
  void blue()
  {
    setState(() 
    {
      color = Colors.blue;
      backgroundColor = Colors.white;
    });
  }

  // Changes the color of the app to green
  void green()
  {
    setState(() 
    {
      color = Colors.green;
      backgroundColor = Colors.white;
    });
  }

  // Changes the color of the app to dark
  void dark()
  {
    setState(()
    {
      color = Colors.blueGrey;
      backgroundColor = const Color.fromRGBO(0, 0, 0, 1);
    });
  }

  //          Build Settings          //
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
            //          Change Color button red         //
            Container
            (
              child:
              ElevatedButton(onPressed: red, style: ElevatedButton.styleFrom(backgroundColor: color), child: const Text("Red")),
            ),
            //          Change Color button blue          //
            Container
            (
              child:
              ElevatedButton(onPressed: blue, style: ElevatedButton.styleFrom(backgroundColor: color), child: const Text("Blue")),
            ),
            //          Change Color button green         //
            Container
            (
              child:
              ElevatedButton(onPressed: green, style: ElevatedButton.styleFrom(backgroundColor: color), child: const Text("Green")),
            ),  
            //          Change Color button dark          //
            Container
            (
              child:
              ElevatedButton(onPressed: dark, style: ElevatedButton.styleFrom(backgroundColor: color), child: const Text("Dark")),
            ),               
            //          Home Button         //
            Container
            (
              child: ElevatedButton
              (
                child: const Text('Home Page'),
                style: ElevatedButton.styleFrom(backgroundColor: color),
                onPressed:() 
                {
                    // Navigate Back Home
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

///**************************************** */
///         Home Page Widget
///**************************************** */
//          Widget          //
class MyHomePage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

//          State         //
class MyHomePageState extends State {

  //          Build Home Page         //
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
              height: 50.0, //Provides height for the RaisedButton
              child: FractionallySizedBox(
                widthFactor: 0.4, ////Provides 40% width for the RaisedButton
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
