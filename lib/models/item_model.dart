import 'package:intl/intl.dart';

class ItemModel {
  ItemModel({
    required this.id,
    required this.title,
    required this.immageURL,
    required this.relaseDate,
  });

  final String id;
  final String title;
  final String immageURL;
  final DateTime relaseDate;


  String daysLeft() {
    return relaseDate.difference(DateTime.now()).inDays.toString();
  }

  String relaseDateFormatted() {
    return DateFormat.yMMMEd().format(relaseDate);
  }
}
