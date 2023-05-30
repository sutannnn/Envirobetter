import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/dashboard/bottomsheet2.dart';

class MyBottomSheet extends StatefulWidget {
  const MyBottomSheet({super.key});

  @override
  State<MyBottomSheet> createState() => _MyBottomSheetState();
}

class _MyBottomSheetState extends State<MyBottomSheet> {
  late int donasi;
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
            color: Theme.of(context).canvasColor),
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
              "Pilih Nominal Donasi",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
            InkWell(
              onTap: () {
                donasi = 10000;
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return MyBottomSheet2(donasi: donasi);
                  });
              },
              child: Container(
                width: 315,
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rp10.000",
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                donasi = 20000;
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return MyBottomSheet2(donasi: donasi);
                  });
              },
              child: Container(
                width: 315,
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rp20.000",
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                donasi = 30000;
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return MyBottomSheet2(donasi: donasi);
                  });
              },
              child: Container(
                width: 315,
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rp30.000",
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                donasi = 50000;
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return MyBottomSheet2(donasi: donasi);
                  });
              },
              child: Container(
                width: 315,
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rp.50.000",
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                      ),
                      Icon(Icons.keyboard_arrow_right)
                    ],
                  ),
                ),
              ),
            ),
            Container(
                width: 315,
                height: 127,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 17, right: 8, top: 10, bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Nominal Donasi Lainnya",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w400),
                          ),
                          Icon(Icons.keyboard_arrow_right)
                        ],
                      ),
                    ),
                    ConstrainedBox(
                      constraints:
                          BoxConstraints.tightFor(height: 50, width: 285),
                      child: TextField(
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        onChanged: (value) {
                          donasi = int.parse(value);
                        },
                        keyboardType: TextInputType.number,
                        obscureText: false,
                        decoration: InputDecoration(
                          prefixText: "Rp",
                          prefixStyle: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                          hintText: "0",
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 20),
                          filled: true,
                          fillColor: Color.fromRGBO(0, 0, 0, 0.2),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      child: Text(
                        "Min. donasi Rp1.000",
                        style: TextStyle(
                            fontSize: 10, fontWeight: FontWeight.w400),
                      ),
                      width: 278,
                      alignment: Alignment.centerLeft,
                    )
                  ],
                )),
            InkWell(
              onTap: () => showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return MyBottomSheet2(donasi: donasi);
                  }),
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
