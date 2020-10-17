
import 'package:agora_flutter_quickstart/src/pages/login_screen.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
         brightness: Brightness.dark,
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 42.0, fontWeight: FontWeight.bold, color: Colors.white),
          headline5: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic),
          headline2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600,color: Colors.white),
          headline3: TextStyle(
              fontSize: 20.0,
             color: Colors.white,
              fontWeight: FontWeight.w500),
          headline4: TextStyle(
              fontSize: 20.0, 
              color: Colors.cyan[200],
              fontWeight: FontWeight.w500),
          bodyText2: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ),
      home: LoginScreen(),
      
    );
  }
}
