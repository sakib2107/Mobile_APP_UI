import 'package:flutter/material.dart';
import 'package:sakib_flutter_app/ui/screens/login_page.dart';
import '../screens/update_profile_screen.dart';
class TMAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TMAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.green,
      title:InkWell(
        onTap: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>UpdateProfileScreen()));
        },
        child: Row(
          children: [
            CircleAvatar(),
            SizedBox(width:8,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mohammad Sakib Khan',
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),),

                Text('sakibkhan@gmail.com',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      actions: [
        IconButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
        }, icon: Icon(Icons.logout),),

      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}