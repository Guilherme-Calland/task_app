import 'package:a7_guis_task_app/resources/resources.dart';
import 'package:a7_guis_task_app/shared/guis.tasks.data.dart';
import 'package:a7_guis_task_app/widgets/add.task.dialog.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Gui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 3,
      child: Transform.translate(
        offset: Offset(-10, 45),
        child: MaterialButton(
          padding: EdgeInsets.all(0),
          minWidth: 0,
          child: Consumer<GuisTasksData>(
            builder: (context, data, child){
              return data.image;
            }
          ),
          onPressed: (){
            print('pressed on guilherme');
            showDialog(
              context: context,
              builder: (context) => Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 200,),
                  AddTaskDialog(addOrChange: "Add")
                ],
              )
            );
          },
        ),
      ),
    );
  }
}

