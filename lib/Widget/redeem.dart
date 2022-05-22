import 'package:flutter/material.dart';
import 'package:newinstal/Info/History.dart';
import 'package:newinstal/Info/info.dart';

import 'Alertt.dart';

class redeem extends StatelessWidget {
  const redeem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String code = 'freetokens';
    info infoClass = info();
    TextEditingController codeController = TextEditingController();
    return Container(
      height: 155,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 2, color: Color.fromRGBO(19, 51, 65, 1))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                Container(
                    height: 80,
                    width: 80,
                    child: Image.asset('assets/image/redeemlogofixed.png')),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Container(
                      height: 25,
                      child: Text('Redeem Code',
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(19, 51, 65, 1),
                              fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      height: 30,
                      width: 150,
                      child: TextField(
                        controller: codeController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                          hintText: 'code',
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            height: 28,
            width: 230,
            child: ElevatedButton(
                onPressed: () {
                  if (codeController.text == code) {
                    showAlertCurrect(context);
                    infoClass.infoadd(3);
                    codeController.text = '';
                    historyList.add(History(
                        data: 'Redeem',
                        data2: '3 Tokens Added',
                        dateTime: now,
                        coloract: Color.fromRGBO(2, 169, 222, 1)));
                    // tokens = infoClass.infoget();
                  } else
                    showAlertWrong(context);
                  codeController.text = '';
                },
                child: Text('Redeem', style: TextStyle(fontSize: 16))),
          ),
        ],
      ),
    );
  }
}
