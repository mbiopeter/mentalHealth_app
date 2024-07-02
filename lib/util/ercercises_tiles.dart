import 'package:flutter/material.dart';

class ExercisesTiles extends StatelessWidget {
  final icon;
  final bgColor;
  final String exerciseName;
  final int numberOfExercises;

  const ExercisesTiles({
    required this.icon,
    required this.bgColor,
    required this.exerciseName,
    required this.numberOfExercises,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: ListTile(
            leading: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
            title: Text(
              exerciseName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            subtitle: Text(
              '$numberOfExercises Exercises',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            trailing: const Icon(Icons.more_vert),
          ),
        ),
      ),
    );
  }
}
