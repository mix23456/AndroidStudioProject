import 'dart:async';
import 'package:flutter/material.dart';
import 'package:newinstal/Info/status.dart';
import 'package:newinstal/Info/History.dart';

class StatusSC extends StatefulWidget {
  const StatusSC({Key? key}) : super(key: key);

  @override
  State<StatusSC> createState() => _StatusSCState();
}

class _StatusSCState extends State<StatusSC> {
  DateTime now = DateTime.now();
  int fixtokens = 10;
  int usetokens = 4;
  status stat = status();
  var text = ['Add ', ' Tokens', 'Press Start'];
  late Timer _timer;
  int _start = 10;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  String formatHHMMSS(int seconds) {
    int hours = (seconds / 3600).truncate();
    seconds = (seconds % 3600).truncate();
    int minutes = (seconds / 60).truncate();

    String hoursStr = (hours).toString().padLeft(2, '0');
    String minutesStr = (minutes).toString().padLeft(2, '0');
    String secondsStr = (seconds % 60).toString().padLeft(2, '0');

    if (hours == 0) {
      return "$minutesStr:$secondsStr";
    }

    return "$hoursStr:$minutesStr:$secondsStr";
  }

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer.cancel();
    super.dispose();
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
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Container(
              child: Text(
                'Washing Machine 01',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(19, 51, 65, 1)),
              ),
            ),
            SizedBox(height: 20),
            Card(
              color: Color.fromRGBO(234, 130, 121, 1),
              child: Container(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Text(
                        'Available',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Add ',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            '$usetokens',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            ' Tokens',
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              height: 140,
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
                              child: Text('$fixtokens Tokens',
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
                  Container(
                    height: 28,
                    width: 230,
                    child: ElevatedButton(
                        onPressed: () {
                          if (fixtokens >= usetokens) {
                            setState(() {
                              fixtokens -= usetokens;
                              usetokens - fixtokens;
                            });
                            historyList.add(History(
                                data: 'Start Washing',
                                data2: '4 Tokens Used',
                                dateTime: now,
                                coloract: Color.fromRGBO(234, 130, 121, 1)));
                            startTimer();
                          }
                        },
                        child: Text('Pay By Wallet',
                            style: TextStyle(fontSize: 16))),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Card(
              color: Color.fromRGBO(234, 130, 121, 1),
              child: Container(
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            formatHHMMSS(_start),
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
