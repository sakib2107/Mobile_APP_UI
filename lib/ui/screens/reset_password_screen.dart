import 'package:flutter/material.dart';
import 'package:sakib_flutter_app/ui/widgets/screen_background.dart';
class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({super.key});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 150,),
              Text('Set Password',
              style: Theme.of(context).textTheme.titleLarge,
              ),
              Text('Minimum length password 8 character with Latter and nsumber combination ',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 10,),
              TextField(
                  decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
              const SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                ),
              ),
              const SizedBox(height: 10,),
              SizedBox(
                width: double.infinity,
                child:FilledButton(
                    onPressed: (){},
                    child: Text('Confirm',
                    style:TextStyle(
                      color: Colors.white,
                    )
                    )
                ),
              ),
              const SizedBox(height: 35,),

              Center(
                child: Column(
                  children: [
                    RichText(text: TextSpan(
                      text: 'Have Account? ',
                      children: [
                        TextSpan(
                          text: 'Sign In',
                          style: TextStyle(
                            color: Colors.greenAccent,
                            fontWeight: FontWeight.bold,
                          )
                        ),
                      ],
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight:FontWeight.bold,
                      )
                    )),
                  ],
                ),
              )

          ],
          ),
        ),
        ),
    );
  }
}
