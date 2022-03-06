import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hearingappv2/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Beta Donations',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyBapp(),
    );
  }

}
