import 'package:flutter/material.dart';
import 'package:newinstal/Screen/HistoryScreen_5.dart';
import 'package:newinstal/Screen/LoginScreen_1.dart';
import 'package:newinstal/Screen/TopupScreen_4.dart';
import 'package:newinstal/Info/info.dart';
import 'package:newinstal/Widget/redeem.dart';
import 'package:newinstal/Widget/status.dart';
import 'package:newinstal/Widget/wallet.dart';
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

  info infoClass = info();
  int? tokens;
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
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                statusbox(
                    present: '1 - $status01',
                    backgroundcolor: colorstatus01,
                    imagepath: 'assets/image/logominifixed.png'),
                SizedBox(height: 20),
                statusbox(
                    present: '2 - $status02',
                    backgroundcolor: colorstatus02,
                    imagepath: 'assets/image/logominifixed.png'),
                SizedBox(height: 20),
                statusbox(
                    present: '3 - $status03',
                    backgroundcolor: colorstatus03,
                    imagepath: 'assets/image/logominifixed.png'),
                SizedBox(height: 20),
                statusbox(
                    present: '4 - $status04',
                    backgroundcolor: colorstatus04,
                    imagepath: 'assets/image/logominifixed.png'),
                SizedBox(height: 20),
                wallet(),
                SizedBox(height: 20),
                redeem(),
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
