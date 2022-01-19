import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:myapp/API.dart';
import 'package:myapp/home/myHomePage.dart';
import 'package:myapp/login/login.dart';

import 'elecrtriciter/homeElectriciter.dart';
import 'function/showmenu.dart';

//import 'function/showmenu.dart';
Future<void> main() async {
  //HttpOverrides.global = new MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  Future map = Apiroute();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  MyApp();
  //var mape;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   // Map<String, dynamic> map = mape;
    List<WidgetBuilder> liste = <WidgetBuilder>[
      (context) => LoginHome(),
      (context) => MyHomePageState(),
      (context) => HomeElectriciter(),
    ];
    Map<String, dynamic> map = json.decode(
    '{"0":{"router":"/","widget":"LoginHome"},"1":{"router":"home","widget":"MyHomePageState","icon":"home"},"2":{"router":"ele","widget":"HomeElectriciter","icon":"lightbulb"}}');
    print("Show Menu" + ShowMenu(liste, map).toString());
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        routes: ShowMenu(liste, map)
        //home: const LoginViwe(),
        );
  }
}
//{'/': (context) => LoginHome(), 'home': (context) =>HomeElectriciter(),'ele': (context) => HomeElectriciter(),}