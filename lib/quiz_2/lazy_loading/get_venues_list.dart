
import 'package:faker/faker.dart';

class Venues_lazy {

  static final Venues_lazy lazy_instance = new Venues_lazy();

  List<String> venues_List = [];

  Future<List<String>> get get_VenuesList async {
    if (venues_List.isEmpty) {
      venues_List = await getVenues();
      venues_List=List.generate(20, (index) => venues_List[index]);
    }
    return venues_List;
  }

  getVenues(){
    List<String> items=[];
    for(int i=0;i<1000;i++)
      items.add(faker.lorem.words(2).join(' '));
    return items;
  }
}