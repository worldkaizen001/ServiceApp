import 'package:flutter/material.dart';
import 'package:kaizen_services/Navigation/navigation.dart';
import 'package:kaizen_services/views/about.dart';
import 'package:kaizen_services/views/description.dart';
import 'package:kaizen_services/views/homepage.dart';

import 'helpers/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: kBrown,
      ),
      home: const Navigation(),


    );
  }
}


