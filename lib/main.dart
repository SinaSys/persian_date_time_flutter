import 'package:flutter/material.dart';
import 'package:persian_date/persian_date.dart';




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


    PersianDate getDate = PersianDate();

    print("Parse Gregorian To Jalali ${getDate.gregorianToJalali("2020-10-18 12:00:00")}");

    print("Now ${getDate.now}"); //1399-07-27 04:45:43 678


    print(getDate.year);
    print(getDate.month);
    print(getDate.day);

    print(getDate.monthname); // نام ماه



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
        title: Text('persian_date package'),
      ),

      body: Container()
    );
  }
}

