import 'dart:convert';

import 'package:flutter/services.dart';

class Language_lazy {

  static final Language_lazy lazy_instance = new Language_lazy();

  List<String> lang_List = [];

  Future<List<String>> get get_LangList async {
    if (lang_List.isEmpty) {
      lang_List = await Load_Language_List();
      lang_List=List.generate(20, (index) => lang_List[index]);
    }
    return lang_List;
  }

  Future Load_Language_List() async {
    List<String> items;
    String filePath = "assets/json/json.txt";
    String jsonString = await rootBundle.loadString(filePath);
    List<dynamic> jsonResponse = await json.decode(jsonString);
    items = jsonResponse.cast<String>();
    return items;
  }
}
