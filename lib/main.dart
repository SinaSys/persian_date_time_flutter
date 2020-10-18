import 'package:flutter/material.dart';
import 'package:persian/persian.dart';


import 'constants.dart';

void main() {
  runApp(MyApp());
}

class  MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void convertDateTime(){

    DateTime myDate = DateTime.now();
    PersianDate myPersianDate = myDate.toPersian();
    print(myPersianDate);   // ۱۳۹۹/۰۷/۲۷   print in persian


    print(myPersianDate.year);  //1399    print in english
    print(myPersianDate.month); //7       print in english
    print(myPersianDate.day);   //27      print in english


    var number = "1234F";

    print(number.withPersianNumbers()); // ۱۲۳۴F //numbers in persian and 'F' print itself
    

    PersianDate persianDate = DateTime(2020,10,18,12,0,0).toPersian();
    print("date is is $persianDate");   //۱۳۹۹/۰۷/۲۷

    
  }

  @override
  void initState() {
    convertDateTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('persian package (mkfard.ir)'),
      ),

      body: Container()
    );
  }
}

