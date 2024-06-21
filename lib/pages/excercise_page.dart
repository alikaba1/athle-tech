import 'package:flutter/material.dart';

List<String> exerList = ['asd', 'ddf'];

class ExcercisePage extends StatefulWidget {
  const ExcercisePage({super.key});

  @override
  State<ExcercisePage> createState() => _ExcercisePageState();
}

class _ExcercisePageState extends State<ExcercisePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(
              top: 25,
            ),
            child: FilledButton.icon(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return const NewExercisePage();
                }));
              },
              label: const Text("add an exercise"),
              icon: const Icon(Icons.add),
              iconAlignment: IconAlignment.end,
            ),
          ),
          const Item(),
        ],
      ),
    );
  }
}

class NewExercisePage extends StatefulWidget {
  const NewExercisePage({super.key});

  @override
  State<NewExercisePage> createState() => _NewExercisePageState();
}

class _NewExercisePageState extends State<NewExercisePage> {
  @override
  Widget build(BuildContext context) {
    String name = "";
    return Scaffold(
      body: Column(
        children: [
          TextField(
            onChanged: (String value) {
              name = value;
            },
          ),
          IconButton.filled(
            onPressed: () {
              setState(() {
                exerList.add(name);
                Navigator.of(context).pop();
              });
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
    );
  }
}

class Item extends StatelessWidget {
  const Item({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: exerList.length,
      itemBuilder: (context, int index) {
        return ListTile(
          title: Text(exerList[index]),
        );
      },
    );
  }
}
