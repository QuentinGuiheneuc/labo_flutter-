// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myapp/app_bar/app_bar.dart';
import 'package:myapp/menu/menu.dart';

import 'electriciter.dart';

class HomeElectriciter extends StatelessWidget {
  const HomeElectriciter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      drawer: liftmenu(context),
      endDrawer: rightmenu(context),
      body: Electriciter(),
      );
    }
  }