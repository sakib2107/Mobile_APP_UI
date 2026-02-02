import 'package:flutter/material.dart';
import '../widgets/screen_background.dart';
import 'forget_password_verify_otp_screen.dart';
class ForgetPasswordEmailVerify extends StatelessWidget {
  const ForgetPasswordEmailVerify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child:Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 150,),
              Text('Your email Address',
                style: Theme.of(context).textTheme.titleLarge
            ),

              const SizedBox(height: 4,),
              Text('A 6 digits OTP will be sent to your email address',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Colors.grey,
                  ),
              ),
              const SizedBox(height:10,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              const SizedBox(height:16,),
              SizedBox(
                width: double.infinity,
                child:FilledButton(
                    onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ForgetPasswordVerifyOtpScreen()));
                    }, child: Icon(Icons.arrow_circle_right_outlined)),
              ),
              const SizedBox(height: 35,),
              Center(
                child: Column(
                  children: [
                    RichText(text: TextSpan(
                      text:'Don\'t have an account? ',
                      children: [
                        TextSpan(
                            text:'Sign Up',
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            )
                        )
                      ],
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight:FontWeight.bold,
                      ),
                     ),
                    ),
                  ],
                ),
              ),
          ],
          ),
        ),
      ),
    );
  }
}
