import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;

  ToDoTile(
      {Key? key,
      required this.taskName,
      required this.taskCompleted,
      required this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow[400],
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: ListTile(
          leading: Checkbox(
            value: taskCompleted,
            onChanged: onChanged,
            activeColor: Colors.black,
          ),
          title: Text(taskName,
          style: TextStyle(decoration:taskCompleted? TextDecoration.lineThrough: TextDecoration.none),),
        ),
      ),
    );
  }
}
