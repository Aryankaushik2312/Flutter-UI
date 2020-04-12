import 'package:basic_screens/pages/phone_auth.dart';
import 'package:basic_screens/pages/signup.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: ImageIcon(
                    AssetImage("assets/images/logo transparent.png"),
                    color: Colors.blue,
                    size: 150.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 25.0, right: 25.0),
                    child: Expanded(
                      child: TextField(
                        obscureText: false,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Your E-Mail',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 25.0, right: 25.0),
                    child: Expanded(
                      child: TextField(
                        obscureText: true,
                        textAlign: TextAlign.left,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Enter Your Password',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: FlatButton(
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlueAccent,
                          fontSize: 15.0,
                        ),
                        textAlign: TextAlign.end,
                      ),
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpPage())),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: FlatButton(
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.lightBlueAccent,
                          fontSize: 15.0,
                        ),
                        textAlign: TextAlign.end,
                      ),
                      onPressed: () => {},
                    ),
                  ),
                ],
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin:
                    const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
                alignment: Alignment.center,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: Colors.lightBlueAccent,
                        onPressed: () => {},
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 20.0,
                            horizontal: 20.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "LOGIN",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin:
                    const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
                alignment: Alignment.center,
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(8.0),
                        decoration:
                            BoxDecoration(border: Border.all(width: 0.25)),
                      ),
                    ),
                    Text(
                      "OR CONNECT WITH",
                      style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.all(8.0),
                        decoration:
                            BoxDecoration(border: Border.all(width: 0.25)),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin:
                    const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(right: 8.0),
                        alignment: Alignment.center,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                color: Color(0Xff3B5998),
                                onPressed: () {
                                  print("R");
                                },
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(
                                        child: FlatButton(
                                          onPressed: () => {},
                                          padding: EdgeInsets.only(
                                            top: 20.0,
                                            bottom: 20.0,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Icon(
                                                const IconData(0xea90,
                                                    fontFamily: 'icomoon'),
                                                color: Colors.white,
                                                size: 15.0,
                                              ),
                                              Text(
                                                "FACEBOOK",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(left: 8.0),
                        alignment: Alignment.center,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              child: FlatButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                color: Color(0Xffdb3236),
                                onPressed: () => {},
                                child: Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(
                                        child: FlatButton(
                                          onPressed: () => {},
                                          padding: EdgeInsets.only(
                                            top: 20.0,
                                            bottom: 20.0,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Icon(
                                                const IconData(0xea88,
                                                    fontFamily: 'icomoon'),
                                                color: Colors.white,
                                                size: 15.0,
                                              ),
                                              Text(
                                                "GOOGLE",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              PhoneLogin()
            ],
          ),
        ),
      ),
    );
  }
}
