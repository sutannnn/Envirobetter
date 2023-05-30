import 'package:flutter/material.dart';
import '../data/datamitra.dart';

class Panduan extends StatefulWidget {
  Panduan({super.key,});

  @override
  State<Panduan> createState() => _PanduanState();
}

class _PanduanState extends State<Panduan> {
  int i = 1;
  Color clr = Color.fromRGBO(244, 208, 150, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(225, 238, 224, 1),
        appBar: AppBar(
          toolbarHeight: 80,
          automaticallyImplyLeading: true,
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('images/bg.png'), fit: BoxFit.fill)
            ),
          ),
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20.0, bottom: 5),
                child: Container(
                  height: 50,
                  width: 50,
                  child: Image.asset("images/panduan2.png"),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(244, 208, 150, 1),
                  ),
                ),
              ),
              Text(
                "Panduan",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
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
                    height: 50,
                    width: 50,
                    child: Center(
                        child: Text(
                      "1",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    )),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: i == 1? Color.fromRGBO(196, 229, 194, 1) : Color.fromRGBO(244, 208, 150, 1),
                    ),
                  ),
                ),
                Container(
                    width: 37,
                    child: Divider(
                      thickness: 5,
                      color: Colors.black54,
                    )),
                InkWell(
                  onTap: () {
                    setState(() {
                      i = 2;

                    });
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    child: Center(
                        child: Text(
                      "2",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    )),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: i == 2? Color.fromRGBO(196, 229, 194, 1) : Color.fromRGBO(244, 208, 150, 1),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15,),
            Container(
                width: 290,
                height: 434,
                child: i == 1
                    ? Image.asset("images/bukupanduan.png")
                    : Image.asset("images/bukupanduan2.png"))
          ],
        ));
  }
}
