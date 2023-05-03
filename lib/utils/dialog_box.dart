import 'package:flutter/material.dart';
import 'package:to_do_app/utils/my_button.dart';

class DialogBox extends StatelessWidget {
  const DialogBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        color: Colors.yellow[200],
        height: 180,
        child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter new task",
              ),
            ),
            Row(
              children: [
                MyButton(text: "save", onPressed: () {}),
                MyButton(text: "Cancel", onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
