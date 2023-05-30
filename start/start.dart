import 'package:flutter/material.dart';
import 'package:flutter_application_1/atributs/mybutton.dart';
import 'package:flutter_application_1/start/role.dart';

class MyStart extends StatelessWidget {
  const MyStart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/envi.png'),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 37),
                  child: Image.asset('images/envi2.png'),
                ),
                Text(
                  "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit, sed do \neiusmod tempor incididunt ut \nlabore et dolore magna aliqua.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12,
                    color: Color.fromRGBO(0, 74, 34, 1)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: MyButton(tx: "Get Started", fs: 16, txc: Colors.white, elc: Color.fromRGBO(40, 103, 83, 1), minSz: Size(155,40), cl: MyRole()),
                )
              ],
            )),
      ),
    );
  }
}
