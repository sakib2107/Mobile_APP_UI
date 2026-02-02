import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../widgets/screen_background.dart';
import 'reset_password_screen.dart';

class ForgetPasswordVerifyOtpScreen extends StatelessWidget {
  const ForgetPasswordVerifyOtpScreen ({super.key});

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
              Text('PIN Verification',
                  style: Theme.of(context).textTheme.titleLarge
              ),

              const SizedBox(height: 10,),
              Text('A 6 digits OTP sent to your email address',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height:10,),


              PinCodeTextField(
                length: 6,
                obscureText: false,
                keyboardType: TextInputType.number,
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(7),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  activeFillColor: Colors.white,
                  inactiveFillColor: Colors.grey.shade300,
                ),
                animationDuration: Duration(milliseconds: 300),
                backgroundColor: Colors.transparent,
                appContext: context,
              ),

              const SizedBox(height:16,),

              SizedBox(
                width: double.infinity,
                child:FilledButton(
                    onPressed: (){
                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ResetPasswordScreen()));
                    }, child: Text('Verify',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),

                )),
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
