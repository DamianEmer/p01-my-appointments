import 'package:flutter/material.dart';
import '../../common-widgets/appbar.dart';
import './widgets/register_form.dart';

class RegisterPage extends StatefulWidget{

  static String tag = 'register-page';

  @override
  _RegisterPageState createState() => new _RegisterPageState();

}

class _RegisterPageState extends State<RegisterPage>{ 
  
  @override
  Widget build( BuildContext context ){
    return Scaffold(
      appBar: appBar(),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    RegisterForm()
                    ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}

