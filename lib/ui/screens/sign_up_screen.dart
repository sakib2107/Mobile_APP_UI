import 'package:flutter/material.dart';
import 'package:sakib_flutter_app/ui/widgets/screen_background.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen ({super.key});

  @override
  State<SignUpScreen> createState() => _State();
}

class _State extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
      child:
      Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100,),
            Text('Join With Us',
            style: Theme.of(context).textTheme.titleLarge,),
            const SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
            const SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                hintText: 'First Name',
              ),
            ),
            const SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                hintText: 'Last Name',
              ),
            ),
            const SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                hintText: 'Mobile',
              ),
            ),
            const SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
            const SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
              child:FilledButton(
                  onPressed: (){}, child: Icon(Icons.arrow_circle_right_outlined)),
            ),
            const SizedBox(height: 10,),
            Center(
              child: Column(
                children: [
                  RichText(text: TextSpan(
                    text:'Have account? ',
                    children: [
                      TextSpan(
                          text:'Sign In',
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                      ),
                    ],
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight:FontWeight.bold,
                    ),

                  ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
      ));
  }
}
