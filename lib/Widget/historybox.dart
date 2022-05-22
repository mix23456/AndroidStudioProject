import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../Info/History.dart';

class historybox extends StatelessWidget {
  final String? date;
  final String? activity;
  final String? change;
  final Color? backgroundcolor;

  const historybox({
    Key? key,
    required this.date,
    required this.activity,
    required this.change,
    this.backgroundcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundcolor,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(children: [
          Text(
            '${date}',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Padding(
            padding: const EdgeInsets.all(4),
            child: Text(
              '${activity}',
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          Text(
            '${change}',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ]),
      ),
    );
  }
}
