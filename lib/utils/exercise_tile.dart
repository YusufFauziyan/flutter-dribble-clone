import 'package:flutter/material.dart';

class ExerciseTile extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final icon;
  final Color color;
  final String exerciseName;
  final int exerciseCount;

  const ExerciseTile(
      {super.key,
      required this.icon,
      required this.color,
      required this.exerciseName,
      required this.exerciseCount});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                        padding: const EdgeInsets.all(16),
                        color: color,
                        child: Icon(icon, color: Colors.white)),
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(exerciseName,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4),
                      Text('$exerciseCount exercises',
                          style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey))
                    ],
                  ),
                ],
              ),
              const Icon(Icons.more_horiz),
            ],
          )),
    );
  }
}
