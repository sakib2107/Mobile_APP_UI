import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sakib_flutter_app/ui/screens/main_nav_bar_holder_screen.dart';
import 'package:sakib_flutter_app/ui/screens/sign_up_screen.dart';
import 'package:sakib_flutter_app/ui/widgets/screen_background.dart';
import 'forget_password_email_verify.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    void _onTabSignUp(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
    }
    void onTabForgetPassword()
    {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ForgetPasswordEmailVerify()));
    }
    return Scaffold(
        // extendBodyBehindAppBar: true,
        // backgroundColor: Colors.transparent,
      body:ScreenBackground(
          child:Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
            const SizedBox(height: 150,),
            Text('Get Started With',
            style: Theme.of(context).textTheme.titleLarge
            ),
                      const SizedBox(height: 25,),
            TextFormField(
              decoration:InputDecoration(
                hintText: 'Email',
                //prefixIcon: Icon(Icons.email),
              )
            ),
                      const SizedBox(height: 10,),
            TextFormField(
                decoration:InputDecoration(
                  hintText: 'Password',
                  //prefixIcon: Icon(Icons.remove_red_eye),
                )
            ),
                      const SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              child:FilledButton(
                  onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainNavBarHolderScreen()));
                  }, child: Icon(Icons.arrow_circle_right_outlined)),
            ),
            const SizedBox(height: 35,),
            Center(
              child: Column(
                children: [
                  TextButton(onPressed: onTabForgetPassword, child: Text('Forget Password')),
                  RichText(text: TextSpan(
                    text:'Don\'t have an account? ',
                    children: [
                      TextSpan(
                          text:'Sign Up',
                          recognizer: TapGestureRecognizer()..onTap=_onTabSignUp,
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
                  )
                ],
              ),
            )
          
                    ],
                  ),
          ))
    );

  }
}


