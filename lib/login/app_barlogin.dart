
import 'package:flutter/material.dart';

AppBar applogin(BuildContext context) {
  // final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  // ignore: unnecessary_new
  return AppBar(
    centerTitle: true,
    //backgroundColor: Colors.black12,
    elevation: 1,
    // leading: IconButton(
    //   icon: const Icon(Icons.add),
    //   onPressed: () {},
    // ),
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
      // azerty(
      //   "https://cdn.pixabay.com/photo/2021/08/25/20/42/field-6574455__340.jpg",
      //   () {
      //     print("user pressed1");
      //     // return "azery";
      //   },
      // ),
    ],
  );
}
