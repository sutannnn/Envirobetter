import 'package:flutter/material.dart';
import '../data/datamitra.dart';

class HargaSampah extends StatelessWidget {
  HargaSampah({super.key});

  final List<String> myData = [
    "images/1.png",
    "images/2.png",
    "images/3.png",
    "images/4.png",
    "images/5.png"
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> myData2 = List.generate(myData.length, (index) {
      return Container(
        width: 55,
        height: 55,
        decoration: BoxDecoration(
            color: Color.fromRGBO(244, 208, 150, 1),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Center(
          child: Image.asset(myData[index]),
        ),
      );
    });

    return Scaffold(
      backgroundColor: Color.fromRGBO(225, 238, 224, 1),
      appBar: AppBar(
        toolbarHeight: 80,
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/bg.png'), fit: BoxFit.fill),
          ),
        ),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0, bottom: 5),
              child: Container(
                height: 50,
                width: 50,
                child: Image.asset("images/sampah2.png"),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(244, 208, 150, 1),
                ),
              ),
            ),
            Text(
              "Pantau Harga Terkini",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PreferredSize(
                preferredSize: Size.fromHeight(110),
                child: Container(
                  width: 300,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: myData2),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15, bottom: 10),
                        child: Container(
                          width: 145,
                          height: 37,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: Color.fromRGBO(196, 229, 194, 1)),
                          child: Center(
                            child: Text("Gelas Bersih/kg"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, bottom: 10),
                        child: Container(
                          width: 145,
                          height: 37,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: Color.fromRGBO(196, 229, 194, 1)),
                          child: Center(
                            child: Text("Botol Bersih/kg"),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        children: [
                          Container(
                              width: 145,
                              height: 135,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Colors.transparent),
                              child: Image.asset(
                                "images/gelasbersih.png",
                                fit: BoxFit.fill,
                              )),
                          Container(
                            color: Colors.transparent,
                            width: 155,
                            height: 150,
                          ),
                          Positioned(
                            bottom: 1,
                            right: 1,
                            child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(244, 208, 150, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text("Rp"), Text("4500")],
                                )),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                              width: 145,
                              height: 135,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Colors.transparent),
                              child: Image.asset(
                                "images/botolbersih.png",
                                fit: BoxFit.fill,
                              )),
                          Container(
                            color: Colors.transparent,
                            width: 155,
                            height: 150,
                          ),
                          Positioned(
                            bottom: 1,
                            right: 1,
                            child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(244, 208, 150, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text("Rp"), Text("1000")],
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15, bottom: 10),
                        child: Container(
                          width: 145,
                          height: 37,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: Color.fromRGBO(196, 229, 194, 1)),
                          child: Center(
                            child: Text("Emberan/kg"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15, bottom: 10),
                        child: Container(
                          width: 145,
                          height: 37,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                              color: Color.fromRGBO(196, 229, 194, 1)),
                          child: Center(
                            child: Text("Campur/kg"),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Stack(
                        children: [
                          Container(
                              width: 145,
                              height: 135,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Colors.transparent),
                              child: Image.asset(
                                "images/ember.png",
                                fit: BoxFit.fill,
                              )),
                          Container(
                            color: Colors.transparent,
                            width: 155,
                            height: 150,
                          ),
                          Positioned(
                            bottom: 1,
                            right: 1,
                            child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(244, 208, 150, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text("Rp"), Text("1500")],
                                )),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                              width: 145,
                              height: 135,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  color: Colors.transparent),
                              child: Image.asset(
                                "images/campur.png",
                                fit: BoxFit.fill,
                              )),
                          Container(
                            color: Colors.transparent,
                            width: 155,
                            height: 150,
                          ),
                          Positioned(
                            bottom: 1,
                            right: 1,
                            child: Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(244, 208, 150, 1),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(100))),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text("Rp"), Text("600")],
                                )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
