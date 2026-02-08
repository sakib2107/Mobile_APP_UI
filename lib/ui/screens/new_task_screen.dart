import 'package:flutter/material.dart';
import 'package:sakib_flutter_app/ui/screens/add_new_task_screen.dart';
import 'package:sakib_flutter_app/ui/widgets/task_card.dart';
import 'package:sakib_flutter_app/ui/widgets/tm_app_bar.dart';
import 'package:sakib_flutter_app/ui/widgets/task_count_by_status.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: TMAppBar(),
      body: Column(
        children: [
          SizedBox(height: 15,),
          // SizedBox(
          //   height: 100,
          //   child: ListView.builder(
          //     scrollDirection: Axis.horizontal,
          //     itemCount: 4,
          //     itemBuilder:(context,index){
          //       return TaskCountByStatus(title: 'Cancelled', count: index+5);
          //   }
          SizedBox(height: 5,),
          SizedBox(
            height: 100,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder:(context,index){
                  return TaskCountByStatus(title: 'Cancelled', count: index+5);
                },
                separatorBuilder: (context,index){
                  return SizedBox(width:2,);
                }
            ),
          ),
          Expanded(
            child: ListView.separated(
                itemCount: 5,
                itemBuilder: (context,index)
              {
                return TaskCard(
                  status: 'New', cardColor: Colors.blue,
                );
              },
                separatorBuilder: (context,index)
              {
                return SizedBox(height: 4,);
              },
            ),
          ),
        ],
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => AddNewTaskScreen()));
          },
          child: Icon(Icons.add),
        ),
    );

  }
}








