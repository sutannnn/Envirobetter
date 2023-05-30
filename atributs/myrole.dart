import 'package:flutter/material.dart';

class CustomRole extends StatelessWidget {
  const CustomRole(
      {super.key,
      required this.img,
      required this.tx,
      required this.cls,
      required this.clr,
      required this.h,
      required this.w,
      required this.txc,
      required this.r});

  final String img;
  final String tx;
  final Widget cls;
  final Color clr;
  final double h;
  final double w;
  final Color txc;
  final double r;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: clr,
      elevation: 5,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(r))),
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => cls));
        },
        child: Column(
          children: [
            SizedBox(
              width: w,
              height: h,
              child: Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white
                      ),
                      child: Image.asset(img)
                    ),
                    Text(
                      tx,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: txc),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
