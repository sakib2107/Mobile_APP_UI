import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sakib_flutter_app/ui/widgets/screen_background.dart';
import 'package:sakib_flutter_app/ui/widgets/tm_app_bar.dart';
import '../widgets/photo_picker.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});



  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  final ImagePicker _imagePicker=ImagePicker();
  XFile ? _selectedImage;
  Future<void>_pickImage() async {
    final XFile? image = await _imagePicker.pickImage(source: ImageSource.camera);
    if(image != null){
      _selectedImage=image;
      setState(() {

      });

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TMAppBar(),
      body: ScreenBackground(
        child:
        Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50,),
              Text('Update Profile',
                style: Theme.of(context).textTheme.titleLarge,),
              const SizedBox(height: 10,),

              photo_picker(onTap: _pickImage, selectedPhoto: _selectedImage),

              SizedBox(height: 10,),
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


            ],
          ),
        ),
      ));
  }
}


