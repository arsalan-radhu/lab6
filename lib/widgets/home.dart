/*
* Author:       Arsalan Radhu & Tyler Osborne
* Date:         2022-12-08  
* Course Code:  MODE4201
* File:         home.dart
* Description:
*               This is the home page widget.           
**/
//          Imports         //
import 'package:flutter/material.dart';
import '../main.dart';
import 'settings.dart';

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
            child: const Card(
              elevation: 5,
              child: Text(
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