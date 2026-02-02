import 'package:flutter/material.dart';
import 'package:sakib_flutter_app/ui/widgets/task_card.dart';
import 'package:sakib_flutter_app/ui/widgets/tm_app_bar.dart';
class CancelledScreen extends StatefulWidget {
  const CancelledScreen({super.key});

  @override
  State<CancelledScreen> createState() => _CancelledScreenState();
}

class _CancelledScreenState extends State<CancelledScreen> {
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
                  status: 'Cancelled', cardColor: Colors.red,
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
