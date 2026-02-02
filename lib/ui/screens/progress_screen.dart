import 'package:flutter/material.dart';
import 'package:sakib_flutter_app/ui/widgets/task_card.dart';
import 'package:sakib_flutter_app/ui/widgets/tm_app_bar.dart';
class ProgressScreen extends StatefulWidget {
  const ProgressScreen({super.key});

  @override
  State<ProgressScreen> createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: TMAppBar(),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Expanded(
            child: ListView.separated(
              itemCount: 5,
              itemBuilder: (context,index)
              {
                return TaskCard(
                  status: 'Progress', cardColor: Colors.purple,
                );
              },
              separatorBuilder: (context,index)
              {
                return SizedBox(height: 4,);
              },
            ),
          )

        ],
      ),
    );
  }
}
