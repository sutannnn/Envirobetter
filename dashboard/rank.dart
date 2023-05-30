import 'package:flutter/material.dart';
import '../data/datarank.dart';
import 'home.dart';

class Rank extends StatefulWidget {
  Rank({super.key, required this.myList});

  final List<Widget> myList;

  @override
  State<Rank> createState() => _RankState();
}

class _RankState extends State<Rank> {
  int i = 1;
  final List<DataRank> dataRank = [
    DataRank('Sutan', 22000000, 22),
    DataRank('Elfa', 21000000, 22),
    DataRank('Baik', 20000000, 21),
    DataRank('Baik', 20000000, 21),
    DataRank('Baik', 20000000, 21),
    DataRank('Baik', 20000000, 21),
    DataRank('Baik', 20000000, 21),
    DataRank('Baik', 20000000, 21),
    DataRank('Baik', 20000000, 21),
    DataRank('Baik', 20000000, 21),
  ];
  final List<DataRank> dataDonasi = [
    DataRank('Sutan', 5000000, 100),
    DataRank('Elfa', 4000000, 90),
    DataRank('Baik', 4500000, 80),
    DataRank('Baik', 4200000, 70),
    DataRank('Baik', 4000000, 60),
    DataRank('Baik', 3400000, 55),
    DataRank('Baik', 3300000, 50),
    DataRank('Baik', 3000000, 40),
    DataRank('Baik', 20000000, 37),
    DataRank('Baik', 19000000, 35),
  ];
  final List<Widget> data = [
    Image.asset('images/one.png'),
    Image.asset('images/two.png'),
    Image.asset('images/three.png')
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> myRank = List.generate(dataRank.length, (index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Container(
          width: 315,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            // boxShadow: kElevationToShadow[4]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index < 3
                        ? Colors.white
                        : Color.fromRGBO(244, 208, 150, 1),
                  ),
                  child: index < 3
                      ? data[index]
                      : Text(
                          "${index + 1}",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                ),
              ),
              Container(
                width: 180,
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dataRank[index].name,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      CurrencyFormat.convertToIdr(dataRank[index].jumlah, 0),
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(0, 74, 34, 1),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  "${dataRank[index].total} x Setor",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      );
    });

    final List<Widget> myDonasi = List.generate(dataRank.length, (index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Container(
          width: 315,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
            // boxShadow: kElevationToShadow[4]
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: index < 3
                        ? Colors.white
                        : Color.fromRGBO(244, 208, 150, 1),
                  ),
                  child: index < 3
                      ? data[index]
                      : Text(
                          "${index + 1}",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                ),
              ),
              Container(
                width: 180,
                alignment: Alignment.centerLeft,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dataDonasi[index].name,
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      CurrencyFormat.convertToIdr(dataDonasi[index].jumlah, 0),
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(0, 74, 34, 1),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Text(
                  "${dataDonasi[index].total} x Setor",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      );
    });

    return Scaffold(
        backgroundColor: Color.fromRGBO(225, 238, 224, 1),
        appBar: AppBar(
          toolbarHeight: 180,
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              'images/top.png',
              fit: BoxFit.fill,
            ),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(width: 200,child: Text("Top Member", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),)),
                Container(width: 200,child: Text("Otomatis diranking oleh\nsistem berdasarkan saldo\nterbanyak", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: Colors.black),))
              ],
            ),
          )
        ),
        body: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      i = 1;
                    });
                  },
                  child: Container(
                    height: 37,
                    width: 146,
                    child: Center(
                        child: Text(
                      "Saldo",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    )),
                    decoration: BoxDecoration(
                      boxShadow: [
                        i == 1
                            ? BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 2),
                              )
                            : BoxShadow(
                                color: Colors.white,
                                spreadRadius: 0,
                                blurRadius: 0,
                                offset: Offset(0, 0),
                              )
                      ],
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromRGBO(244, 208, 150, 1),
                    ),
                  ),
                ),
                SizedBox(
                  width: 40,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      i = 2;
                    });
                  },
                  child: Container(
                    height: 37,
                    width: 146,
                    child: Center(
                        child: Text(
                      "Donasi",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    )),
                    decoration: BoxDecoration(
                      boxShadow: [
                        i == 2
                            ? BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: Offset(0, 2),
                              )
                            : BoxShadow(
                                color: Colors.white,
                                spreadRadius: 0,
                                blurRadius: 0,
                                offset: Offset(0, 0),
                              )
                      ],
                      borderRadius: BorderRadius.circular(5),
                      color: Color.fromRGBO(196, 229, 194, 1),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                width: 335,
                alignment: Alignment.topCenter,
                child: SingleChildScrollView(
                    child: Column(children: i == 1 ? myRank : myDonasi)),
              ),
            )
          ],
        ));
  }
}
