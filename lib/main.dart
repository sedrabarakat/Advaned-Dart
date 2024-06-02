import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quizzes/quiz_1/jsons/test1.dart';
import 'package:quizzes/quiz_1/mixins/Time_Helper_Mixin.dart';
import 'package:quizzes/quiz_1/models/serializable_/company_map.dart';
import 'package:quizzes/quiz_2/lazy_loading/get_categories_list.dart';
import 'package:quizzes/quiz_2/lazy_loading/get_languages_list.dart';
import 'package:quizzes/quiz_2/lazy_loading/get_venues_list.dart';
import 'package:quizzes/quiz_2/screen.dart';
import 'package:quizzes/quiz_3/screens/user_list.dart';
import 'package:quizzes/quiz_3/users.dart';

Future<void> main() async {
  runApp(const MyApp());
  ////////////////////////////////////
  final  company =await Companymap.fromJson(test1);
  print(await company.company!.departments!.first.meeting_time);
  print(await company.company!.established);
  print(await company.company!.address!.city);
/////////////////2
  var Categories=Categories_lazy.lazy_instance;
  await Categories.get_CategoriesList;
  print(Categories.categoriesList);

  var lang=Language_lazy.lazy_instance;
  await lang.get_LangList;
  print(lang.lang_List);

  var vens=Venues_lazy.lazy_instance;
  await vens.get_VenuesList;
  print(vens.venues_List);
  //3 in the quiz3 folder
  ////////////////////run the screen///////////

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: UserList(),//UserList
      ),
    );
  }
}


