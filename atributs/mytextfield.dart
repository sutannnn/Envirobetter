import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({super.key, required this.tx, required this.ic});

  final String tx;
  final IconData ic;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(height: 40, width: 210),
      child: TextField(
        obscureText: false,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.transparent,
          labelText: tx,
          labelStyle: TextStyle(color: Colors.black, fontSize: 12),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(0, 74, 34, 1)),
              borderRadius: BorderRadius.all(Radius.circular(8))),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(0, 74, 34, 1)),
              borderRadius: BorderRadius.all(Radius.circular(8))),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(0, 74, 34, 1)),
              borderRadius: BorderRadius.all(Radius.circular(8))),
          prefixIcon: Icon(
            ic,
            color: Color.fromRGBO(0, 74, 34, 1),
          ),
        ),
      ),
    );
  }
}
