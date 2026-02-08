import 'package:flutter/material.dart';
import 'package:sakib_flutter_app/ui/widgets/screen_background.dart';
import 'package:sakib_flutter_app/ui/widgets/tm_app_bar.dart';
class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: TMAppBar(),
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50,),
              Text('Add New Task',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Subject',
                ),
              ),
              const SizedBox(height: 10,),
              TextField(
                maxLines: 6,
                decoration: InputDecoration(
                  hintText: 'Description',
                ),
              ),
              const SizedBox(height: 15,),
              SizedBox(
                width: double.infinity,
                child:FilledButton(
                    onPressed: (){},
                    child: Icon(Icons.arrow_circle_right_outlined),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

