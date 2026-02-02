import 'package:flutter/material.dart';
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.black,
      body: SafeArea(
             child : Container(
               alignment: Alignment.topRight,
               child: Column(
                 children: [
                   Text('20+20',
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 30,
                 ),),
                   Text('30',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 50,
                       fontWeight: FontWeight.bold,
                     ),),
                           ],
                           ),
             ),


    ),);
  }
}
