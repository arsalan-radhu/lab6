/*
* Author:       Arsalan Radhu
* Date:         2022-12-08  
* Course Code:  MODE4201
* File:         course_list.dart
* Description: 
*              This file is the widget for the list of course reviews 
**/
//          Imports         //
import 'package:flutter/material.dart';
import '../models/course.dart';
import 'package:intl/intl.dart';

// DELETE OR KEEP???
// class ViewMedia extends StatefulWidget {
//   final Function viewMedia;

//   ViewMedia(this.viewMedia);

//   @override
//   State<ViewMedia> createState() => _ViewMediaState();
// }

// class _ViewMediaState extends State<ViewMedia>
// {
//   final name = TextField();
//   final rating = TextField();
//   final type = TextField();
//   final review = TextField();

// }

///**************************************** */
///         Course List Widget
///**************************************** */
//          Widget          //
class CourseList extends StatelessWidget {
  final List<Course> media;
  const CourseList(this.media, {super.key});

  //          Build Course List         //
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Card(
              child: Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.purple,
                        width: 2,
                      ),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      '${media[index].rating.toStringAsFixed(0)}/5',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        media[index].name,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${DateFormat('EEE, y-MMM, d').format(media[index].date)} -- Course: ${media[index].type}',
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            onTap: () {
              showModalBottomSheet(
                  context: context,
                  builder: (_) {
                    return GestureDetector(
                      onTap: () {},
                      behavior: HitTestBehavior.opaque,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              media[index].name,
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              media[index].review,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '${media[index].rating.toStringAsFixed(0)}/5',
                              style: const TextStyle(
                                fontSize: 21,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            Text(
                              'This review was submitted on: ${media[index].date}',
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            },
          );
        },
        itemCount: media.length,
      ),
    );
  }
}
