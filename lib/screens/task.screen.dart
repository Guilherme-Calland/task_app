import 'package:a7_guis_task_app/widgets/gui.dart';
import 'package:a7_guis_task_app/widgets/task.list.dart';
import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(left: 58, right: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
          )
        ),
        child: Row(
          children: <Widget>[
            TaskList(),
            Gui(),
          ],
        ),
      ),
    );
  }
}

