import 'package:flutter/material.dart';
import 'package:flutter_application_1/dashboard/detailkampanye.dart';
import '../data/datakampanye.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'home.dart';

class Kampanye extends StatefulWidget {
  Kampanye({super.key, required this.myList});

  final List<Widget> myList;

  @override
  State<Kampanye> createState() => _KampanyeState();
}

class _KampanyeState extends State<Kampanye> {
  final List<DataKampanye> myData = List.generate(
      6,
      (index) => DataKampanye("Bantu Arkhan Lawan Kanker", "Teman Kecil", '22',
          2481000, 399, "images/arkhan.png", 5000000));

  @override
  Widget build(BuildContext context) {
    final List<Widget> myKampanye = List.generate(myData.length, (index) {
      double percent = myData[index].total / myData[index].target;
      return Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailKampanye(myData: myData[index],)));
            },
            child: Container(
              width: 305,
              height: 108,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.transparent),
                    child: Image.asset('images/arkhan.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 150,
                          child: Text(
                            myData[index].title,
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.w500),
                          ),
                        ),
                        Container(
                          width: 150,
                          child: Row(
                            children: [
                              Text(
                                myData[index].name,
                                style: TextStyle(
                                    fontSize: 9, fontWeight: FontWeight.w400),
                              ),
                              Image.asset('images/star.png')
                            ],
                          ),
                        ),
                        LinearPercentIndicator(
                          width: 150,
                          animation: true,
                          lineHeight: 6,
                          animationDuration: 2500,
                          percent: percent,
                          // center: Text("80.0%"),
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          // progressColor: Colors.green,
                          progressColor: percent == 1.0
                              ? Color.fromARGB(255, 0, 166, 255)
                              : Color.fromRGBO(40, 103, 83, 1),
                          barRadius: Radius.circular(5),
                        ),
                        Container(
                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Terkumpul",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "Sisa hari",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )),
                        Container(
                            width: 150,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  CurrencyFormat.convertToIdr(
                                      myData[index].total, 0),
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  myData[index].time,
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 300,
            child: Divider(
              thickness: 1,
              color: Colors.black45,
            ),
          )
        ],
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
                  image: AssetImage('images/bg.png'), fit: BoxFit.fill)),
        ),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0, bottom: 5),
              child: Container(
                height: 50,
                width: 50,
                child: Image.asset("images/donate.png"),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromRGBO(244, 208, 150, 1),
                ),
              ),
            ),
            Text(
              "Kampanye",
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
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(height: 40, width: 317),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Cari Kampanye",
                    hintStyle:
                        TextStyle(fontWeight: FontWeight.w300, fontSize: 12),
                    labelStyle: const TextStyle(
                        color: Color.fromRGBO(157, 154, 154, 1), fontSize: 15),
                    focusedBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(214, 214, 214, 1)),
                        borderRadius: BorderRadius.all(Radius.circular(22))),
                    enabledBorder: const OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color.fromRGBO(214, 214, 214, 1)),
                        borderRadius: BorderRadius.all(Radius.circular(22))),
                    prefixIcon: const Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Expanded(
                child: Container(
                  width: 315,
                  height: 490,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: SingleChildScrollView(
                    child: Column(
                      children: myKampanye,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                width: 315,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromRGBO(244, 208, 150, 1)),
                      child: Icon(Icons.add),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
