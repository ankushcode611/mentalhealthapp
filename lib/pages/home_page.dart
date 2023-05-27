// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:mentalhealthapp/util/emoticon_face.dart';
import 'package:mentalhealthapp/util/exercise_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.purple[800],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Hi Ankush!
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Hi, Sonal!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                )),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "6th May 2023",
                              style: TextStyle(color: Colors.purple[100]),
                            ),
                          ],
                        ),

                        //Notification

                        Container(
                          decoration: BoxDecoration(
                              color: Colors.purple[600],
                              borderRadius: BorderRadius.circular(12)),
                          padding: EdgeInsets.all(16),
                          child: Icon(
                            Icons.notifications,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    // search bar
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.purple[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(12),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Search', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),

                    SizedBox(
                      height: 25,
                    ),

                    // how do you feel
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('How do you feel?',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        )
                      ],
                    ),

                    SizedBox(
                      height: 25,
                    ),

                    //4 different faces
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //bad
                        Column(
                          children: [
                            EmoticonFace(
                              emoticonFace: '👎',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Bad',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),

                        //fun
                        Column(
                          children: [
                            EmoticonFace(
                              emoticonFace: '😄',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Fun',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),

                        //well
                        Column(
                          children: [
                            EmoticonFace(
                              emoticonFace: '😎',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Well',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),

                        //excellent
                        Column(
                          children: [
                            EmoticonFace(
                              emoticonFace: '🚀',
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              'Excellent',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24)),
                    color: Colors.grey[200],
                  ),
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: Column(
                      children: [
                        //excercise heading
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Exercises',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Icon(Icons.more_horiz)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        // listview of excercises
                        Expanded(
                          child: ListView(
                            children: [
                              ExerciseTile(
                                icon: Icons.record_voice_over,
                                excerciseName: 'Speaking Skills',
                                numberOfExcercises: 16,
                                color: Colors.orange,
                              ),
                              ExerciseTile(
                                icon: Icons.book,
                                excerciseName: 'Reading Skills',
                                numberOfExcercises: 6,
                                color: Colors.teal,
                              ),
                              ExerciseTile(
                                icon: Icons.self_improvement,
                                excerciseName: 'Self-Care Techniques',
                                numberOfExcercises: 3,
                                color: Colors.pink,
                              ),
                              ExerciseTile(
                                icon: Icons.spa,
                                excerciseName: 'Mindfulness and Meditation',
                                numberOfExcercises: 12,
                                color: Colors.blue,
                              ),
                              ExerciseTile(
                                icon: Icons.sentiment_satisfied_alt,
                                excerciseName: 'Emotional Intelligence',
                                numberOfExcercises: 5,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ]),
          ),
        ));
  }
}
