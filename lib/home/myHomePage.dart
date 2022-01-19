// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:myapp/API.dart';
import 'package:myapp/app_bar/app_bar.dart';
import 'package:myapp/elecrtriciter/homeElectriciter.dart';
import 'package:myapp/login/controller.dart';
import 'package:myapp/menu/menu.dart';
import 'package:myapp/model/login.dart';

import 'home.dart';

class MyHomePageState extends StatelessWidget {
  const MyHomePageState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: homeAppBar(context),
      drawer: liftmenu(context),
      endDrawer:rightmenu(context),
      body: FutureBuilder(
        future: Apilogin(),
        builder: (
          BuildContext context,
          AsyncSnapshot snapshot,
        ){
          print(snapshot.connectionState);
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              print(snapshot);
              return const Text('Error 1');
            } else if (snapshot.hasData) {
              print(snapshot.data);
              return Thome();
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