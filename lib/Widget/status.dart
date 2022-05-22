import 'package:flutter/material.dart';

import '../Screen/StatusScreen_6.dart';

class statusbox extends StatelessWidget {
  final String? imagepath;
  final String? present;
  final Color? backgroundcolor;

  const statusbox(
      {Key? key,
      required this.present,
      required this.backgroundcolor,
      required this.imagepath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(height: 45, width: 50, child: Image.asset('${imagepath}')),
        SizedBox(width: 10),
        Container(
          height: 45,
          width: 200,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: backgroundcolor),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StatusSC()));
              },
              child: Text('${present}', style: TextStyle(fontSize: 16))),
        ),
      ],
    );
  }
}
