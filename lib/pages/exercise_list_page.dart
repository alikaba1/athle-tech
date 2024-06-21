import 'package:flutter/material.dart';

class ExerciseListPage extends StatelessWidget {
  const ExerciseListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 10,
      width: 10,
      child: TextButton.icon(
        onPressed: () {},
        label: const Text("add an exercise list"),
        icon: const Icon(Icons.abc),
        iconAlignment: IconAlignment.end,
      ),
    );
  }
}
