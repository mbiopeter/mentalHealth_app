import 'package:flutter/material.dart';
import 'package:mentalhealth/util/emotion_face.dart';
import 'package:intl/intl.dart'; // Import the intl package for date formatting
import 'package:mentalhealth/util/ercercises_tiles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final String formattedDate =
        DateFormat('d MMMM, yyyy').format(now); // Format the current date
    return SafeArea(
      child: Column(
        //greating row
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //Hi Jared!
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hi, Jared!',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          formattedDate,
                          style: TextStyle(color: Colors.blue[200]),
                        )
                      ],
                    ),

                    //Notification
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12)),
                      padding: const EdgeInsets.all(10),
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),

                //search bar
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[700],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                //how do you feel?
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'How do you feel?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    )
                  ],
                ),

                const SizedBox(
                  height: 25,
                ),

                //4 different faces
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //bad
                    Column(
                      children: [
                        EmotionFace(
                          emotionFace: '😐',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Bad',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),

                    //Fine
                    Column(
                      children: [
                        EmotionFace(
                          emotionFace: '😄',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Fine',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),

                    //Well
                    Column(
                      children: [
                        EmotionFace(
                          emotionFace: '😁',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Well',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),

                    //Excellent
                    Column(
                      children: [
                        EmotionFace(
                          emotionFace: '😄',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Excellent',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                )
              ],
            ),
          ),
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),
              ),
              child: Container(
                padding: const EdgeInsets.all(25.0),
                width: double.infinity,
                color: Colors.grey[300],
                child: Column(
                  children: [
                    //Excercises heading
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Excercises',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),

                    const SizedBox(
                      height: 25,
                    ),

                    //list view of excercises
                    Expanded(
                      child: ListView(
                        children: [
                          const ExercisesTiles(
                            icon: Icons.favorite,
                            exerciseName: 'Speaking Skills',
                            numberOfExercises: 16,
                            bgColor: Colors.orange,
                          ),
                          ExercisesTiles(
                            icon: Icons.person,
                            exerciseName: 'Reading Speed',
                            numberOfExercises: 8,
                            bgColor: Colors.blue[500],
                          ),
                          const ExercisesTiles(
                            icon: Icons.star,
                            exerciseName: 'Writting Speed',
                            numberOfExercises: 12,
                            bgColor: Colors.green,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
