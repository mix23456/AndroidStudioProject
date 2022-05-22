import 'package:flutter/cupertino.dart';

List<History> historyList = [];

class History {
  String? data;
  String? data2;
  DateTime dateTime;
  Color coloract;

  History(
      {required this.data,
      required this.data2,
      required this.dateTime,
      required this.coloract});
}
