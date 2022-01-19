// ignore_for_file: file_names, must_be_immutable, camel_case_types

import 'package:flutter/material.dart';
import 'package:myapp/API.dart';
import 'package:myapp/app_bar/app_bar.dart';
import 'package:myapp/elecrtriciter/electriciter.dart';
import 'package:myapp/elecrtriciter/homeElectriciter.dart';
import 'package:myapp/login/app_barlogin.dart';
import 'package:myapp/menu/menu.dart';
import 'package:myapp/model/login.dart';

import 'controller.dart';

class LoginHome extends StatelessWidget {
  const LoginHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      //appBar: applogin(context),
      //drawer: liftmenu(context),
      //endDrawer: rightmenu(context),
      body: Login(),
    );
  }
}

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: homeAppBar(context),
      // drawer: liftmenu(context),
      // endDrawer:rightmenu(context),
      body: FutureBuilder(
        future: Apilogin(),
        builder: (
          BuildContext context,
          AsyncSnapshot snapshot,
        ) {
          print(snapshot.connectionState);
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              print(snapshot);
              return const Text('Error 1');
            } else if (snapshot.hasData) {
              print(snapshot.data);
              return LoginView();
            } else {
              return const Text('Empty data');
            }
          } else {
            return Text('State: ${snapshot.connectionState}');
          }
        },
      ),
    );
  }
}

class LoginView extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  Widget build(BuildContext context) {
    //print(ann.fullname);
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your email',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  print(_formKey.currentState);
                  Navigator.pushNamed(context, 'home');
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
