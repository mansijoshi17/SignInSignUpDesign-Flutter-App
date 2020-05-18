import 'package:flutter/material.dart';

import 'Signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     routes: <String, WidgetBuilder>{
       '/signup': (BuildContext context) => new MySignUpPage(),
      },
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 30.0, 0.0, 0.0),
                  child: Text(
                    "Hello",
                    style: TextStyle(fontSize: 60.0,fontWeight: FontWeight.bold, fontFamily: 'Jost'),
                  )
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 95.0, 0.0, 0.0),
                  child: Text(
                    "There",
                    style: TextStyle(fontSize: 60.0,fontWeight: FontWeight.bold, fontFamily: 'Jost'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(200.0, 110.0, 0.0, 0.0),
                  child: Text(
                    ".",
                    style: TextStyle(fontSize: 60.0,fontWeight: FontWeight.bold,color: Colors.green),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
            child: Column(
              children: <Widget>[
                TextField(
                  decoration: InputDecoration(
                    labelText:  'EMAIL',
                    labelStyle: TextStyle(
                      fontFamily: 'Jost',
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green)
                    ),
                    focusedErrorBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.red)
                    )
                  ),
                ),
                SizedBox(height: 20.0,),
                TextField(
                  decoration: InputDecoration(
                      labelText:  'PASSWORD',
                      labelStyle: TextStyle(
                          fontFamily: 'Jost',
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.green)
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)
                      ),
                  ),
                  obscureText: true,
                ),
                Container(
                  alignment: Alignment(1.0, 0.0),
                  padding: EdgeInsets.only(top : 15.0, left:  20.0),
                  child: Text("Forgot Password",style: TextStyle(
                    fontFamily: 'Jost',
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                    decoration: TextDecoration.underline
                  ),),
                ),
                SizedBox(height: 40.0,),
                Center(
                  child: Container(
                    height: 40.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.green,
                      elevation: 7.0,
                      shadowColor: Colors.greenAccent,
                      child: GestureDetector(
                        onTap: (){},
                        child: Center(
                          child: Text(
                            "LOGIN",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Jost'
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0,),
                Container(
                  height: 40.0,
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                        style: BorderStyle.solid,
                        width: 1.0,
                      ),
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: ImageIcon(AssetImage('assets/google.png')),
                          heightFactor: 20.0,
                        ),
                        SizedBox(width: 10.0,),
                        Center(
                          child: Text(
                            'Login with Google',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: "Jost"
                            ),
                          ) ,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height:15.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "New to Spotify ?",
                style: TextStyle(
                   fontFamily: "Jost"
                ),
              ),
              SizedBox(width: 5.0,),
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed('/signup');
                },
                child: Text("Register",
                style: TextStyle(
                  color: Colors.green,
                  fontFamily: "Jost",
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),),
              )
            ],
          )
        ],
      ),
    );
  }
}