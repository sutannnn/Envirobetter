import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/dashboard/pin.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'home.dart';

class MyBottomSheet2 extends StatefulWidget {
  const MyBottomSheet2({
    super.key,
    required this.donasi,
  });
  final int donasi;
  @override
  State<MyBottomSheet2> createState() => _MyBottomSheet2State(donasi);
}

class _MyBottomSheet2State extends State<MyBottomSheet2> {
  bool positive = false;
  final int donasi;

  _MyBottomSheet2State(this.donasi);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF737373),
      child: Container(
        width: double.infinity,
        height: 470,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            color: Colors.white),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              width: 40,
              height: 5,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.grey),
            ),
            Text(
              "Nominal Donasi",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            Container(
              width: 285,
              height: 50,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromRGBO(0, 0, 0, 0.2),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  CurrencyFormat.convertToIdr(donasi, 0),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Container(
                width: 285,
                alignment: Alignment.center,
                child: Divider(
                  thickness: 1,
                  color: Color.fromRGBO(10, 10, 10, 0.5),
                )),
            Container(
              width: 285,
              child: Row(
                children: [
                  Image.asset('images/dompet.png'),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Dompet Saya",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Container(
                width: 285,
                alignment: Alignment.center,
                child: Divider(
                  thickness: 1,
                  color: Color.fromRGBO(10, 10, 10, 0.5),
                )),
            Container(
              width: 285,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Sembunyikan nama saya (anonim)",
                    style: TextStyle(fontSize: 11, fontWeight: FontWeight.w300),
                  ),
                  ToggleSwitch(
                    minWidth: 20.0,
                    minHeight: 20.0,
                    cornerRadius: 20.0,
                    activeBgColors: [
                      [Colors.green[800]!],
                      [Colors.red[800]!]
                    ],
                    activeFgColor: Colors.white,
                    inactiveBgColor: Colors.grey,
                    inactiveFgColor: Colors.white,
                    initialLabelIndex: 1,
                    totalSwitches: 2,
                    labels: ['Yes', 'No'],
                    radiusStyle: true,
                    onToggle: (index) {
                      print('switched to: $index');
                    },
                  ),
                ],
              ),
            ),
            Container(
              width: 285,
              alignment: Alignment.centerLeft,
              child: Text(
                "Berdoa di kampanye ini (opsional)",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.w300),
              ),
            ),
            Container(
              width: 285,
              child: TextFormField(
                minLines: 2,
                maxLines: 5,
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  hintText:
                      'Tulis do\'a untuk penggalang dana atau dirimu sendiri',
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 8,
                      fontWeight: FontWeight.w400),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyPin()));
              },
              child: Container(
                width: 310,
                height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(40, 103, 83, 1),
                ),
                child: Text(
                  "Lanjutkan Pembayaran",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
