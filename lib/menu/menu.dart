// ignore_for_file: file_names, unused_import

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/elecrtriciter/homeElectriciter.dart';
import 'package:myapp/function/showmenu.dart';

Drawer liftmenu(BuildContext context) {
  Map<String, dynamic> map =
      json.decode('{"0":{"router":"/","widget":"LoginHome"},"1":{"router":"home","widget":"MyHomePageState","icon":"home"},"2":{"router":"ele","widget":"HomeElectriciter","icon":"lightbulb"}}');
  return Drawer(
    child:ListView(
      padding: const EdgeInsets.all(2),
      children: <Widget>[
        Container(
          height: 50,
          //color: Colors.amber[600],
          //child: const Center(child: Text('Entry A')),
        ),
    
    //ShowMenuDrawer(context,map),
      Container(
        height: 50,
        //color: Colors.amber[500],
        child: Center(
          child: 
            MaterialButton(
              onPressed: () {
                Navigator.pushNamed(context,"home");
              },
              child: Row( children: [const Text("Home"), const Icon(Icons.home)])
            ),
        ),
      ),
      Container(
      height: 50,
      //color: Colors.amber[100],
      child: Center(
        child:
          MaterialButton(
            onPressed: () {
              Navigator.pushNamed(context,"ele");
            },
            child: Row( children: [const Text("Electriciter"), const Icon(Icons.lightbulb)])
          ),
      )
    )
  ],
)
  );
}
Drawer rightmenu(BuildContext context) {
  return Drawer(
    child: ListView(
  padding: const EdgeInsets.all(8),
  children: <Widget>[
    Container(
      height: 50,
      color: Colors.amber[600],
      child: const Center(child: Text('Entry A')),
    ),
    Container(
      height: 50,
      color: Colors.amber[500],
      child: const Center(child: Text('Entry B')),
    ),
    Container(
      height: 50,
      color: Colors.amber[100],
      child: Column(
      children: [
        MaterialButton(
          onPressed: () {
             Navigator.pushNamed(
                  context,"ele"
                      );
          },
          child: const Icon(Icons.home)
        ),
      ],
    ),
    ),
  ],
)
  );
}