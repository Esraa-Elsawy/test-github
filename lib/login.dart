import 'package:flutter/material.dart';

import 'signup.dart';

class Login extends StatefulWidget {
  static const String id = 'login';

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => new SignUpPage()
      },
      home: new Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
                child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(30.0, 110.0, 0.0, 0.0),
                  child: Image.asset('assets/images/logoonly.png'),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(150.0, 100.0, 0.0, 0.0),
                  child: Text('Read',
                      style: TextStyle(
                          fontSize: 55.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffF5C149))),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(150.0, 145.0, 0.0, 0.0),
                  child: Text('Me',
                      style: TextStyle(
                          fontSize: 55.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffF5C149))),
                ),
                Container(
                    padding:
                        EdgeInsets.only(top: 210.0, left: 38.0, right: 38.0),
                    child: Column(children: <Widget>[
                      TextField(
                          decoration: InputDecoration(
                        labelText: 'EMAIL',
                        labelStyle: TextStyle(
                            //fontSize: 18.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff332D8C)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff332D8C))),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffF5C149))),
                      )),
                    ])),
                Container(
                  padding: EdgeInsets.only(top: 280.0, left: 38.0, right: 38.0),
                  child: Column(
                    children: <Widget>[
                      TextField(
                          decoration: InputDecoration(
                        labelText: 'PASSWORD',
                        labelStyle: TextStyle(
                            //fontSize: 20.0,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Color(0xff332D8C)),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xff332D8C))),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xffF5C149))),
                      )),
                      Container(
                        alignment: Alignment(1.0, 0.0),
                        padding: EdgeInsets.only(top: 15.0, left: 20.0),
                        child: InkWell(
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                                color: Color(0xffF5C149),
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                decoration: TextDecoration.underline),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        height: 40.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          shadowColor: Color(0xff332D8C),
                          color: Color(0xff332D8C),
                          elevation: 7.0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Center(
                              child: Text(
                                'LOGIN',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        height: 40.0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 1.0),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Image.asset('assets/images/facebook.jpg',
                                    height: 35, width: 35),
                              ),
                              SizedBox(width: 10.0),
                              Center(
                                child: Text(
                                  'Log in with facebook',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        height: 40.0,
                        // color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black,
                                  style: BorderStyle.solid,
                                  width: 1.0),
                              borderRadius: BorderRadius.circular(20.0)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Center(
                                child: Image.asset('assets/images/google.png',
                                    height: 30, width: 30),
                              ),
                              SizedBox(width: 10.0),
                              Center(
                                child: Text(
                                  'Log in with Google',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat'),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  padding: EdgeInsets.only(top: 570.0, left: 38.0, right: 38.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'New to Spotify ?',
                        style: TextStyle(fontFamily: 'Montserrat'),
                      ),
                      SizedBox(width: 5.0),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pushNamed(SignUpPage.id);
                        },
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Color(0xffF5C149),
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
