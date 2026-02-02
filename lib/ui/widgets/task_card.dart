import 'package:flutter/material.dart';
class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,required this.status, required this.cardColor,
  });
  final String status;
  final Color cardColor;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
        ),
        title: Text('this is description',
          //style: Theme.of(context).textTheme.bodyLarge,
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('this is description'),
            Text('29/01/26'),
            Row(
              children: [
                Chip(
                  label: Text(status),
                  backgroundColor: cardColor,
                  labelStyle: TextStyle(color: Colors.white),
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)
                  ),
                ),
                Spacer(),
                IconButton(onPressed: (){}, icon: Icon(Icons.edit_note_outlined)),
                IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: Colors.red))
              ],
            )
          ],
        ),

      ),
    );
  }
}