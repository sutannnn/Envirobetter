import 'package:flutter/material.dart';
import 'package:flutter_application_1/atributs/mybutton.dart';
import 'package:flutter_application_1/data/datadonasi.dart';
import 'package:line_icons/line_icon.dart';

class MyDonasi extends StatelessWidget {
  MyDonasi({super.key,});

  final List<int> myWeek = [2, 3, 4, 5, 6, 7, 8];
  final List<bool> myWeekBool = [true, true, true, false, false, false, false];
  final List<DataDonasi> myDonasi = [
    DataDonasi(
        "images/imgdonasi.png",
        "Bantu ibu saya untuk operasi pendarahan",
        "1 Januari 2023",
        "Rp10.000"),
    DataDonasi("images/imgdonasi2.png", "Perjuangan ibu rawat anak",
        "2 Januari 2023", "Rp10.000")
  ];

  @override
  Widget build(BuildContext context) {
    final List<Widget> myStackWeek = List.generate(myWeek.length, (index) {
      return Container(
        width: 50,
        height: 50,
        child: Stack(children: [
          myWeekBool[index] == true
              ? Container(
                  width: 50,
                  height: 50,
                  child: Icon(Icons.favorite,
                      size: 40, color: Color.fromRGBO(209, 121, 112, 1)))
              : Container(width: 50, height: 50),
          Center(
            child: Text("${myWeek[index]}"),
          )
        ]),
      );
    });

    final List<Widget> myDonasi2 = List.generate(myDonasi.length, (index) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                height: 50,
                width: 50,
                child: Image.asset(
                  myDonasi[index].img,
                  fit: BoxFit.fill,
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 152,
                  child: Text(
                    myDonasi[index].title,
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                  ),
                ),
                Text(
                  "${myDonasi[index].date} - ${myDonasi[index].total}",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.w300),
                ),
              ],
            ),
            MyButton(
                tx: "Berhasil",
                fs: 12,
                txc: Color.fromRGBO(0, 74, 34, 1),
                elc: Color.fromRGBO(196, 229, 194, 1),
                minSz: Size(90, 26),
                cl: MyDonasi())
          ],
        ),
      );
    });

    return Scaffold(
      backgroundColor: Color.fromRGBO(225, 238, 224, 1),
      body: setBody(context, myStackWeek),
      bottomNavigationBar: Container(
        height: 185,
        color: Color.fromRGBO(195, 229, 194, 1),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Riwayat Donasi",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Selengkapnya",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(0, 74, 34, 1)),
                      ))
                ],
              ),
            ),
            Column(
              children: myDonasi2,
            )
          ],
        ),
      ),
    );
  }
}

Widget setBody(context, myStackWeek) {
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 17.0, left: 17, right: 17),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Elfanisa Lukitasari",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                  "Berbagi kebaikan di Envirobetter sejak 07 Januari 2022",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w300))
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 1,
                          color: Color.fromRGBO(10, 10, 10, 0.5),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              right: 17, left: 14, bottom: 17.0),
                          child: Row(
                            children: [
                              Image.asset("images/donate.png"),
                              Text(
                                "25X ",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w600),
                              ),
                              Text("Berdonasi", style: TextStyle(fontSize: 12))
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
              Stack(children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "images/wave.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset("images/champ.png"),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "3 hari",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                            Container(
                                width: 76,
                                child: Text(
                                  "rekor donasimu",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ))
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset("images/love.png"),
                        Container(
                            width: 76,
                            child: Text(
                              "Mulai lagi kebiasaan donasimu",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ))
                      ],
                    ),
                  ],
                ),
              ]),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Bangun Kebiasaan Baikmu",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Selengkapnya",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(0, 74, 34, 1)),
                      ))
                ],
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: myStackWeek),
              Padding(
                padding: const EdgeInsets.only(
                    top: 8.0, bottom: 8, left: 15, right: 15),
                child: Divider(
                  thickness: 2,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("images/calender.png"),
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Donasi tiap hari tanpa bolong",
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w500),
                          ),
                          Container(
                              width: 204,
                              child: Text(
                                  "Coba Donasi Otomatis agar tidak lupa donasi setiap hari",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300))),
                          Row(
                            children: [
                              Text(
                                "Aktifkan donasi otomatis",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(0, 74, 34, 1)),
                              ),
                              Icon(Icons.keyboard_arrow_right)
                            ],
                          )
                        ])
                  ],
                ),
              )
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
                child: Image.asset("images/ev.png"),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(244, 208, 150, 1),
                ),
              ),
            ),
            Text(
              "Donasi Saya",
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
