import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard/detailkampanye.dart';
import 'package:flutter_application_1/dashboard/profile.dart';
import 'package:flutter_application_1/data/datakampanye.dart';
import 'package:flutter_application_1/dashboard/myhome.dart';
import 'package:flutter_application_1/dashboard/rank.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:line_icons/line_icons.dart';
import 'package:intl/intl.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int pressedButtonNo = 0;
  final List<DataKampanye> myData = [
    DataKampanye("Bantu Korban Banjir di Indonesia", "Relawan Nusantara", "36 hari lagi", 3551000, 200, "images/banjir.png", 4000000),
    DataKampanye("Bantu Anak Pejuang Kanker Di Indonesia", "Yayasan Peduli Kanker", "36 hari lagi", 5000000, 200, "images/kanker.png", 5000000),
    DataKampanye("Sedekah Untuk Anabul yang Terlantar", "Seribu Senyum", "36 hari lagi", 6000000, 400, "images/anabul.png", 7000000),
    DataKampanye("Bantu Renovasi Masjid", "Masjid Nusantara", "36 hari lagi", 1567000, 400, "images/masjid.png", 6000000)
  ];

  @override
  Widget build(BuildContext context) {

    final List<Padding> myList = List.generate(myData.length, (index) {
      double percent = myData[index].total/myData[index].target;
      return Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Container(
          width: 148,
          height: 220,
          child: Card(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15))),
            elevation: 5,
            child: InkWell(
              splashColor: Colors.green,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailKampanye(myData: myData[index])));
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        myData[index].image,
                        fit: BoxFit.fill,
                        width: 148,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              width: 80,
                              height: 20,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(5)),
                                color: Colors.white.withOpacity(0.8),
                              ),
                              child: Center(child: Text(myData[index].time, style: TextStyle(fontSize: 10),)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 8),
                    child: Text(myData[index].title),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 8),
                    child: Row(
                      children: [
                        Text(myData[index].name, style: TextStyle(fontSize: 10)),
                        SizedBox(width: 4,),
                        Image.asset("images/star.png")
                      ],
                    ),
                  ),
                  Center(
                    child: new LinearPercentIndicator(
                      width: 135,
                      animation: true,
                      lineHeight: 6,
                      animationDuration: 2500,
                      percent: percent,
                      // center: Text("80.0%"),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      // progressColor: Colors.green,
                      progressColor: percent == 1.0? Color.fromARGB(255, 0, 166, 255) : Color.fromRGBO(40, 103, 83, 1),
                      barRadius: Radius.circular(5),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0,left: 8),
                    child: Text("Terkumpul", style: TextStyle(fontSize: 10),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 8),
                    child: Text(CurrencyFormat.convertToIdr(myData[index].total, 0)),
                  )
                ],
              ),
            ),
          ),
        ),
      );
    });

    final bodys = [
      MyHome2(myList: myList),
      Rank(myList: myList),
      MyProfile()
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
