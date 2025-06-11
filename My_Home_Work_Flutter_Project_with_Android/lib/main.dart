import 'package:flutter/material.dart';

void main() {
  runApp(MyHomeWorkApp());
}

class MyHomeWorkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Home Work',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<String> workoutDays = [
    "Saturday – Chest + Triceps",
    "Sunday – Arms (Biceps + Triceps)",
    "Monday – Lower Chest + Final Pump",
    "Tuesday – Active Rest",
    "Wednesday – Mixed Chest + Biceps",
    "Thursday – Heavy Triceps + Mid Chest",
    "Friday – Explosive Training"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Home Work'),
      ),
      body: ListView.builder(
        itemCount: workoutDays.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(workoutDays[index]),
              leading: Icon(Icons.fitness_center),
            ),
          );
        },
      ),
    );
  }
}
