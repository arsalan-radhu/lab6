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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: 
              Container
              (
                height: 50.0, //Provides height for the RaisedButton
                child: 
                FractionallySizedBox(
                  widthFactor: 0.4, ////Provides 40% width for the RaisedButton
                  child:
                  ElevatedButton(onPressed: red, style: ElevatedButton.styleFrom(backgroundColor: color), child: const Text("Red")),
              ),
            ),
          ),

            //          Change Color button blue          //
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: 
              Container
              (
                height: 50.0, //Provides height for the RaisedButton
                child: 
                FractionallySizedBox(
                  widthFactor: 0.4, ////Provides 40% width for the RaisedButton
                  child:
                  ElevatedButton(onPressed: blue, style: ElevatedButton.styleFrom(backgroundColor: color), child: const Text("Blue")),
              ),
            ),
          ),

            //          Change Color button green         //
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: 
              Container
              (
                height: 50.0, //Provides height for the RaisedButton
                child: 
                FractionallySizedBox(
                  widthFactor: 0.4, ////Provides 40% width for the RaisedButton
                  child:
                  ElevatedButton(onPressed: green, style: ElevatedButton.styleFrom(backgroundColor: color), child: const Text("Green")),
              ),
            ),
          ),
 
            //          Change Color button dark          //
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: 
              Container
              (
                height: 50.0, //Provides height for the RaisedButton
                child: 
                FractionallySizedBox(
                  widthFactor: 0.4, ////Provides 40% width for the RaisedButton
                  child:
                  ElevatedButton(onPressed: dark, style: ElevatedButton.styleFrom(backgroundColor: color), child: const Text("Dark")),
              ),
            ),
          ),
              
            //          Home Button         //
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: 
              Container
              (
                height: 50.0, //Provides height for the RaisedButton
                child: 
                FractionallySizedBox(
                  widthFactor: 0.4, ////Provides 40% width for the RaisedButton
                  child:
                  ElevatedButton
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
            ),
          ),
          ]
        )

      ),
    );
  }
}