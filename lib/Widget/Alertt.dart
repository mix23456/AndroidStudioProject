import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../Screen/LoginScreen_1.dart';

showAlertCurrect(BuildContext context) {
  Widget okButton = TextButton(
    child: Text('OK'),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  AlertDialog alert = AlertDialog(
    title: Text('Congrats!'),
    content: Text('3 Tokens added to your wallet'),
    actions: [
      okButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertWrong(BuildContext context) {
  Widget okButton = TextButton(
    child: Text('OK'),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  AlertDialog alert = AlertDialog(
    title: Text('Wrong Code'),
    content: Text('Press Check your code'),
    actions: [
      okButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

showAlertregis(BuildContext context) {
  Widget okButton = TextButton(
    child: Text('OK'),
    onPressed: () {
      Navigator.pushReplacement( context ,
          MaterialPageRoute( builder: (context) => LoginSC() )
      );
    },
  );

  AlertDialog alert = AlertDialog(
    title: Text('Success!'),
    content: Text('Go to Login'),
    actions: [
      okButton,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
