import 'package:flutter/material.dart';
import 'package:newinstal/Screen/HomeScreen_3.dart';
import 'package:newinstal/Screen/RegisterScreen_2.dart';

class LoginSC extends StatelessWidget {
  LoginSC({Key? key}) : super(key: key);

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        child: SingleChildScrollView(
          reverse: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox( height: 50 ),
              Container(
                  height: 200, width: 280,
                  child: Image.asset('assets/image/logo2fixed.png')
              ),
              Text('Laundry God' ,
                style: TextStyle(
                    fontSize: 40 ,
                    fontWeight: FontWeight.bold ,
                    color: Color.fromRGBO( 19,51,65, 1 )
                ),
              ),
              SizedBox( height: 20 ),
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
                child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      hintText: 'username',
                  ),
                ),
              ),
              SizedBox( height: 10 ),
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
                child: TextField(
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                    hintText: 'password',
                  ),
                ),
              ),
              SizedBox( height: 15 ),
              Container(
                height: 45, width: 300,
                margin: EdgeInsets.all(25),
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.pushReplacement( context ,
                          MaterialPageRoute( builder: (context) => HomeSC() )
                      );
                    },
                    child: Text('Login' , style: TextStyle( fontSize: 16 ))
                ),
              ),
              Container(
                height: 45, width: 300,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.push( context ,
                        MaterialPageRoute( builder: (context) => RegisterSC() )
                      );
                    },
                    child: Text('Register', style: TextStyle( fontSize: 16 ))
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
