import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard/profile.dart';
import 'package:flutter_application_1/dashboard_BS/myhomebank.dart';
import 'package:intl/intl.dart';

class MyHomeBank extends StatefulWidget {
  const MyHomeBank({super.key});

  @override
  State<MyHomeBank> createState() => _MyHomeBankState();
}

class _MyHomeBankState extends State<MyHomeBank> {
  int pressedButtonNo = 0;

  @override
  Widget build(BuildContext context) {

    final bodys = [
      MyHomeBank2(),
      Text('Rank'),
      Text("Profile")
    ];

    return Scaffold(
      backgroundColor: Color.fromRGBO(225, 238, 224, 1),
      body: bodys[pressedButtonNo],
      bottomNavigationBar: Container(
        height: 100,
        color: Color.fromRGBO(225, 238, 224, 1),
        child: CurvedNavigationBar(
          color: Color.fromRGBO(244, 208, 150, 1),
          backgroundColor: Colors.transparent,
          height: 60,
          items: <Widget>[
            Container(
              height: 50,
              child: Column(
                children: [
                  Icon(Icons.home,
                      size: 25,
                      color: (pressedButtonNo == 0)
                          ? Color.fromRGBO(0, 74, 34, 1)
                          : Color.fromRGBO(10, 10, 10, 0.5)),
                  Text("Home")
                ],
              ),
            ),
            Container(
              height: 50,
              child: Column(
                children: [
                  Image.asset('images/rank.png',
                      color: (pressedButtonNo == 1)
                          ? Color.fromRGBO(0, 74, 34, 1)
                          : Color.fromRGBO(10, 10, 10, 0.5)),
                  Text(
                    "Rank",
                    style: TextStyle(fontSize: 13),
                  )
                ],
              ),
            ),
            Container(
              height: 50,
              child: Column(
                children: [
                  Icon(
                    Icons.person,
                    color: (pressedButtonNo == 2)
                        ? Color.fromRGBO(0, 74, 34, 1)
                        : Color.fromRGBO(10, 10, 10, 0.5),
                  ),
                  Text("Profile")
                ],
              ),
            ),
          ],
          onTap: (index) {
            setState(() {
              pressedButtonNo = index;
            });
          },
        ),
      ),
    );
  }
}

class CurrencyFormat {
  static String convertToIdr(dynamic number, int decimalDigit) {
    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: 'id',
      symbol: 'Rp ',
      decimalDigits: decimalDigit,
    );
    return currencyFormatter.format(number);
  }
}
