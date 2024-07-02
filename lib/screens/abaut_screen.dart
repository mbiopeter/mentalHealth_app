import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import the intl package for date formatting
import 'package:mentalhealth/util/category.dart';
import 'package:mentalhealth/util/ercercises_tiles.dart';

class AbautScreen extends StatelessWidget {
  const AbautScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final String formattedDate =
        DateFormat('d MMMM, yyyy').format(now); // Format the current date

    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Hi Jared and Date
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hi, Jared!',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          formattedDate, // Display formatted date here
                          style: TextStyle(color: Colors.blue[200]),
                        ),
                      ],
                    ),

                    // Notification Icon
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
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

                // Search Bar
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
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),

          // Expanded Container
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Categories Heading
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Category',
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

                    // Categories Row
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Category(
                          bgColor: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 175, 76, 76),
                              Colors.amber,
                              Colors.blue,
                            ],
                            transform: GradientRotation(7 / 22 * 3),
                          ),
                          categoryName: 'RelationShip',
                        ),
                        Category(
                          bgColor: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 0, 255, 8),
                              Color.fromARGB(255, 141, 15, 122),
                              Color.fromARGB(255, 33, 233, 243),
                            ],
                            transform: GradientRotation(7 / 22 * 3),
                          ),
                          categoryName: 'Career',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    // Second Row of Categories
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Category(
                          bgColor: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 3, 28, 255),
                              Color.fromARGB(255, 60, 7, 83),
                              Color.fromARGB(255, 243, 33, 110),
                            ],
                            transform: GradientRotation(7 / 22 * 3),
                          ),
                          categoryName: 'Education',
                        ),
                        Category(
                          bgColor: LinearGradient(
                            colors: [
                              Color.fromARGB(255, 255, 0, 149),
                              Color.fromARGB(255, 97, 16, 69),
                              Color.fromARGB(255, 33, 243, 128),
                            ],
                            transform: GradientRotation(7 / 22 * 3),
                          ),
                          categoryName: 'Other',
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 25,
                    ),

                    // Consultant Heading
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Consultant',
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

                    // List of Exercises
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
                            exerciseName: 'Writing Speed',
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
          )
        ],
      ),
    );
  }
}
