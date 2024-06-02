
import 'package:faker/faker.dart';


class Users{

  static final Users users_instance =  Users();

  final List Users_id_List=[
    {
      "id":0
    },
    {
      "id":1
    },
    {
      "id":2
    },
    {
      "id":3
    },
    {
      "id":4
    },
    {
      "id":5
    },
    {
      "id":6
    },
    {
      "id":7
    },
    {
      "id":8
    },
    {
      "id":9
    },
    {
      "id":10
    }

  ];

  List<Map<String,dynamic>>users=[];

  Map<String,dynamic> Get_User({
    required int id
  }){
    if(users.isEmpty){
     return getUserById(id);
    }
    for(Map<String,dynamic> user in users){
      if(user['id']==id){
       return user;
      }
    }
    return getUserById(id);
  }

  getUserById(int? id){
  if(id==null||id<0) return null;
  Map<String,dynamic> user={};
  user={
    "id":id,
    "first_name":faker.person.firstName(),
    "last_name":faker.person.lastName(),
    "about":faker.lorem.words(3).join(' '),
    "image":faker.image.image(),
  };

  users.add(user);
  print(user.toString());
  return user;

}



}
