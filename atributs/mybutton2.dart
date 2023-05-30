import 'package:flutter/material.dart';

class MyButton2 extends StatelessWidget {
  const MyButton2(
      {super.key,
      required this.tx,
      required this.ic,});

  final String tx;
  final IconData ic;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(height: 40, width: 250),
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color.fromRGBO(196, 229, 194, 1),
          labelText: tx,
          labelStyle: TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.w200),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(196, 229, 194, 1)),
              borderRadius: BorderRadius.all(Radius.circular(22))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(196, 229, 194, 1)),
              borderRadius: BorderRadius.all(Radius.circular(22))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(196, 229, 194, 1)),
              borderRadius: BorderRadius.all(Radius.circular(22))),
          suffixIcon: Icon(
            ic,
            color: Color.fromRGBO(40, 103, 83, 1),
          ),
        ),
      ),
    );
  }
}
