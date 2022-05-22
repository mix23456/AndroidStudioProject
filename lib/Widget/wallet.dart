import 'package:flutter/material.dart';

import '../Screen/TopupScreen_4.dart';

class wallet extends StatefulWidget {
  final int? tokens;
  const wallet({Key? key, required this.tokens}) : super(key: key);

  @override
  State<wallet> createState() => _walletState();
}

class _walletState extends State<wallet> {
  @override
  Widget build(BuildContext context) {
    wallet wallettokens = wallet(
      tokens: 0,
    );
    return Container(
      height: 140,
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 2, color: Color.fromRGBO(19, 51, 65, 1))),
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
                    child: Image.asset('assets/image/walletlogofixed.png')),
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
                      child: Text('${wallettokens.tokens} Tokens',
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => TopupSC()));
                },
                child: Text('Top Up your account',
                    style: TextStyle(fontSize: 16))),
          ),
        ],
      ),
    );
  }
}
