import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard/bottomsheet.dart';
import 'package:flutter_application_1/dashboard/home.dart';
import 'package:flutter_application_1/data/datakampanye.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class DetailKampanye extends StatefulWidget {
  DetailKampanye({super.key, required this.myData});

  final DataKampanye myData;

  @override
  State<DetailKampanye> createState() => _DetailKampanyeState(myData);
}

class _DetailKampanyeState extends State<DetailKampanye> {
  final DataKampanye myData;

  _DetailKampanyeState(this.myData);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(225, 238, 224, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        toolbarHeight: 150,
        flexibleSpace: FlexibleSpaceBar(
          background: Image.asset(
            myData.image,
            fit: BoxFit.fill,
          ),
        ),
        actions: [
          Icon(
            Icons.share,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
          SizedBox(
            width: 30,
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: Padding(
            padding: const EdgeInsets.only(left: 280),
            child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white),
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.red,
                )),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.white,
              width: double.infinity,
              height: 192,
              child: Column(
                children: [
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                    width: 360,
                    child: Text(
                      myData.title,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                    width: 360,
                    child: Text(
                      CurrencyFormat.convertToIdr(myData.total, 0),
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(40, 103, 83, 1)),
                    ),
                    alignment: Alignment.centerLeft,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Container(
                    width: 360,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Terkumpul dari ${CurrencyFormat.convertToIdr(myData.target, 0)}",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text("${myData.time} Hari")
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 360,
                    child: LinearPercentIndicator(
                      width: 360,
                      animation: true,
                      lineHeight: 6,
                      animationDuration: 2500,
                      percent: 0.6,
                      // center: Text("80.0%"),
                      linearStrokeCap: LinearStrokeCap.roundAll,
                      // progressColor: Colors.green,
                      progressColor: 0.6 == 1.0
                          ? Color.fromARGB(255, 0, 166, 255)
                          : Color.fromRGBO(40, 103, 83, 1),
                      barRadius: Radius.circular(5),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    width: 360,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "${myData.totalDonasi} Donasi",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(40, 103, 83, 1)),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 360,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.donut_small),
                        Text(
                          "Rincian Penggunaan Dana",
                          style:
                              TextStyle(color: Color.fromRGBO(40, 103, 83, 1)),
                        ),
                        Icon(Icons.chevron_right)
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 192,
                      color: Colors.white,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 360,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Informasi Donasid",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w500),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: 360,
                            height: 140,
                            decoration: BoxDecoration(
                                border: Border.all(
                              color: Colors.black38,
                            )),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 25, top: 8, bottom: 8),
                                  child: Container(
                                    child: Text(
                                      "Penggalang Dana",
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    alignment: Alignment.centerLeft,
                                  ),
                                ),
                                Container(
                                  width: 320,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: Color.fromRGBO(
                                                244, 208, 150, 1),
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        child:
                                            Image.asset('images/profile.png'),
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        width: 240,
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Teman Keci",
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                                Image.asset('images/star.png')
                                              ],
                                            ),
                                            Text(
                                              "Identitas lembaga terdeteksi",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Icon(Icons.chevron_right)
                                    ],
                                  ),
                                ),
                                Divider(
                                  thickness: 1,
                                  color: Colors.black38,
                                ),
                                Container(
                                  width: 320,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Rencana Penggalangan Dana",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Icon(Icons.chevron_right)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: double.infinity,
                      height: 120,
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: 320,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Cerita",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    "05 September 2022",
                                    style: TextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w300),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 320,
                              height: 84,
                              child: Text(
                                "sLorem ipsum dolor sit amet, consectetur dadipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.  Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.w300),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: double.infinity,
                      height: 300,
                      color: Colors.white,
                      alignment: Alignment.center,
                      child: Container(
                        width: 320,
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Kabar Terbaru",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            Image.asset('images/kabar.png'),
                            Text(
                              "Belum ada kabar terbaru kampanye ini",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w400),
                            ),
                            Container(
                              width: 260,
                              height: 90,
                              color: Color.fromRGBO(10, 10, 10, 0.13),
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Disclaimer: Informasi, opini, dan foto yang ada di halaman kampanye ini adalah milik dan tanggung jawab penggalang dana. Jika ada masalah/kecurigaan silakan. Lapor kepada kami di sini",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w300),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: double.infinity,
                      height: 470,
                      color: Colors.white,
                      alignment: Alignment.topCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 260,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(10, 10, 10, 0.13)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.person_outline,
                                          color: Colors.black45,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Orang Baik",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Text(
                                              "Baru saja",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "Semoga kondisinya lekas membaik, semoga kedua orang tuanya diberikan kekuatan dan kesabaran",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "14 orang",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "mengaminkan doa ini",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.black38,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                          ),
                                          Text("Aamiin")
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.share,
                                            color: Colors.grey,
                                          ),
                                          Text("Bagikan")
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 260,
                            height: 200,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(10, 10, 10, 0.13)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.person_outline,
                                          color: Colors.black45,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Orang Baik",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                            Text(
                                              "2 hari lalu",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "Semoga kondisinya lekas membaik, semoga kedua orang tuanya diberikan kekuatan dan kesabaran",
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "14 orang",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        "mengaminkan doa ini",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    thickness: 1,
                                    color: Colors.black38,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.favorite,
                                            color: Colors.red,
                                          ),
                                          Text("Aamiin")
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.share,
                                            color: Colors.grey,
                                          ),
                                          Text("Bagikan")
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 110,
                            height: 32,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                color: Color.fromRGBO(40, 103, 83, 0.43)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Lihat semua",
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      color: Color.fromRGBO(0, 74, 34, 1)),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_down,
                                  color: Color.fromRGBO(0, 74, 34, 1),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      width: double.infinity,
                      height: 100,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Bantu bagikan kampanye ini",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 100,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(37, 211, 102, 1),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.whatsapp_outlined,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Bagikan",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Container(
                                width: 100,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(66, 103, 178, 1),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.facebook_outlined,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "Bagikan",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(225, 238, 224, 1),
        child: Padding(
            padding: const EdgeInsets.only(
                top: 20.0, bottom: 20, left: 20, right: 20),
            child: InkWell(
              onTap: () => showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return MyBottomSheet();
                  }),
              child: Container(
                width: 300,
                height: 38,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(40, 103, 83, 1),
                ),
                child: Text(
                  "Donasi Sekarang!",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )),
        elevation: 0,
      ),
    );
  }
}
