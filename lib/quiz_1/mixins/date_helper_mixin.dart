import 'package:intl/intl.dart';
mixin Date_Helper_Mixin{

static String UTC_Fromat(String String_date){
  DateTime date = DateTime.parse(String_date);

  String formattedDate = DateFormat('d-MMM, yyyy').format(date.toLocal());

  return formattedDate;
}


static String Date2Utc(String String_date) {

  DateTime date = DateFormat('d-MMM, yyyy').parse(String_date);

  String formattedDate = date.toUtc().toString();

  return formattedDate;

}







}