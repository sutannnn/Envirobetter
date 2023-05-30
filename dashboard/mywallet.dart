import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/datatransaksi.dart';
import '../atributs/myrole.dart';
import 'home.dart';

class MyWallet extends StatelessWidget {
  MyWallet({super.key,});

  final List<DataTrasnsaksi> myTrans = [
    DataTrasnsaksi("Gelas Bersih 4kg", "Bank Sampah Gending | RT | RW |",
        "2022-11-08", "Rp12.000", "Setor Nabung"),
    DataTrasnsaksi(
        "Donasi", "Relawan Nusantara", "2022-01-01", "10.000", "Donasi"),
    DataTrasnsaksi("Tarik Tunai", "Bank Sampah Gending | RT | RW |",
        "2022-01-03", "20.000", "Tarik Tunai")
  ];

  @override
  Widget build(BuildContext context) {
    Color color = Colors.red;
    final List<Padding> myTrans2 = List.generate(myTrans.length, (index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Card(
          elevation: 5,
          shadowColor: Colors.black,
          color: Color.fromRGBO(196, 229, 194, 1),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: InkWell(
            splashColor: Color.fromRGBO(198, 206, 214, 1),
            onTap: () {
              debugPrint('Card tapped.');
            },
            child: SizedBox(
              height: 80,
              width: 300,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          myTrans[index].title,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          myTrans[index].name,
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w300),
                        ),
                        Text(
                          myTrans[index].time,
                          style: TextStyle(
                              fontSize: 10, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          myTrans[index].total,
                          style: TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w400),
                        ),
                        Text(
                          myTrans[index].category,
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w300,
                              color: myTrans[index].category == "Setor Nabung"? const Color.fromRGBO(0, 74, 34, 1) : Colors.red),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
    });

    return Scaffold(
      backgroundColor: Color.fromRGBO(225, 238, 224, 1),
      body: setBody(myTrans, myTrans2),
    );
    
  }
}

Widget setBody(myTrans, myTrans2){
    return Stack(children: <Widget>[
      // Background with gradient
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/bg.png'), fit: BoxFit.fill),),
        // height: MediaQuery.of(context).size.height * 0.3
        height: 180,
      ),
      //Above card
      Padding(
        padding: const EdgeInsets.only(top: 130),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  elevation: 5,
                  shadowColor: Colors.black,
                  color: Colors.white,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: InkWell(
                    splashColor: Color.fromRGBO(198, 206, 214, 1),
                    onTap: () {
                      debugPrint('Card tapped.');
                    },
                    child: SizedBox(
                      height: 136,
                      width: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Aranavulia",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text("Id member: 0123456789",
                                      style: TextStyle(
                                          fontSize: 11,
                                          fontWeight: FontWeight.w300))
                                ],
                              ),
                              Container(
                                  height: 52,
                                  width: 52,
                                  child: Image.asset("images/ev.png"))
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sampah",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "30.5 kg",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Text(
                                    "Saldo",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "Rp60.000",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.history),
                      Text(
                        "Riwayat transaksi",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Column(children: myTrans2),
              ],
            ),
          ),
        ),
      ),
      // Positioned to take only AppBar size
      Positioned(
        top: 0.0,
        left: 0.0,
        right: 0.0,
        child: AppBar(
          // Add AppBar here only
          automaticallyImplyLeading: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0, bottom: 5),
                child: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset("images/dompet.png"),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(244, 208, 150, 1),
                  ),
                ),
              ),
              Text(
                "Dompet Saya",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    ]);
}