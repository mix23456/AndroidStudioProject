import 'package:flutter/material.dart';
import 'package:newinstal/Screen/HistoryScreen_5.dart';
import 'package:newinstal/Screen/LoginScreen_1.dart';
import 'package:newinstal/Screen/TopupScreen_4.dart';
import 'package:newinstal/Info/info.dart';
import '../Widget/Alertt.dart';
import 'package:newinstal/Info/History.dart';
import 'StatusScreen_6.dart';

class HomeSC extends StatefulWidget {
  const HomeSC({Key? key}) : super(key: key);

  @override
  State<HomeSC> createState() => _HomeSCState();
}

class _HomeSCState extends State<HomeSC> {
  TextEditingController codeController = TextEditingController();

  DateTime now = DateTime.now();
  info infoClass = info();
  int? tokens;
  String code = 'freetokens';
  String? status01 = 'Available';
  String? status02 = 'In Process';
  String? status03 = 'In Process';
  String? status04 = 'Unavailable';
  Color colorstatus01 = Color.fromRGBO(2, 169, 222, 1);
  Color colorstatus02 = Color.fromRGBO(2, 169, 222, 1);
  Color colorstatus03 = Color.fromRGBO(2, 169, 222, 1);
  Color colorstatus04 = Color.fromRGBO(2, 169, 222, 1);

  @override
  void initState() {
    tokens = infoClass.infoget();
    status01 == 'Unavailable'
        ? colorstatus01 = Color.fromRGBO(181, 181, 181, 1)
        : {};
    status02 == 'Unavailable'
        ? colorstatus02 = Color.fromRGBO(181, 181, 181, 1)
        : {};
    status03 == 'Unavailable'
        ? colorstatus03 = Color.fromRGBO(181, 181, 181, 1)
        : {};
    status04 == 'Unavailable'
        ? colorstatus04 = Color.fromRGBO(181, 181, 181, 1)
        : {};
    status01 == 'In Process'
        ? colorstatus01 = Color.fromRGBO(234, 130, 121, 1)
        : {};
    status02 == 'In Process'
        ? colorstatus02 = Color.fromRGBO(234, 130, 121, 1)
        : {};
    status03 == 'In Process'
        ? colorstatus03 = Color.fromRGBO(234, 130, 121, 1)
        : {};
    status04 == 'In Process'
        ? colorstatus04 = Color.fromRGBO(234, 130, 121, 1)
        : {};
    super.initState();
  }

  @override
  void dispose() {
    codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        backgroundColor: Colors.white,
        centerTitle: true,
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HistorySC()));
                },
                child: Icon(
                  Icons.history,
                  size: 26.0,
                ),
              )),
        ],
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
                SizedBox(height: 40),
                Row(
                  children: [
                    Container(
                        height: 45,
                        width: 50,
                        child: Image.asset('assets/image/logominifixed.png')),
                    SizedBox(width: 10),
                    Container(
                      height: 45,
                      width: 200,
                      child: ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: colorstatus01),
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StatusSC()));
                            });
                          },
                          child: Text('1 - $status01',
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
                        child: Image.asset('assets/image/logominifixed.png')),
                    SizedBox(width: 10),
                    Container(
                      height: 45,
                      width: 200,
                      child: ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: colorstatus02),
                          onPressed: () {},
                          child: Text('2 - $status02',
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
                        child: Image.asset('assets/image/logominifixed.png')),
                    SizedBox(width: 10),
                    Container(
                      height: 45,
                      width: 200,
                      child: ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: colorstatus03),
                          onPressed: () {},
                          child: Text('3 - $status03',
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
                        child: Image.asset('assets/image/logominifixed.png')),
                    SizedBox(width: 10),
                    Container(
                      height: 45,
                      width: 200,
                      child: ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: colorstatus04),
                          onPressed: () {},
                          child: Text('4 - $status04',
                              style: TextStyle(fontSize: 16))),
                    ),
                  ],
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
                                  child: Text('$tokens Tokens',
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
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TopupSC()));
                            },
                            child: Text('Top Up your account',
                                style: TextStyle(fontSize: 16))),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 155,
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                          width: 2, color: Color.fromRGBO(19, 51, 65, 1))),
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
                                child: Image.asset(
                                    'assets/image/redeemlogofixed.png')),
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
                                      contentPadding:
                                          EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                                setState(() {
                                  tokens = infoClass.infoget();
                                });
                              } else
                                showAlertWrong(context);
                              codeController.text = '';
                            },
                            child:
                                Text('Redeem', style: TextStyle(fontSize: 16))),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  height: 28,
                  width: 150,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => LoginSC()));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Logout', style: TextStyle(fontSize: 16)),
                          SizedBox(width: 5),
                          Icon(
                            Icons.logout,
                            size: 20,
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
