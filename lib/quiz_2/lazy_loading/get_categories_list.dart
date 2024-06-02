
import 'package:faker/faker.dart';

class Categories_lazy {

  static final Categories_lazy lazy_instance = new Categories_lazy();

  List<String> categoriesList = [];

  Future<List<String>> get get_CategoriesList async {
    if (categoriesList.isEmpty) {
      categoriesList = await getCategories();
      categoriesList=List.generate(20, (index) => categoriesList[index]);
    }
    return categoriesList;
  }

  getCategories(){
    List<String> items=[];
    for(int i=0;i<1000;i++)
      items.add(faker.lorem.words(3).join(' '));
    return items;
  }
}
// categoriesList=List.generate(10, (index) => index);