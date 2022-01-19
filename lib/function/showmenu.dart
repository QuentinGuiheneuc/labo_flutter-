// ignore_for_file: non_constant_identifier_names

import 'dart:io';

import 'package:flutter/material.dart';

class Nav {
  final List<Widget> WidgetList;
  final Map<dynamic, dynamic> MenuMap;
  Nav(this.WidgetList, this.MenuMap);
}

ShowMenu(List<WidgetBuilder> listaWidget, Map<dynamic, dynamic> menuMap) {
  var menu = <String, WidgetBuilder>{};
  for (var i = 0; i < menuMap.length; i++) {
    String index = i.toString();
    if (menuMap[index] != "") {
      String router = menuMap[index]['router'];
      String widget = menuMap[index]['widget'];
      for (var j = 0; j < listaWidget.length; j++) {
        String namewidget = listaWidget[j].toString();
        var widgetsplit = namewidget.split('=>');
        var widgetname = widgetsplit[1].replaceAll(" ", "");
        print(widgetname + " " + widget);
        if (widget == widgetname) {
          menu[router] = listaWidget[j] as WidgetBuilder;
        }
      }
    } else {
      continue;
    }
  }
  return menu;
}

ShowMenuDrawer(BuildContext context, Map<dynamic, dynamic> menuMap) {
  var menu = <Container>[] as List;
  for (var i = 0; i < menuMap.length; i++) {
    String index = i.toString();
    if (menuMap[index] != "") {
      String router = menuMap[index]['router'];
      String widget = menuMap[index]['widget'];
      // menu.add(
      //   Container(
      //   height: 50,
      //   //color: Colors.amber[500],
      //   child: Center(
      //     child: 
      //       MaterialButton(
      //         onPressed: () {
      //           Navigator.pushNamed(context,menuMap[index]['widget']);
      //         },
      //         child: Row( children: [Text(widget)])
      //       ),
      //   ),
      //   )
      // )
    } else {
      continue;
    }
  }
  return menu;
}
//, const Icon(Icons.menuMap[index]['icon'])
azerty(String url, Function()? funco) {
  // ignore: unnecessary_new
  Widget buttonCircles = new RawMaterialButton(
    child: new Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Image(image: NetworkImage(url), height: 50, width: 50)),
    shape: CircleBorder(),
    onPressed: funco,
  );

  return buttonCircles;
}
