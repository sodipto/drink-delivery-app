import 'package:drink_app/pages/homePages/home-page.dart';
import 'package:drink_app/pages/test-page.dart';
import 'package:drink_app/route-provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cold Drink',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.transparent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Open Sans'
      ),
      home: HomePage()
      //initialRoute: "/",
      //onGenerateRoute: RouteProvider.generateRoute,
    );
  }
}
