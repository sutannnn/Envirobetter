import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyPin extends StatelessWidget {
  const MyPin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(225, 238, 224, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: true,
        title: Text("Masukkan Pin Dompet EnviroBetter", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 28,),
            Text("Masukkan 4 digit pin anda", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: Colors.black),),
            SizedBox(height: 18,),
            Container(
              width: 234,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 45 , height: 50),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      obscureText: true,
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counter: Offstage(),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color.fromRGBO(196, 229, 194, 1))
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color.fromRGBO(196, 229, 194, 1))
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color.fromRGBO(196, 229, 194, 1))
                        ),
                        filled: true,
                        fillColor: Color.fromRGBO(196, 229, 194, 1)
                      ),
                    ),
                  ),
                  SizedBox(width: 18,),
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 45, height: 50),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      obscureText: true,
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counter: Offstage(),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color.fromRGBO(196, 229, 194, 1))
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color.fromRGBO(196, 229, 194, 1))
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color.fromRGBO(196, 229, 194, 1))
                        ),
                        filled: true,
                        fillColor: Color.fromRGBO(196, 229, 194, 1)
                      ),
                    ),
                  ),
                  SizedBox(width: 18,),
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 45, height: 50),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      obscureText: true,
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counter: Offstage(),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color.fromRGBO(196, 229, 194, 1))
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color.fromRGBO(196, 229, 194, 1))
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color.fromRGBO(196, 229, 194, 1))
                        ),
                        filled: true,
                        fillColor: Color.fromRGBO(196, 229, 194, 1)
                      ),
                    ),
                  ),
                  SizedBox(width: 18,),
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(width: 45, height: 50),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      obscureText: true,
                      maxLength: 1,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        counter: Offstage(),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color.fromRGBO(196, 229, 194, 1))
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color.fromRGBO(196, 229, 194, 1))
                        ),
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color.fromRGBO(196, 229, 194, 1))
                        ),
                        filled: true,
                        fillColor: Color.fromRGBO(196, 229, 194, 1)
                      ),
                    ),
                  )
                ],
              ),
            ),
            TextButton(onPressed: (){}, child: Text("Lupa pin?", style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color.fromRGBO(40, 103, 83, 1)),),)
          ],
        )
      ),
    );
  }
}