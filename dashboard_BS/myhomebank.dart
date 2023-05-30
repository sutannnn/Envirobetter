import 'package:flutter/material.dart';
import '../atributs/myrole.dart';
import '../dashboard/mitra.dart';
import '../data/datamitra.dart';

class MyHomeBank2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(225, 238, 224, 1),
      appBar: AppBar(
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/bg.png'), fit: BoxFit.fill)),
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Bank Sampah Putri Mandiri",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "RT 1 RW 2",
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20, bottom: 15),
            child: Icon(Icons.notifications, color: Colors.white,),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomRole(
                  img: "images/home1.png",
                  tx: "Data Member",
                  cls: MyMitra(),
                  clr: Color.fromRGBO(244, 208, 150, 1),
                  w: 145,
                  h: 136,
                  txc: Colors.black,
                  r: 15),
              SizedBox(width: 8,),
              CustomRole(
                  img: "images/home2.png",
                  tx: "Data Sampah",
                  cls: MyMitra(),
                  clr: Color.fromRGBO(244, 208, 150, 1),
                  w: 145,
                  h: 136,
                  txc: Colors.black,
                  r: 15),
            ],
          ),
          SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomRole(
                  img: "images/home3.png",
                  tx: "Setor Sampah",
                  cls: MyMitra(),
                  clr: Color.fromRGBO(244, 208, 150, 1),
                  w: 145,
                  h: 136,
                  txc: Colors.black,
                  r: 15),
              SizedBox(width: 8,),
              CustomRole(
                  img: "images/home4.png",
                  tx: "Tarik Tunai",
                  cls: MyMitra(),
                  clr: Color.fromRGBO(244, 208, 150, 1),
                  w: 145,
                  h: 136,
                  txc: Colors.black,
                  r: 15),
            ],
          ),
          SizedBox(height: 16,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomRole(
                  img: "images/home5.png",
                  tx: "Rekap Data",
                  cls: MyMitra(),
                  clr: Color.fromRGBO(244, 208, 150, 1),
                  w: 145,
                  h: 136,
                  txc: Colors.black,
                  r: 15),
              SizedBox(width: 8,),
              CustomRole(
                  img: "images/home6.png",
                  tx: "Riwayat",
                  cls: MyMitra(),
                  clr: Color.fromRGBO(244, 208, 150, 1),
                  w: 145,
                  h: 136,
                  txc: Colors.black,
                  r: 15),
            ],
          )
        ],
      ),
    );
  }
}
