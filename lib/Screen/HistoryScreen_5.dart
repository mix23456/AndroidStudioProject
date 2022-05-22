import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:newinstal/Info/info.dart';
import 'package:newinstal/Info/History.dart';
import 'package:newinstal/Widget/historybox.dart';

class HistorySC extends StatelessWidget {
  HistorySC({Key? key}) : super(key: key);

  info infoClass = info();
  int? tokens;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Laundry God',
          style: TextStyle(
              fontSize: 25,
              color: Color.fromRGBO(19, 51, 65, 1),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView.builder(
          itemCount: historyList.length,
          itemBuilder: (BuildContext context, index) {
            int reverseIndex = historyList.length - 1 - index;
            return ListTile(
              title: historybox(
                date:
                    '${DateFormat('kk:mm dd MMMM yyyy').format(historyList[reverseIndex].dateTime)}',
                activity: '${historyList[reverseIndex].data}',
                change: '${historyList[reverseIndex].data2}',
                backgroundcolor: historyList[reverseIndex].coloract,
              ),
            );
          },
        ),
      ),
    );
  }
}
