import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:newinstal/Info/info.dart';

import '../Widget/History.dart';

class HistorySC extends StatelessWidget {
  HistorySC({Key? key}) : super(key: key);

  info infoClass = info();
  int? tokens ;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.white,
        centerTitle: true,
        title:
        Text(
          'Laundry God',
          style: TextStyle(
              fontSize: 25 ,
              color: Color.fromRGBO( 19,51,65, 1 ),
              fontWeight: FontWeight.bold
          ),
        ),
      ),
      body:
      Padding(
        padding: const EdgeInsets.all(30.0),
        child:
        ListView.builder(
          itemCount: historyList.length,
          itemBuilder: (BuildContext context, index ) {
            int reverseIndex = historyList.length - 1 - index;
            return ListTile(

              title:
                  Card(
                    color: Color.fromRGBO( 234,130,121, 1 ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Text('${DateFormat('kk:mm dd MMMM yyyy').format(historyList[reverseIndex].dateTime) }',
                              style: TextStyle( fontWeight: FontWeight.bold , color: Colors.white),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(4),
                            child: Text('${historyList[reverseIndex].data}',
                              style: TextStyle( fontWeight: FontWeight.bold , color: Colors.white),
                            ),
                          ),
                          Text('${historyList[reverseIndex].data2}',
                            style: TextStyle( fontWeight: FontWeight.bold , color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
            );
          },
        ),
      ),
    );
  }
}
