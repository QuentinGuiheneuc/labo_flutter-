// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

azerty(String url, Function()? funco) {
  // ignore: unnecessary_new
  Widget buttonCircles = new RawMaterialButton(
    child: Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
    child: Image(image: NetworkImage(url), height: 50, width: 50)),
    shape: const CircleBorder(),
    onPressed: funco,
  );

  return buttonCircles;
}

AppBar homeAppBar(BuildContext context) {
  // final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  // ignore: unnecessary_new
  return AppBar(
    centerTitle: true,
    //backgroundColor: Colors.black12,
    elevation: 1,
    leading: IconButton(
      icon: const Icon(Icons.add),
      onPressed: () {},
    ),
    title: RichText(
      text: const TextSpan(
        children: [
          // TextSpan(
          //   text: "Dashboard",
          //   style: TextStyle(color: Colors.red,fontSize:32),
          // ),
        ],
      ),
    ),
    actions: <Widget>[
      azerty(
        "https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455__340.jpg",
        () {
         ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: const Text('Awesome Snackbar!'),
            action: SnackBarAction(
              label: 'Action',
              onPressed: () {
                // Code to execute.
              },
            ),
          ),
        );
          // return "azery";
        },
      ),
    ],
  );
}

