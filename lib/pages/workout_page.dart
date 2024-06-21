import 'package:flutter/material.dart';
import 'package:untitled1/pages/excercise_page.dart';
import 'package:untitled1/pages/exercise_list_page.dart';

class WorkoutPage extends StatefulWidget {
  const WorkoutPage({super.key});

  @override
  State<WorkoutPage> createState() => _WorkoutPageState();
}

class _WorkoutPageState extends State<WorkoutPage> {
  final List<Widget> _tabs = [
    const ExerciseListPage(),
    const ExcercisePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: const TabBar(
            tabs: [
              Tab(
                text: "exercise list",
                icon: Icon(Icons.playlist_play),
              ),
              Tab(
                text: "exercise",
                icon: Icon(Icons.sports_soccer),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: _tabs,
        ),
      ),
    );
  }
}
