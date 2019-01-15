import 'package:flutter/material.dart';
import './widgets/email-password.dart';
import '../../common-widgets/appbar.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    // Ver que puede retornar aqqui (scaffold o materialApp)
    return Scaffold(
        appBar: appBar(),
        body: new Container(
          child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[ 
                  Expanded(
                    child: MyCustomForm(),
                  )
              ],
            ),
          ),
        ));
  }
}
