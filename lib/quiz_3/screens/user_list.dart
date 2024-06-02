import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzes/quiz_3/screens/user_profile.dart';
import 'package:quizzes/quiz_3/users.dart';

class UserList extends StatelessWidget{

  Widget build(BuildContext context) {
    Users instance=Users.users_instance;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.separated(
          itemBuilder: (context,index)=>InkWell(
            onTap: () async {
              Map<String,dynamic> user =await instance.Get_User(id: instance.Users_id_List[index]['id']);
              Navigator.push(context, MaterialPageRoute(
                  builder: (context)=>UserProfile(user_map: user,)));
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 5.h),
              height: 50.h,
              child: Text("${instance.Users_id_List[index]['id']}"),
            ),
          ),
          separatorBuilder: (context,index)=>SizedBox(height: 10.h,),
          itemCount: instance.Users_id_List.length)
    );
  }
}