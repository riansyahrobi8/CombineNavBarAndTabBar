import 'package:design/mixins/validations.dart';
import 'package:flutter/material.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> with Validations {
  final formKey = GlobalKey<FormState>();
  String name = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Container(
        child: Form(
          key: formKey,
          child: Column(
            children: <Widget>[
              nameField(),
              emailField(),
              passwordField(),
              registerButton()
            ],
          ),
        ),
      ),
    );
  }

  Widget nameField() {
    return TextFormField(
      decoration:
          InputDecoration(labelText: "Full Name", hintText: "Enter Name"),
      validator: validateName,
      onSaved: (String value) {
        name = value;
      },
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration:
          InputDecoration(labelText: "Email", hintText: "email@example.com"),
      validator: validateEmail,
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration:
          InputDecoration(labelText: "Password", hintText: "Enter Password"),
      validator: validatePassword,
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget registerButton() {
    return Container(
      margin: EdgeInsets.only(top: 16.0),
      child: RaisedButton(
        color: Colors.blueAccent,
        onPressed: () {
          if (formKey.currentState.validate()) {
            formKey.currentState.save();
            print("Nama lengkap: $name");
            print("Email: $email");
            print("Password: $password");
          }
        },
        child: Text(
          "Daftar",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
