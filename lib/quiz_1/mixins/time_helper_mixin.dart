import 'package:intl/intl.dart';

mixin Time_Helper_Mixin{

  static String parseTime12Hour(String timeString) {

    DateTime date=DateFormat('HH:mm').parse(timeString);

    var format_date=DateFormat('h:mm a').format(date);

    return format_date;
  }

  static String parseTime24Hour(String timeString) {

    DateTime date=DateFormat('h:mm a').parse(timeString);

    var format_date=DateFormat('HH:mm').format(date);

    return format_date;
  }

  static DateTime parseString2Date(String timeString) {

    DateTime date=DateFormat('h:mm a').parse(timeString);

    return date;
  }


}