import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard/hargasampah.dart';
import 'package:flutter_application_1/dashboard/kampanye.dart';
import 'package:flutter_application_1/dashboard/mitra.dart';
import 'package:flutter_application_1/dashboard/mydonasi.dart';
import 'package:flutter_application_1/dashboard/mywallet.dart';
import 'package:flutter_application_1/dashboard/panduan.dart';
import '../atributs/myrole.dart';
import 'home.dart';

class MyHome2 extends StatelessWidget {
  const MyHome2({super.key, required this.myList});

  final List<Widget> myList;

  @override
  Widget build(BuildContext context) {
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
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyWallet()));
                    },
                    child: SizedBox(
                      height: 136,
                      width: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Saldo Anda",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text("Rp300.000",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600))
                                ],
                              ),
                              Image.asset("images/ev.png")
                            ],
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Total 20 kali setoran"),
                              Icon(Icons.chevron_right)
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
                Card(
                  elevation: 5,
                  shadowColor: Colors.black,
                  color: Color.fromRGBO(196, 229, 194, 1),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: InkWell(
                    splashColor: Color.fromRGBO(198, 206, 214, 1),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contex) => MyDonasi()));
                    },
                    child: SizedBox(
                      height: 136,
                      width: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Poin Anda",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text("50",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600))
                                ],
                              ),
                              Image.asset("images/reward.png")
                            ],
                          ),
                          Divider(
                            thickness: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                    "25 donasi mu telah\nmembantu banyak orang"),
                                Icon(Icons.chevron_right)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomRole(
                        img: "images/mitra.png",
                        tx: "Mitra",
                        cls: MyMitra(),
                        clr: Color.fromRGBO(244, 208, 150, 1),
                        w: 145,
                        h: 136,
                        txc: Colors.black,
                        r: 15),
                    CustomRole(
                      img: "images/sampah.png",
                      tx: "Harga Sampah",
                      cls: HargaSampah(),
                      clr: Color.fromRGBO(244, 208, 150, 1),
                      w: 145,
                      h: 136,
                      txc: Colors.black,
                      r: 15,
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Card(
                  elevation: 5,
                  shadowColor: Colors.black,
                  color: Color.fromRGBO(196, 229, 194, 1),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: InkWell(
                    splashColor: Color.fromRGBO(198, 206, 214, 1),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Panduan()));
                    },
                    child: SizedBox(
                        height: 55,
                        width: 300,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("images/panduan.png"),
                            Text("Panduan penukaran\nsampah & donasi"),
                            Icon(Icons.chevron_right)
                          ],
                        )),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Kampanye Envirobetter",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Kampanye(myList: myList)));
                        },
                        child: const Text("Lainnya",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(0, 74, 34, 1),
                                fontSize: 13)))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    width: 300,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        Row(
                          children: myList,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            Kampanye(myList: myList)));
                              },
                              child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100)),
                                    border: Border.all(
                                        color: Color.fromRGBO(40, 103, 83, 1))),
                                child: Icon(
                                  Icons.chevron_right_sharp,
                                  color: Color.fromRGBO(40, 103, 83, 1),
                                ),
                              ),
                            ),
                            Text(
                              "Lihat Semua",
                              style: TextStyle(
                                  color: Color.fromRGBO(40, 103, 83, 1)),
                            )
                          ],
                        ),
                      ]),
                    ),
                  ),
                ),
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
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.black,
                    Color.fromRGBO(196, 229, 194, 1)
                  ]),
            ),
          ),
          centerTitle: true,
          title: Row(
            children: [
              SizedBox(
                width: 15,
              ),
              Container(
                height: 50,
                width: 50,
                child: Image.asset("images/profile.png"),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(244, 208, 150, 1),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "Good Morning  ",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      Icon(
                        Icons.wb_sunny,
                        color: Colors.yellow,
                        size: 15,
                      )
                    ],
                  ),
                  Text(
                    "Aranavulia",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: InkWell(
                onTap: (() {}),
                child: Image.asset('images/notif.png'),
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
