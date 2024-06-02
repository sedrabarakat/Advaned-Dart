import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzes/quiz_2/lazy_loading/get_categories_list.dart';
import 'package:quizzes/quiz_2/lazy_loading/get_languages_list.dart';
import 'package:quizzes/quiz_2/lazy_loading/get_venues_list.dart';


class Lazy_Screen extends StatefulWidget{
  @override
  State<Lazy_Screen> createState() => _Lazy_ScreenState();
}

class _Lazy_ScreenState extends State<Lazy_Screen> {
  @override


  Widget build(BuildContext context) {
    var Lang_load = Language_lazy.lazy_instance;
    var Categories_load = Categories_lazy.lazy_instance;
    var Venues_load = Venues_lazy.lazy_instance;

    return Scaffold(
     appBar: AppBar(
       actions: [
         TextButton(onPressed: () async {
           await Categories_load.get_CategoriesList;
           print(Categories_load.categoriesList);
         }, child: Text(
             "Load Categories"
         )),
         TextButton(onPressed: () async {
           await Venues_load.get_VenuesList;
           print(Venues_load.venues_List);
         }, child:  Text(
             "Load Venues"
         ))
       ],
     ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () async {
          await Lang_load.get_LangList;
          print(Lang_load.lang_List);
        },
      ),
      body: ConditionalBuilder(
        condition: Lang_load.lang_List.length>0,
        builder: (context)=>ListView.separated(
            itemBuilder: (context,index)=>Container(
              padding: EdgeInsets.symmetric(horizontal: 20.w,vertical: 5.h),
              height: 50.h,
              child: Text("hhh"),
            ),
            separatorBuilder: (context,index)=>SizedBox(height: 10.h,),
            itemCount: 10),
        fallback: (context)=>Center(child: CircularProgressIndicator()),
      ),
      );
  }
}