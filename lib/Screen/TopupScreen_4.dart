import 'package:flutter/material.dart';
import 'package:newinstal/Info/info.dart';
import 'package:newinstal/Info/History.dart';
import 'package:intl/intl.dart';

class TopupSC extends StatefulWidget {
  const TopupSC({Key? key}) : super(key: key);

  @override
  State<TopupSC> createState() => _TopupSCState();
}

class _TopupSCState extends State<TopupSC> {
  DateTime now = DateTime.now();
  String formattedDate =
      DateFormat('yyyy-MM-dd – kk:mm').format(DateTime.now());
  info infoClass = info();
  int? tokens;
  Color redcolors = Color.fromRGBO(234, 130, 121, 1);

  @override
  void initState() {
    tokens = infoClass.infoget();
    super.initState();
  }

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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                Container(
                  height: 95,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                          width: 2, color: Color.fromRGBO(19, 51, 65, 1))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(width: 20),
                            Container(
                                height: 70,
                                width: 70,
                                child: Image.asset(
                                    'assets/image/walletlogofixed.png')),
                            SizedBox(width: 10),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 15),
                                Container(
                                  height: 25,
                                  child: Text('Your Curent Wallet',
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color.fromRGBO(19, 51, 65, 1),
                                          fontWeight: FontWeight.bold)),
                                ),
                                Container(
                                  height: 30,
                                  child: Text('$tokens' + ' Tokens',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color.fromRGBO(19, 51, 65, 1),
                                      )),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Container(
                                  height: 45,
                                  width: 50,
                                  child: Image.asset(
                                      'assets/image/coinfixed.png')),
                              SizedBox(width: 10),
                              Container(
                                height: 45,
                                width: 200,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: redcolors),
                                    onPressed: () {
                                      infoClass.infoadd(999);
                                      historyList.add(History(
                                          data: 'Top up',
                                          data2: '999 Tokens Added',
                                          dateTime: now));
                                      setState(() {
                                        tokens = infoClass.infoget() as int?;
                                      });
                                    },
                                    child: Text('999 Tokens 9990 Bath',
                                        style: TextStyle(fontSize: 16))),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Container(
                                  height: 45,
                                  width: 50,
                                  child: Image.asset(
                                      'assets/image/coinfixed3.png')),
                              SizedBox(width: 10),
                              Container(
                                height: 45,
                                width: 200,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: redcolors),
                                    onPressed: () {
                                      infoClass.infoadd(10);
                                      historyList.add(History(
                                          data: 'Top up',
                                          data2: '10 Tokens Added',
                                          dateTime: now));
                                      setState(() {
                                        tokens = infoClass.infoget() as int?;
                                      });
                                    },
                                    child: Text('10 Tokens 100 Bath',
                                        style: TextStyle(fontSize: 16))),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Container(
                                  height: 45,
                                  width: 50,
                                  child: Image.asset(
                                      'assets/image/coinfixed4.png')),
                              SizedBox(width: 10),
                              Container(
                                height: 45,
                                width: 200,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: redcolors),
                                    onPressed: () {
                                      infoClass.infoadd(5);
                                      historyList.add(History(
                                          data: 'Top up',
                                          data2: '5 Tokens Added',
                                          dateTime: now));
                                      setState(() {
                                        tokens = infoClass.infoget();
                                      });
                                    },
                                    child: Text('5 Tokens 50 Bath',
                                        style: TextStyle(fontSize: 16))),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            children: [
                              Container(
                                  height: 45,
                                  width: 50,
                                  child: Image.asset(
                                      'assets/image/coinfixed2.png')),
                              SizedBox(width: 10),
                              Container(
                                height: 45,
                                width: 200,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: redcolors),
                                    onPressed: () {
                                      infoClass.infoadd(1);
                                      historyList.add(History(
                                          data: 'Top up',
                                          data2: '1 Token Added',
                                          dateTime: now));
                                      setState(() {
                                        tokens = infoClass.infoget();
                                      });
                                    },
                                    child: Text('1 Token 10 Bath',
                                        style: TextStyle(fontSize: 16))),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
