import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exploration',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }

}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Space Exploration Planner!'),
      ),
      body: Column(
        children: [
          Progress(),
          TaskList(),
        ],
      ),
    );
  }

}

class Progress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('You are this far away exploring the whole universe'),
        LinearProgressIndicator(value: 0.0,)
      ],
    );
  }

}

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TaskItem(lable: "Local rocket with supplies"),
        TaskItem(lable: "Launch rocket"),
        TaskItem(lable: "Circle the home planet"),
        TaskItem(lable: "Head out to the firt moon"),
        TaskItem(lable: "Launch moon lander #1"),
    ],);
  }

}

class TaskItem extends StatefulWidget {

  final String lable;

  TaskItem({Key? key,required this.lable}) : super(key: key);

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool? _value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _value, 
          onChanged: (newValue) => setState(() => _value = newValue)),
        Text(widget.lable)
      ],
    );
  }
}