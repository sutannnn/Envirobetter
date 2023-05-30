// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    Key? key,
    required this.tx,
    required this.fs,
    required this.txc,
    required this.elc,
    required this.minSz,
    required this.cl,
  }) : super(key: key);

  final String tx;
  final double fs;
  final Color txc;
  final Color elc;
  final Size minSz;
  final Widget cl;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        tx,
        style: TextStyle(
          color: txc,
          fontSize: fs,
        ),
      ),
      style: ElevatedButton.styleFrom(
        elevation: 0,
        side: BorderSide(
          color: Color.fromRGBO(0, 74, 34, 1)
        ),
          primary: elc,
          onPrimary: Color.fromRGBO(109, 132, 158, 1),
          minimumSize: minSz,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          )),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => cl));
      },
    );
  }
}
