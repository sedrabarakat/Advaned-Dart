import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../string_helper.dart';

class UserProfile extends StatelessWidget{
  Map<String,dynamic>user_map;

  UserProfile({
    required this.user_map
});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
            Container(height: 100.h,
              decoration: const BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60)
                ),

              ),),
            CircleAvatar(radius: 80.r,backgroundColor: Colors.grey,
            child: CashedImage(url: user_map["image"]),)
          ],),
          Center(child: Text(
            StringHelper.fullName(user_map["first_name"],user_map["last_name"]),
              overflow: TextOverflow.ellipsis,style: TextStyle(
            fontSize: 20.sp
          ),
          ),),
          SizedBox(height: 30.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w ),
            child: Text("About :",style: TextStyle(
                fontSize: 15.sp
            ),),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w ),
            child: Text("${user_map["about"]}"),
          )

        ],
      ),
    );
  }
}

Widget CashedImage ({
  required String url
}){
  return
    CachedNetworkImage(
      imageUrl: url,
      placeholder: (context, url) => CircularProgressIndicator(),
      errorWidget: (context, url, error) => Icon(Icons.error),
    );

}