import 'package:flutter/material.dart';
import 'package:myapp/app_bar/app_bar.dart';
import 'package:myapp/elecrtriciter/homeElectriciter.dart';
import 'package:myapp/menu/menu.dart';

import 'MyHomePage.dart';
class Thome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      drawer: liftmenu(context),
      endDrawer: rightmenu(context),
      body: Home(),
      );
    }
  }

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    
    //print(ann.fullname);
    return SingleChildScrollView(
      child: Container( 
        child: Column(
          children: [
            Text("Home")
          ],
        ),
        ),
    );
  }
}