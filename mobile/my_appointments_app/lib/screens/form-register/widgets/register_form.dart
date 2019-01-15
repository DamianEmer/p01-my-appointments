import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  @override
  _RegisterFormState createState() {
    return _RegisterFormState();
  }
}

class _RegisterFormState extends State<RegisterForm> {
  final GlobalKey<FormState> _registerFormKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _registerFormKey,
      child: Column(
        children: <Widget>[
          Container(
              child: Expanded(
            child: Column(
              children: <Widget>[
                _labelTxt(text: "nombre"),
                _inputTxtName(),
                _labelTxt(text: "Apellido"),
                _inputTxtLastName(),
                _labelTxt(text: "Numero de telefono"),
                _inputPhoneNumber(),
                _labelTxt(text: "Email"),
                _inputEmail(),
                _labelTxt(text: "Edad"),
                _inputAge(),
                _labelTxt(text: "Peso (kg)"),
                _inputWeight()
              ],
            ),
          ))
        ],
      ),
    );
  }

  // Widgets

  // Widget para generar las etiquetas
  Padding _labelTxt({String text, Color textColor = Colors.black}) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        '$text',
        style: TextStyle(fontSize: 12.0, color: textColor),
      ),
    );
  }

  // Widgets exclusivamente a la entrada de text
  TextFormField _inputTxtName() {
    return TextFormField(
      decoration: const InputDecoration(
          icon: Icon(Icons.text_fields), hintText: 'Damian Emerson'),
      validator: (value) {
        if (value.isEmpty) {
          return 'Su nombre es obligatorio';
        }
      },
    );
  }

  TextFormField _inputTxtLastName() {
    return TextFormField(
      decoration: const InputDecoration(
          icon: Icon(Icons.text_fields), hintText: 'Zamora'),
      validator: (value) {
        if (value.isEmpty) {
          return 'Su apellido es obligatorio';
        }
      },
    );
  }

  TextFormField _inputPhoneNumber() {
    return TextFormField(
      decoration: const InputDecoration(
          icon: Icon(Icons.phone), hintText: "1234567890"),
      validator: (value) {
        if (value.isEmpty) {
          return 'Numero de telefono obligatorio';
        }
      },
    );
  }

  TextFormField _inputEmail() {
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.email), hintText: "example01@host.com"
      ),
      validator: (value){
        if(value.isEmpty){
          return 'su email es obligatorio';
        }
      },
    );
  }

  TextFormField _inputAge() {
    return TextFormField(
      decoration: const InputDecoration(
        icon: Icon(Icons.info), hintText: "21"
      ),
      validator: (value) {
        if(value.isEmpty){
          return 'Ingrese su edad';
        }
      },
    );
  }

  TextFormField _inputWeight() {
    return TextFormField(
      decoration: InputDecoration(
        icon: Icon(Icons.info), hintText: '61'
      ),
      validator: (value) {
        if(value.isEmpty){
          return 'Ingrese su peso';
        }
      },
    );
  }
}
