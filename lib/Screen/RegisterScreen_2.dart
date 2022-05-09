import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:newinstal/Screen/LoginScreen_1.dart';
import 'package:newinstal/Widget/Alertt.dart';

class RegisterSC extends StatefulWidget {
  const RegisterSC({Key? key}) : super(key: key);

  @override
  State<RegisterSC> createState() => _RegisterSCState();
}

class _RegisterSCState extends State<RegisterSC> {

  final _formKey = GlobalKey<FormState>();

  TextEditingController regisusernameController = TextEditingController();
  TextEditingController regispasswordController = TextEditingController();
  TextEditingController regisphoneController = TextEditingController();

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
      Form(
        key: _formKey,
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox( height: 30 ),
                Row(
                  children: [
                    SizedBox( width: 40 ),
                    Text(
                      'Register',
                      style: TextStyle(
                          fontSize: 40 ,
                          color: Color.fromRGBO( 19,51,65, 1 ),
                          fontWeight: FontWeight.bold
                      ),
                    ),
                  ],
                ),
                SizedBox( height: 30 ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox( width: 35 ),
                      Container(
                          alignment: Alignment.topLeft,
                          child:
                          Text(
                            'Username',
                            style: TextStyle( color: Color.fromRGBO( 19,51,65, 1 ) ),
                          )
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  child: TextFormField(
                    validator: ( value ){
                      if( value == null || value.isEmpty ){
                        return 'Please enter something';
                      }
                      return null;
                    },
                    controller: regisusernameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      hintText: 'username',
                    ),
                  ),
                ),
                SizedBox( height: 15 ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox( width: 35 ),
                      Container(
                          alignment: Alignment.topLeft,
                          child:
                          Text(
                            'Password',
                            style: TextStyle( color: Color.fromRGBO( 19,51,65, 1 ) ),
                          )
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  child: TextFormField(
                    validator: ( value ){
                      if( value == null || value.isEmpty ){
                        return 'Please enter something';
                      }
                      return null;
                    },
                    controller: regispasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      hintText: 'password',
                    ),
                  ),
                ),
                SizedBox( height: 15 ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox( width: 35 ),
                      Container(
                          alignment: Alignment.topLeft,
                          child:
                          Text(
                            'Phone Number',
                            style: TextStyle( color: Color.fromRGBO( 19,51,65, 1 ) ),
                          )
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  child: TextFormField(
                    validator: ( value ){
                      if( value == null || value.isEmpty ){
                        return 'Please enter something';
                      }
                      return null;
                    },
                    controller: regisphoneController,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      hintText: 'Phone Number',
                    ),
                  ),
                ),
                SizedBox( height: 15 ),
                Container(
                  height: 45, width: 300,
                  margin: EdgeInsets.all(25),
                  child: ElevatedButton(
                      onPressed: (){
                        if( _formKey.currentState!.validate()){
                          showAlertregis(context);

                        }
                      },
                      child: Text('Register', style: TextStyle( fontSize: 16 ))
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
