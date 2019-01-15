import 'package:flutter/material.dart';
import '../../form-register/register_page.dart';

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final GlobalKey<FormState> _formKey = new GlobalKey();
  String _email, _passoword;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            emailInput(),
            passwordInput(),
            btnSubmit()
          ],
        ));
  }

  TextFormField emailInput() {
    return TextFormField(
      decoration: const InputDecoration(
          icon: Icon(Icons.email),
          hintText: 'example_01@host.com',
          labelText: 'Email'),
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter your e-mail';
        }
      },
      onSaved: (input) => _email = input,
    );
  }

   TextFormField passwordInput() {
    return TextFormField(
      decoration: const InputDecoration(
          icon: Icon(Icons.security),
          hintText: '*******',
          labelText: 'Contraseña'),
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter your password';
        }
      },
      onSaved: (input) => _passoword = input,
    );
  }

  RaisedButton btnSubmit() {
    return RaisedButton(
      padding: const EdgeInsets.all(8.0),
      color: Colors.blueAccent,
      textColor: Colors.white,
      onPressed: clickMe,
      child: new Text('Submit'),
    );
  }

// Methods

  void clickMe() {
    if (_formKey.currentState.validate()) {
      Scaffold.of(context)
          .showSnackBar(SnackBar(content: Text('Procesando informacion')));

    }
  }
}
