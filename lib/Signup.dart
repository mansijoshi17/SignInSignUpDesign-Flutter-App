import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new MySignUpPage(),
    );
  }
}

class MySignUpPage extends StatefulWidget {

  @override
  _MySignUpPageState createState() => new _MySignUpPageState();
}

class _MySignUpPageState extends State<MySignUpPage> {

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
            padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),//form
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
                SizedBox(height: 10.0,),
                TextField(
                  decoration: InputDecoration(
                    labelText:  'NICK NAME',
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
                            "SIGNUP",
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
                SizedBox(height: 10.0,),
              ],
            ),
          ),
          SizedBox(height:15.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Already have an account ?",
                style: TextStyle(
                    fontFamily: "Jost"
                ),
              ),
              SizedBox(width: 5.0,),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Text("Login here",
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