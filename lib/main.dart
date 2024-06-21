import 'package:flutter/material.dart';
import 'package:untitled1/pages/community_page.dart';
import 'package:untitled1/pages/workout_page.dart';
import 'package:untitled1/pages/home_page.dart';
import 'package:untitled1/pages/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Root(),
    );
  }
}

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int currentPage = 0;
  List<Widget> page = [
    const HomePage(),
    const WorkoutPage(),
    const CommunityPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('blaze pod'),
        leading: IconButton(
          onPressed: () {
            debugPrint("dd");
          },
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: page[currentPage],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home_rounded), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.sports), label: 'Workout'),
          NavigationDestination(icon: Icon(Icons.people), label: 'Community'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
