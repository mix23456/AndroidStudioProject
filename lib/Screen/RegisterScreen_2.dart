import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:newinstal/Screen/LoginScreen_1.dart';
import 'package:newinstal/Widget/Alertt.dart';
import 'package:newinstal/Info/userprofile.dart';

class RegisterSC extends StatefulWidget {
  const RegisterSC({Key? key}) : super(key: key);

  @override
  State<RegisterSC> createState() => _RegisterSCState();
}

class _RegisterSCState extends State<RegisterSC> {
  final _formKey = GlobalKey<FormState>();
  userprofile _user = userprofile();

  CollectionReference _userprofile =
      FirebaseFirestore.instance.collection('userprofile');

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
      body: Form(
        key: _formKey,
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                Row(
                  children: [
                    SizedBox(width: 40),
                    Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 40,
                          color: Color.fromRGBO(19, 51, 65, 1),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(width: 35),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Username',
                            style:
                                TextStyle(color: Color.fromRGBO(19, 51, 65, 1)),
                          )),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter something';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      hintText: 'username',
                    ),
                    onSaved: (String? regisusername) {
                      _user.username = regisusername;
                    },
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(width: 35),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Password',
                            style:
                                TextStyle(color: Color.fromRGBO(19, 51, 65, 1)),
                          )),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter something';
                      }
                      return null;
                    },
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      hintText: 'password',
                    ),
                    onSaved: (String? regispassword) {
                      _user.password = regispassword;
                    },
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(width: 35),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Phone Number',
                            style:
                                TextStyle(color: Color.fromRGBO(19, 51, 65, 1)),
                          )),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter something';
                      }
                      return null;
                    },
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      hintText: 'Phone Number',
                    ),
                    onSaved: (String? regisphone) {
                      _user.phone = regisphone;
                    },
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 45,
                  width: 300,
                  margin: EdgeInsets.all(25),
                  child: ElevatedButton(
                      onPressed: () async {
                        if (_formKey.currentState!.validate()) {
                          showAlertregis(context);
                          _formKey.currentState?.save();
                          await _userprofile.add({
                            'Username': _user.username,
                            'Password': _user.password,
                            'Phone': _user.phone
                          });
                          _formKey.currentState?.reset();
                        }
                      },
                      child: Text('Register', style: TextStyle(fontSize: 16))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
